

// void defineSpecTests(String spec) {
//   final jsonFile = File('test/spec/$spec/$spec.json');
//   final json = jsonDecode(jsonFile.readAsStringSync()) as Map;
//   final commands = (json['commands'] as List).cast<Map>();

//   final groups = <List<Map>>[];
//   final singletons = <Map>[];

//   for (final command in commands) {
//     final type = command['type'] as String;

//     switch (type) {
//       case 'module':
//         final newGroup = [command];
//         groups.add(newGroup);
//         break;
//       case 'assert_invalid':
//       case 'assert_return':
//       case 'assert_trap':
//         final filename = command['filename'] as String?;
//         if (filename != null) {
//           singletons.add(command);
//         } else {
//           groups.last.add(command);
//         }
//         break;
//       case 'assert_malformed':
//         // skip processing malformed wat files
//         break;
//       default:
//         throw 'unhandled type: $type';
//     }
//   }

//   for (var moduleGroup in groups) {
//     final moduleCommand = moduleGroup.removeAt(0);
//     final filename = moduleCommand['filename'];
//     final moduleFile = File('test/spec/$spec/$filename');

//     Module? module;
//     ExecutionContect? context;

//     setUpAll(() {
//       module = Module.parse(moduleFile);
//       context = ExecutionContect(module!);
//     });

//     group(filename, () {
//       for (var command in moduleGroup) {
//         final type = command['type'] as String;
//         final line = command['line'] as int;

//         final action = command['action'] as Map;
//         final actionType = action['type'];
//         if (actionType != 'invoke') {
//           throw 'unhandled action type: $actionType';
//         }
//         final field = action['field'];

//         final testName = '$field $type $line';
//         test(testName, () {
//           var function =
//               module!.exportedFunction(field)!.func as DefinedFunction;

//           if (type == 'assert_return') {
//             final args = parseTypes((action['args'] as List).cast<Map>());
//             final result = context!.execute(function, args);

//             final expected =
//                 parseTypes((command['expected'] as List).cast<Map>());
//             // TODO: handle tuple results
//             expect(result, expected.single);
//           } else if (type == 'assert_trap') {
//             final args = parseTypes((action['args'] as List).cast<Map>());
//             final text = command['text'] as String?;
//             expect(
//               () => context!.execute(function, args),
//               throwsA(isA<Trap>().having((e) => e.message, 'message', text)),
//             );
//           } else {
//             throw 'unhandled type: $type';
//           }
//         });
//       }
//     });
//   }

//   // todo: implement this

//   // for (var command in singletons) {
//   //   final type = command['type'] as String;
//   //   final line = command['line'] as int;
//   //   final filename = command['filename'] as String;

//   //   final testName = '$filename $type $line';
//   //   test(testName, () {
//   //     // todo: implement
//   //   });
//   // }
// }

// List<Object?> parseTypes(List<Map> types) {
//   // Remove items where there is no value; this can happen when the expected
//   // response is to throw.
//   final items = types.where((json) => json['value'] != null);

//   return items.map((json) {
//     // {"type": "i32", "value": "1"}
//     return _decodeType(json['type'], json['value']);
//   }).toList();
// }

// dynamic _decodeType(String type, String value) {
//   if (value == 'null') return value;

//   switch (type) {
//     case 'i32':
//       return $i32(value);
//     case 'i64':
//       return $i64(value);
//     case 'f32':
//       if (value == 'nan:arithmetic' || value == 'nan:canonical') {
//         double.nan;
//       }
//       return $f32(value);
//     case 'f64':
//       if (value == 'nan:arithmetic' || value == 'nan:canonical') {
//         double.nan;
//       }
//       return $f64(value);

//     default:
//       throw 'unhandled type: $type';
//   }
// }

// int $i32(String value) {
//   var n = int.parse(value);
//   return n.toSigned(32).toInt();
// }

// int $i64(String value) {
//   var n = BigInt.parse(value);
//   return n.toSigned(64).toInt();
// }

// double $f32(String value) {
//   var val = int.parse(value);
//   _reinterpretData.setInt32(0, val, Endian.little);
//   return _reinterpretData.getFloat32(0, Endian.little);
// }

// double $f64(String value) {
//   var val = int.parse(value);
//   _reinterpretData.setInt64(0, val, Endian.little);
//   return _reinterpretData.getFloat64(0, Endian.little);
// }

// final ByteData _reinterpretData = ByteData(8);
