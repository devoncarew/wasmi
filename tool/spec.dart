import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as p;
import 'package:wasmi/compiler.dart';
import 'package:wasmi/src/utils.dart';

// Given an wast file, generate one or more wat module files that represent unit
// tests.
//
// Based on the wast2json tool.

// TODO:? --disable-saturating-float-to-int --disable-sign-extension
// --disable-multi-value --disable-simd

// | address.wast                | -   |

void main(List<String> args) {
  if (args.isEmpty) {
    print('usage: dart tools/spec_2.dart <wast file>');
    return;
  }

  args = args.toList();

  var vmBackend = _parseConfig();

  if (args.contains('--all')) {
    var specDir = Directory(p.join('test', 'spec'));
    args = specDir
        .listSync()
        .whereType<Directory>()
        .map((d) => p.basename(d.path))
        .map((n) => 'spec/test/core/$n.wast')
        .toList()
      ..sort();
  }

  var logger = Logger.detached('wasm2dart');
  var compiler = Compiler(logger: logger);

  for (var arg in args) {
    var wastFile = File(arg);

    var basename = p.basenameWithoutExtension(arg).replaceAll('-', '_');
    var dir =
        Directory(p.join('test', 'spec', p.basenameWithoutExtension(arg)));
    dir.createSync(recursive: true);

    var jsonFile = File(p.join(dir.path, '$basename.json'));
    var wasmFiles = wast2json(wastFile, jsonFile);

    // generate a dart file from the json testing file
    var dartFile = File('${p.withoutExtension(jsonFile.path)}_test.dart');
    var skipFile = File('${p.withoutExtension(jsonFile.path)}_test.skip');
    generateDartForJson(compiler, jsonFile, dartFile, skipFile);

    // compile wasm to dart
    for (var wasmFile in wasmFiles) {
      if (!wasmFile.existsSync()) continue;

      var dartFile = File('${p.withoutExtension(wasmFile.path)}.dart');
      var useVmBackend = vmBackend[p.basename(wastFile.path)] ?? false;
      compileWasmToDart(compiler, wasmFile, dartFile, vmBackend: useVmBackend);
    }
  }
}

List<File> wast2json(File wastFile, File jsonFile) {
  // wast2json -o jsonFile wastFile
  var args = [
    'wast2json',
    '--debug-names',
    '-o',
    jsonFile.path,
    wastFile.path,
  ];
  print(args.join(' '));

  var result = Process.runSync(args.first, args.skip(1).toList());
  var out = (result.stdout as String).trim();
  if (out.isNotEmpty) print(out);
  var err = (result.stderr as String).trim();
  if (err.isNotEmpty) stderr.writeln(err);

  if (result.exitCode != 0) {
    throw '${args.first} failed with exit code ${result.exitCode}';
  }

  print('Wrote ${jsonFile.path}.');

  return jsonFile.parent
      .listSync()
      .whereType<File>()
      .where((file) => file.path.endsWith('.wasm'))
      .toList();
}

void compileWasmToDart(Compiler compiler, File wasmFile, File dartFile,
    {bool vmBackend = false}) {
  var library = compiler.compile(wasmFile,
      vmBackend: vmBackend, useDebugNames: true, generatingTest: true);
  var code = emitFormatLibrary(library);

  print('  emitting ${dartFile.path}');
  dartFile.writeAsStringSync(code);
}

void generateDartForJson(
  Compiler compiler,
  File jsonFile,
  File dartFile,
  File skipFile,
) {
  var base = p.basenameWithoutExtension(jsonFile.path);
  var json = jsonDecode(jsonFile.readAsStringSync()) as Map<String, dynamic>;
  var sourceFilename = json['source_filename'];
  var commands = (json['commands'] as List).cast<Map<String, dynamic>>();

  var library = LibraryBuilder();
  library.comments.add('Generated from $sourceFilename.');
  library.ignoreForFile.addAll([
    'non_constant_identifier_names',
    'unused_import',
    'unused_local_variable',
  ]);
  library.directives.addAll([
    Directive.import('package:wasmd/runtime.dart'),
    Directive.import('../../src/infra.dart'),
  ]);

  // create a main() method
  var mainMethod = MethodBuilder()
    ..name = 'main'
    ..returns = Reference('void');

  var statements = <Code>[
    Code("group('$base', () {"),
  ];

  // create statements
  var moduleCount = 0;
  late ModuleRef lastModule;
  var registeredModules = <String, ModuleRef>{};
  registeredModules['spectest'] = ModuleRef(null, 'SpectestModule', 'spectest');
  var skips = readSkipFile(skipFile);
  var importsManager = ImportsManager();

  var testCount = <String, int>{};
  var constMap = <String, String>{};

  for (var command in commands) {
    var type = command['type'] as String;
    var line = command['line'] as int;

    if (type == 'module') {
      statements.add(Code(''));

      var filename = command['filename'] as String;
      var moduleName = command['name'] as String?;
      var name = moduleName ?? 'm$moduleCount';
      var shortName = p.withoutExtension(filename);
      var prefix = shortName.replaceAll('.', '_');

      if (moduleName != null && moduleName.startsWith(r'$')) {
        moduleName = moduleName.substring(1);
      }
      var className = moduleName != null
          ? '${moduleName}Module'
          : titleCase(patchUpName('${shortName}Module'));

      lastModule = ModuleRef(prefix, className, name);

      moduleCount++;

      var dartImport = '$shortName.dart';
      var moduleFile = File(p.join(dartFile.parent.path, filename));
      var referencedModule = compiler.parse(moduleFile);

      statements.add(Code('    // module $dartImport (line $line)'));
      statements.add(Code('var $name = $prefix.$className('));
      for (var moduleImport in referencedModule.importModules) {
        // "aImports: Wrapper0(m0),"
        var name = moduleImport.name;
        var ref = registeredModules[name]!;

        var wrapCtor = importsManager.createWrapper(
            prefix, moduleImport, ref.prefix, ref.className);

        statements.add(
          Code('${moduleImport.referenceName}: $wrapCtor(${ref.refName}),'),
        );
      }
      if (referencedModule.memoryImported) {
        var m = referencedModule;
        if (m.maxMemory != null) {
          statements
              .add(Code('memory: Memory(${m.minMemory}, ${m.maxMemory}),'));
        } else {
          statements.add(Code('memory: Memory(${m.minMemory}),'));
        }
      }
      statements.add(Code(');\n'));
      library.directives.add(Directive.import(dartImport, as: prefix));
    } else if (type == 'action') {
      var action = command['action'] as Map<String, dynamic>;

      var actionType = action['type']; // 'invoke' or 'get'
      var module = (action['module'] as String?) ?? lastModule;
      var field = action['field'] as String;
      var args = (action['args'] as List).cast<Map<String, dynamic>>();

      field = patchUpName(field);

      var invocation = '';
      if (actionType == 'invoke') {
        invocation = '(';
        invocation += args.map((arg) {
          return encodeType(arg['type'], arg['value']);
        }).join(', ');
        invocation += ')';
      }

      testCount[field] = (testCount[field] ?? -1) + 1;

      var description = '${field}_${testCount[field]}';
      description = description.replaceAll(r'$', '');

      statements.add(Code(_addComma('invoke(\'$description\', '
          '() => $module.$field$invocation);')));
    } else if (type == 'assert_return') {
      var action = command['action'] as Map<String, dynamic>;
      var expected = (command['expected'] as List).cast<Map<String, dynamic>>();

      var actionType = action['type']; // 'invoke' or 'get'
      var module = (action['module'] as String?) ?? lastModule;
      var field = action['field'] as String;
      var args = (action['args'] as List? ?? []).cast<Map<String, dynamic>>();

      field = ensurePublic(patchUpName(field));

      var invocation = '';
      if (actionType == 'invoke') {
        invocation = '(';
        invocation += args.map((arg) {
          return encodeType(arg['type'], arg['value']);
        }).join(', ');
        invocation += ')';
      }

      String? result;

      if (expected.length == 1) {
        var item = expected.first;
        result = encodeType(item['type'], item['value']);
      } else if (expected.length > 1) {
        var items = expected
            .map((item) => encodeType(item['type'], item['value']))
            .join(', ');
        result = 'Tuple${expected.length}($items)';
      }

      testCount[field] = (testCount[field] ?? -1) + 1;

      var description = '${field}_${testCount[field]}';
      var skip = skips[description];
      var skipDesc =
          skip == null ? '' : (skip.isEmpty ? ", 'skip'" : ", 'skip: $skip'");
      description =
          description.contains(r'$') ? "r'$description'" : "'$description'";

      statements.add(Code(_addComma('returns($description, '
          '() => $module.$field$invocation, $result$skipDesc);')));
    } else if (type == 'assert_trap') {
      var action = command['action'] as Map<String, dynamic>;
      var text = command['text'] as String;

      var actionType = action['type']; // 'invoke' or 'get'
      var module = (action['module'] as String?) ?? lastModule;
      var field = action['field'] as String;
      var args = (action['args'] as List).cast<Map<String, dynamic>>();

      field = patchUpName(field);

      var invocation = '';
      if (actionType == 'invoke') {
        invocation = '(';
        invocation += args.map((arg) {
          return encodeType(arg['type'], arg['value']);
        }).join(', ');
        invocation += ')';
      }

      var ref = '_${text.split(' ').map((e) => e.substring(0, 1)).join()}';
      constMap[ref] = text;
      testCount[field] = (testCount[field] ?? -1) + 1;

      var description = '${field}_${testCount[field]}';
      description = description.replaceAll(r'$', '');

      statements.add(Code(_addComma('traps(\'$description\', '
          '() => $module.$field$invocation, $ref);')));
    } else if (type == 'assert_invalid') {
      // a wasm file
      var filename = command['filename'] as String;

      // Remove this wasm module - we don't want to try to compile it.
      var file = File(p.join(jsonFile.parent.path, filename));
      file.deleteSync();
    } else if (type == 'assert_malformed') {
      // a wat file
      var filename = command['filename'] as String;

      // Remove this wat file - we don't try to compile or generate from it.
      var file = File(p.join(jsonFile.parent.path, filename));
      file.deleteSync();
    } else if (type == 'assert_uninstantiable') {
      // a wasm file
      var filename = command['filename'] as String;

      // Remove this file - we don't try to compile or generate from it.
      var file = File(p.join(jsonFile.parent.path, filename));
      file.deleteSync();
    } else if (type == 'assert_unlinkable') {
      // a wasm file
      var filename = command['filename'] as String;

      // Remove this file - we don't try to compile or generate from it.
      var file = File(p.join(jsonFile.parent.path, filename));
      file.deleteSync();
    } else if (type == 'register') {
      var asName = command['as'];

      registeredModules[asName] = lastModule;
    } else if (type == 'assert_exhaustion') {
      print(" skipping '$type'");
    } else {
      throw "test directive not handled: '$type'";
    }
  }

  for (var key in constMap.keys) {
    var value = constMap[key]!;
    library.body.add(declareConst(key, type: Reference('String'))
        .assign(literalString(value))
        .statement);
  }

  if (constMap.isNotEmpty) {
    library.body.add(Code('\n\n'));
  }

  mainMethod.body = Block.of([
    ...statements,
    Code('});'),
  ]);

  library.body.add(mainMethod.build());

  importsManager.generateWrapperClasses(library);

  var code = emitFormatLibrary(library.build());
  dartFile.writeAsStringSync(code);
  print('Wrote ${dartFile.path}.');
}

class ImportInterface {
  final String name;

  ImportInterface(this.name);

  String get implClassName => '${titleCase(name)}Impl';
}

String _addComma(String str) {
  if (str.length > 76 && str.endsWith(');')) {
    return '${str.substring(0, str.length - 2)},);';
  } else {
    return str;
  }
}

String encodeType(String type, String value) {
  if (value == 'null') {
    return value;
  } else if ((type == 'i32' || type == 'i64') && value.length <= 6) {
    if (value == '0') {
      return value;
    } else {
      var val = int.parse(value);
      return '0x${val.toRadixString(16).toUpperCase()}';
    }
  } else {
    if ((type == 'f32' || type == 'f64') &&
        (value == 'nan:arithmetic' || value == 'nan:canonical')) {
      return 'double.nan';
    } else {
      var val = BigInt.parse(value);
      return "\$$type('${val.toRadixString(16).toUpperCase()}')";
    }
  }
}

Map<String, String> readSkipFile(File file) {
  if (!file.existsSync()) return {};

  var skips = <String, String>{};

  for (var line in file.readAsLinesSync()) {
    line = line.trim();
    if (line.isEmpty) continue;

    if (line.contains(':')) {
      // add the skip and the reason
      var split = line.split(':');
      skips[split.first.trim()] = split[1].trim();
    } else {
      // no reason given
      skips[line] = '';
    }
  }

  return skips;
}

class ImportsManager {
  final List<ImportsData> imports = [];

  String createWrapper(
    String targetPrefix,
    ImportModule targetInterface,
    String? wrappedPrefix,
    String wrappedClass,
  ) {
    var result = ImportsData(imports.length, targetPrefix, targetInterface,
        wrappedPrefix, wrappedClass);
    imports.add(result);
    return result.className;
  }

  void generateWrapperClasses(LibraryBuilder library) {
    for (var element in imports) {
      element.generateWrapperClass(library);
    }
  }
}

class ImportsData {
  final int index;
  final String targetPrefix;
  final ImportModule targetInterface;
  final String? wrappedPrefix;
  final String wrappedClass;

  ImportsData(
    this.index,
    this.targetPrefix,
    this.targetInterface,
    this.wrappedPrefix,
    this.wrappedClass,
  );

  String get className => 'Wrapper$index';

  void generateWrapperClass(LibraryBuilder library) {
    var classBuilder = ClassBuilder()..name = className;

    var delegatePrefix = wrappedPrefix == null ? '' : '$wrappedPrefix.';

    // final Foo delegate;
    classBuilder.fields.add(Field(
      (b) => b
        ..name = 'delegate'
        ..modifier = FieldModifier.final$
        ..type = Reference('$delegatePrefix$wrappedClass'),
    ));

    // Foo(this.delegate);
    classBuilder.constructors.add(Constructor(
      (b) => b
        ..requiredParameters.add((Parameter(
          (b) => b
            ..name = 'delegate'
            ..toThis = true,
        ))),
    ));

    // implements Bar
    classBuilder.implements
        .add(Reference('$targetPrefix.${targetInterface.typeName}'));

    // interface getters
    for (var global in targetInterface.globals) {
      classBuilder.methods.add(Method(
        (b) => b
          ..name = global.name
          ..returns = Reference(global.type.typeName)
          ..annotations.add(refer('override'))
          ..type = MethodType.getter
          ..lambda = true
          ..body = Code('delegate.${global.name}'),
      ));
    }

    for (var table in targetInterface.tables) {
      classBuilder.methods.add(Method(
        (b) => b
          ..name = table.name
          ..returns = Reference('Table')
          ..annotations.add(refer('override'))
          ..type = MethodType.getter
          ..lambda = true
          ..body = Code('delegate.table0'),
      ));
    }

    // interface methods
    for (var func in targetInterface.functions) {
      var parameters = <Parameter>[];
      for (int i = 0; i < func.parameterTypes.length; i++) {
        var parameter = func.parameterTypes[i];
        parameters.add(
          Parameter(
            (b) => b
              ..type = Reference(parameter.typeName)
              ..name = 'arg$i',
          ),
        );
      }

      var invocation = refer('delegate').property(func.referenceName).call([
        for (int i = 0; i < func.parameterTypes.length; i++) refer('arg$i')
      ]);

      classBuilder.methods.add(Method(
        (b) => b
          ..name = func.referenceName
          ..returns = Reference(func.functionType.resultTypeDisplayName)
          ..annotations.add(refer('override'))
          ..requiredParameters.addAll(parameters)
          ..lambda = true
          ..body = invocation.code,
      ));
    }

    library.body.add(classBuilder.build());
  }
}

class ModuleRef {
  final String? prefix;
  final String className;
  String refName;

  ModuleRef(this.prefix, this.className, this.refName);

  @override
  String toString() => refName;
}

Map<String, bool> _parseConfig() {
  var file = File('tool/tests.md');

  var results = <String, bool>{};

  for (var line in file.readAsLinesSync()) {
    line = line.trim();
    if (line.isEmpty) continue;

    var items = line.split('|');
    if (items.length != 4) continue;

    var name = items[1].trim();
    var vmBackend = items[2].trim().startsWith('+');

    results[name] = vmBackend;
  }

  return results;
}
