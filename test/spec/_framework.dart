import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:wasmi/execution.dart';
import 'package:wasmi/format.dart';

void returns(Module module, String fnName, List args, Object? expected) {
  final context = ExecutionContect(module);
  var function = module.exportedFunction(fnName)!.func as DefinedFunction;
  expect(context.execute(function, args), expected);
}

void traps(Module module, String fnName, List args, String expectedTrap) {
  final context = ExecutionContect(module);
  var function = module.exportedFunction(fnName)!.func as DefinedFunction;
  expect(
    () => context.execute(function, args),
    throwsA(isA<Trap>().having((e) => e.message, 'message', expectedTrap)),
  );
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
  if (value == 'null') return value;

  switch (type) {
    case 'i32':
      return $i32(value);
    case 'i64':
      return $i64(value);
    case 'f32':
      if (value == 'nan:arithmetic' || value == 'nan:canonical') {
        double.nan;
      }
      return $f32(value);
    case 'f64':
      if (value == 'nan:arithmetic' || value == 'nan:canonical') {
        double.nan;
      }
      return $f64(value);

    default:
      throw 'unhandled type: $type';
  }
}

int $i32(String value) {
  var n = BigInt.parse(value, radix: 16);
  return n.toSigned(32).toInt();
}

int $i64(String value) {
  var n = BigInt.parse(value, radix: 16);
  return n.toSigned(64).toInt();
}

final ByteData _reinterpretData = ByteData(8);

double $f32(String value) {
  var val = $i32(value);
  _reinterpretData.setInt32(0, val, Endian.little);
  return _reinterpretData.getFloat32(0, Endian.little);
}

double $f64(String value) {
  var val = $i64(value);
  _reinterpretData.setInt64(0, val, Endian.little);
  return _reinterpretData.getFloat64(0, Endian.little);
}

// Function $externref(String value) {
//   int val = $i32(value);
//   return _testExterns[val];
// }
