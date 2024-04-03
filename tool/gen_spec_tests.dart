import 'dart:convert';
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;

const Set<String> allowList = {
  'i32.wast',
  'i64.wast',
};

void main(List<String> args) {
  final specTestDir = Directory('spec/test/core');

  for (final file in specTestDir.listSync().whereType<File>()) {
    final name = p.basename(file.path);
    if (!name.endsWith('.wast')) continue;

    if (allowList.contains(name)) {
      generateSpecTests(file);
    }
  }
}

void generateSpecTests(File wastFile) {
  final specName = p.basenameWithoutExtension(wastFile.path);

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
  final emitter = DartEmitter.scoped();
  final destDartFile = File('test/spec/${specName}_test.dart');
  print('generating ${destDartFile.path}');
  destDartFile
      .writeAsStringSync(DartFormatter().format('${library.accept(emitter)}'));
}

Library createLibraryFor(File wastFile, File jsonFile) {
  final spec = p.basenameWithoutExtension(wastFile.path);

  final builder = LibraryBuilder();
  builder.generatedByComment = 'Generated from ${wastFile.path}.';
  builder.directives.addAll([
    Directive.import('dart:io'),
    Directive.import('package:test/test.dart'),
    Directive.import('package:wasmi/format.dart'),
    Directive.import('_framework.dart'),
  ]);

  final mainMethod = MethodBuilder()
    ..name = 'main'
    ..returns = Reference('void');

  final code = StringBuffer();

  final json = jsonDecode(jsonFile.readAsStringSync()) as Map;
  final commands = (json['commands'] as List).cast<Map>();

  final groups = <List<Map>>[];
  final singletons = <Map>[];

  for (final command in commands) {
    final type = command['type'] as String;

    switch (type) {
      case 'module':
        final newGroup = [command];
        groups.add(newGroup);
        break;
      case 'assert_invalid':
      case 'assert_return':
      case 'assert_trap':
        final filename = command['filename'] as String?;
        if (filename != null) {
          singletons.add(command);
        } else {
          groups.last.add(command);
        }
        break;
      case 'assert_malformed':
        // skip processing malformed wat files
        break;
      default:
        throw 'unhandled type: $type';
    }
  }

  for (var moduleGroup in groups) {
    final moduleCommand = moduleGroup.removeAt(0);
    final filename = moduleCommand['filename'];
    final moduleFilePath = 'test/spec/$spec/$filename';

    code.writeln("group('$filename', () {");
    code.writeln('late Module module;');
    code.writeln();
    code.writeln('setUpAll(() {');
    code.writeln("module = Module.parse(File('$moduleFilePath'));");
    code.writeln('});');
    code.writeln();

    final nameCount = <String, int>{};

    for (var command in moduleGroup) {
      final type = command['type'] as String;
      // final line = command['line'] as int;
      final action = command['action'] as Map;
      final actionType = action['type'];
      if (actionType != 'invoke') {
        throw 'unhandled action type: $actionType';
      }
      final field = action['field'];

      nameCount.putIfAbsent(field, () => 0);
      final testName = '$field-${nameCount[field]}';
      nameCount[field] = nameCount[field]! + 1;

      if (type == 'assert_return') {
        // todo: returns

        var args = (action['args'] as List? ?? []).cast<Map<String, dynamic>>();
        final argList = args.map((arg) {
          return encodeType(arg['type'], arg['value']);
        }).join(', ');

        var expected =
            (command['expected'] as List? ?? []).cast<Map<String, dynamic>>();
        if (expected.length > 1) {
          throw 'todo: support more than one return value';
        }
        final expectedValue = expected.map((arg) {
          return encodeType(arg['type'], arg['value']);
        }).join(', ');

        code.writeln("test('$testName', () {");
        code.writeln(
            "  returns(module, '$field', [$argList], $expectedValue);");
        code.writeln('});');
      } else if (type == 'assert_trap') {
        var args = (action['args'] as List? ?? []).cast<Map<String, dynamic>>();
        final text = command['text'] as String?;

        final argList = args.map((arg) {
          return encodeType(arg['type'], arg['value']);
        }).join(', ');

        code.writeln("test('$testName traps', () {");
        code.writeln("  traps(module, '$field', [$argList], '$text');");
        code.writeln('});');
      } else {
        throw 'unhandled type: $type';
      }
    }

    code.writeln('});');
  }

  // todo: implement this

  // for (var command in singletons) {
  //   final type = command['type'] as String;
  //   final line = command['line'] as int;
  //   final filename = command['filename'] as String;

  //   final testName = '$filename $type $line';
  //   test(testName, () {
  //     // todo: implement
  //   });
  // }

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
