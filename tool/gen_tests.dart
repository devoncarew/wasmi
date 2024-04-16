import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;

const Set<String> allowList = {
  'address.wast',
  'align.wast',
  // 'binary-leb128.wast',
  // 'binary.wast',
  'block.wast',
  'br.wast',
  'br_if.wast',
  // 'br_table.wast',
  // 'bulk.wast',
  // 'call.wast',
  // 'call_indirect.wast',
  // 'comments.wast',
  // 'const.wast',
  'conversions.wast',
  // 'custom.wast',
  'data.wast',
  // 'elem.wast',
  'endianness.wast',
  // 'exports.wast',
  'f32.wast',
  'f32_bitwise.wast',
  'f32_cmp.wast',
  'f64.wast',
  'f64_bitwise.wast',
  'f64_cmp.wast',
  // 'fac.wast',
  // 'float_exprs.wast',
  'float_literals.wast',
  'float_memory.wast',
  'float_misc.wast',
  // 'forward.wast',
  // 'func.wast',
  // 'func_ptrs.wast',
  // 'global.wast',
  'i32.wast',
  'i64.wast',
  // 'if.wast',
  // 'imports.wast',
  // 'inline-module.wast',
  'int_exprs.wast',
  'int_literals.wast',
  // 'labels.wast',
  // 'left-to-right.wast',
  // 'linking.wast',
  'load.wast',
  'local_get.wast',
  'local_set.wast',
  'local_tee.wast',
  'loop.wast',
  'memory.wast',
  'memory_copy.wast',
  'memory_fill.wast',
  'memory_grow.wast',
  'memory_init.wast',
  // 'memory_redundancy.wast',
  'memory_size.wast',
  // 'memory_trap.wast',
  // 'names.wast',
  'nop.wast',
  // 'obsolete-keywords.wast',
  'ref_func.wast',
  'ref_is_null.wast',
  'ref_null.wast',
  // 'return.wast',
  'select.wast',
  // 'skip-stack-guard-page.wast',
  // 'stack.wast',
  'start.wast',
  // 'store.wast',
  // 'switch.wast',
  'table_sub.wast',
  'table.wast',
  'table_copy.wast',
  'table_fill.wast',
  'table_get.wast',
  'table_grow.wast',
  'table_init.wast',
  'table_set.wast',
  'table_size.wast',
  // 'token.wast',
  // 'traps.wast',
  // 'type.wast',
  // 'unreachable.wast',
  // 'unreached-invalid.wast',
  // 'unreached-valid.wast',
  // 'unwind.wast',
  // 'utf8-custom-section-id.wast',
  // 'utf8-import-field.wast',
  // 'utf8-import-module.wast',
  // 'utf8-invalid-encoding.wast',
};

void main(List<String> args) {
  final specTestDir = Directory('spec/test/core');

  final files = specTestDir.listSync().whereType<File>().toList();
  files.sort((a, b) => a.path.compareTo(b.path));

  for (final file in files) {
    final name = p.basename(file.path);
    if (!name.endsWith('.wast')) continue;

    if (allowList.contains(name)) {
      generateSpecTests(file);
    } else {
      print('  skipping $name');
    }
  }
}

void generateSpecTests(File wastFile) {
  final specName = p.basenameWithoutExtension(wastFile.path);
  final destDartFile =
      File('test/spec/${specName.replaceAll('-', '_')}_test.dart');
  print('generating ${destDartFile.path}');

  final destJsonFile = File('test/spec/$specName/$specName.json');

  destJsonFile.parent.createSync();

  // wast2json --debug-names -o test/spec/align/align.json spec/test/core/align.wast
  final result = Process.runSync(
      'wast2json', ['--debug-names', '-o', destJsonFile.path, wastFile.path]);
  if (result.exitCode != 0) {
    print('error from wast2json: ${result.stdout}');
    print(result.stderr);
    exit(1);
  }

  final library = createLibraryFor(wastFile, destJsonFile);
  final emitter = DartEmitter(orderDirectives: true);
  destDartFile
      .writeAsStringSync(DartFormatter().format('${library.accept(emitter)}'));
}

Library createLibraryFor(File wastFile, File jsonFile) {
  final spec = p.basenameWithoutExtension(wastFile.path);

  final expectedFails = readExpectedFails();

  final builder = LibraryBuilder();
  builder.generatedByComment = 'Generated from ${wastFile.path}.';
  builder.ignoreForFile.addAll(['unused_import', 'unused_local_variable']);
  builder.directives.addAll([
    Directive.import('dart:io'),
    //
    Directive.import('package:test/test.dart'),
    Directive.import('package:wasmi/execute.dart'),
    Directive.import('package:wasmi/parse.dart'),
    //
    Directive.import('../framework.dart'),
  ]);

  final mainMethod = MethodBuilder()
    ..name = 'main'
    ..returns = Reference('void');

  final code = StringBuffer();

  code.writeln('final Map<String, ImportModule> registered = {};');
  code.writeln();

  final json = jsonDecode(jsonFile.readAsStringSync()) as Map;
  final commands = (json['commands'] as List).cast<Map>();

  final nameCount = <String, int>{};

  bool inGroup = false;
  String? groupName;

  void closeGroup() {
    if (inGroup) {
      code.writeln('});\n');
      inGroup = false;
      groupName = null;
    }
  }

  void startGroup(String name) {
    closeGroup();

    code.writeln("\ngroup('$name', () {");
    inGroup = true;
    groupName = name;
  }

  for (final command in commands) {
    final type = command['type'] as String;
    final filename = command['filename'] as String?;

    switch (type) {
      case 'module':
        startGroup(filename!);

        final moduleFilePath = 'test/spec/$spec/$filename';

        code.writeln('late ModuleDefinition def;');
        code.writeln('late Module m;');
        code.writeln();
        code.writeln('setUpAll(() {');
        code.writeln("def = ModuleDefinition.parse(File('$moduleFilePath'));");
        code.writeln(
            "m = Module(def, imports: {'spectest': specTestModule(), ...registered});");
        code.writeln('});');
        code.writeln();

        nameCount.clear();

        break;

      case 'assert_return':
        final action = command['action'] as Map;
        final actionType = action['type'];
        if (actionType != 'invoke') {
          throw 'unhandled action type: $actionType';
        }

        var args = (action['args'] as List? ?? []).cast<Map<String, dynamic>>();
        final argList = args.map((arg) {
          return encodeType(arg['type'], arg['value']);
        }).join(', ');

        final field = action['field'];

        nameCount.putIfAbsent(field, () => 0);
        final testName = '${field}_${nameCount[field]}'
            .replaceAll('.', '_')
            .replaceAll('-', '_');
        nameCount[field] = nameCount[field]! + 1;

        final expectedFail = expectedFails['$groupName $testName'];
        final failText = expectedFail != null ? ", skip: '$expectedFail'," : '';

        var expected =
            (command['expected'] as List? ?? []).cast<Map<String, dynamic>>();
        final String expectedValue;
        if (expected.length > 1) {
          final value = expected
              .map((arg) => encodeType(arg['type'], arg['value']))
              .join(', ');
          expectedValue = '[$value]';
        } else if (expected.isNotEmpty) {
          expectedValue = expected.map((arg) {
            return encodeType(arg['type'], arg['value']);
          }).join(', ');
        } else {
          expectedValue = 'null /*void*/';
        }

        code.writeln("returns('$testName', () => m.\$('$field', [$argList]), "
            '$expectedValue$failText);');
        break;

      case 'action':
        final action = command['action'] as Map;
        final actionType = action['type'];
        if (actionType != 'invoke') {
          throw 'unhandled action type: $actionType';
        }

        var args = (action['args'] as List? ?? []).cast<Map<String, dynamic>>();
        final argList = args.map((arg) {
          return encodeType(arg['type'], arg['value']);
        }).join(', ');

        final field = action['field'];

        nameCount.putIfAbsent(field, () => 0);
        final testName = '${field}_${nameCount[field]}'
            .replaceAll('.', '_')
            .replaceAll('-', '_');
        nameCount[field] = nameCount[field]! + 1;

        code.writeln("action('$testName', () => m.\$('$field', [$argList]));");
        break;

      case 'assert_trap':
        final action = command['action'] as Map;
        final actionType = action['type'];
        if (actionType != 'invoke') {
          throw 'unhandled action type: $actionType';
        }

        var args = (action['args'] as List? ?? []).cast<Map<String, dynamic>>();
        final text = command['text'] as String?;

        final field = action['field'];

        nameCount.putIfAbsent(field, () => 0);
        final testName = '${field}_${nameCount[field]}'
            .replaceAll('.', '_')
            .replaceAll('-', '_');
        nameCount[field] = nameCount[field]! + 1;

        final expectedFail = expectedFails['$groupName $testName'];
        final failText = expectedFail != null ? ", skip: '$expectedFail'," : '';

        final argList = args.map((arg) {
          return encodeType(arg['type'], arg['value']);
        }).join(', ');

        code.writeln(
            "traps('$testName', () => m.\$('$field', [$argList]), '$text'$failText);");

        break;

      case 'register':

        // {"type": "register", "line": 4, "as": "M"},

        final asName = command['as'] as String;

        code.writeln("action('register-$asName', "
            "() => registered['$asName'] = importModuleFrom(m));");
        break;

      case 'assert_invalid':
        final text = command['text'] as String;
        final moduleType = command['module_type'] as String;
        final moduleFilePath = '$spec/$filename';

        closeGroup();

        if (moduleType != 'binary') {
          throw 'unhandled moduel type: $moduleType';
        }

        final testName = 'invalid ${filename!}';
        // todo:
        code.writeln(
            "  // assertInvalid('$testName', '$moduleFilePath', '$text');");
        break;

      case 'assert_malformed':
        // skip processing malformed wat files
        break;

      case 'assert_uninstantiable':
        // todo: ?
        break;

      case 'assert_exhaustion':
        // TODO: implement
        break;

      default:
        throw 'unhandled type: $type';
    }
  }

  closeGroup();

  mainMethod.body = Code(code.toString());
  builder.body.add(mainMethod.build());

  return builder.build();
}

String encodeType(String type, String value) {
  if (value == 'null') {
    return value;
  } else if ((type == 'i32' || type == 'i64') && value.length <= 6) {
    if (value == '0') {
      return value;
    } else {
      var val = int.parse(value);
      if (val >= 1 && val < 10) {
        return '$val';
      } else {
        return '0x${val.toRadixString(16).toUpperCase()}';
      }
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

Map<String, String> readExpectedFails() {
  final file = File('test/status.properties');

  final results = <String, String>{};

  final lines = file
      .readAsLinesSync()
      .map((l) => l.contains('#') ? l.substring(0, l.indexOf('#')) : l)
      .map((l) => l.trim())
      .where((l) => l.isNotEmpty);

  for (final line in lines) {
    final v = line.split(':');
    results[v[0].trim()] = v[1].trim();
  }

  return results;
}
