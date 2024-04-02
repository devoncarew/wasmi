import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execution.dart';
import 'package:wasmi/format.dart';

void defineSpecTests(String spec) {
  final jsonFile = File('test/spec/$spec/$spec.json');
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
    final moduleFile = File('test/spec/$spec/$filename');

    Module? module;
    ExecutionContect? context;

    setUpAll(() {
      module = Module.parse(moduleFile);
      context = ExecutionContect(module!);
    });

    group(filename, () {
      final nameCounts = <String, int>{};

      for (var command in moduleGroup) {
        final type = command['type'] as String;
        final line = command['line'] as int;
        final action = command['action'] as Map;
        final actionType = action['type'];
        final text = action['type'] as String?;
        final expected = parseTypes((command['expected'] as List).cast<Map>());

        if (actionType != 'invoke') {
          throw 'unhandled action type: $actionType';
        }

        final field = action['field'];
        final args = parseTypes((action['args'] as List).cast<Map>());
        nameCounts[field] = nameCounts.putIfAbsent(field, () => -1) + 1;

        final testName = '$type $field.${nameCounts[field]}';
        test(testName, () {
          // printOnFailure('Test defined at line $line.');

          var function =
              module!.exportedFunction(field)!.func as DefinedFunction;

          if (type == 'assert_return') {
            final result = context!.execute(function, args);
            // todo: handle tuple results
            expect(result, expected.single);
          } else if (type == 'assert_trap') {
            // todo: verify the message
            expect(
              () => context!.execute(function, args),
              throwsA(Trap),
            );
          } else {
            throw 'unhandled type: $type';
          }
        });
      }
    });
  }

  // todo: implement this

  // for (var command in singletons) {
  //   final type = command['type'] as String;
  //   final line = command['line'] as int;
  //   final filename = command['filename'] as String;

  //   final testName = '$filename $type';
  //   test(testName, () {
  //     // printOnFailure('Test defined at line $line.');

  //     // todo: implement
  //   });
  // }
}

List<Object?> parseTypes(List<Map> types) {
  // Remove items where there is no value; this can happen when the expected
  // response is to throw.
  final items = types.where((json) => json['value'] != null);

  return items.map((json) {
    // {"type": "i32", "value": "1"}
    return _decodeType(json['type'], json['value']);
  }).toList();
}

dynamic _decodeType(String type, String value) {
  if (value == 'null') {
    return value;
  } else if (type == 'i32' || type == 'i64') {
    return int.parse(value);
  } else if (type == 'f32' || type == 'f64') {
    if (value == 'nan:arithmetic' || value == 'nan:canonical') {
      double.nan;
    } else {
      // todo: double check this

      return double.parse(value);

      // var val = BigInt.parse(value);
      // return "\$$type('${val.toRadixString(16).toUpperCase()}')";
    }
  } else {
    throw 'unhandled type: $type';
  }
}
