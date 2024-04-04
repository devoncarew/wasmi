import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';

/// Assert that the result of the given closure matches the expected result.
@isTest
void returns(
  String testName,
  Function() testClosure, [
  Object? expected,
  String? skip,
]) {
  const floatEpsilon = 1 / 1000000;

  test(
    testName,
    () {
      final actual = testClosure();
      if (expected != null) {
        if (expected is double && expected.isNaN) {
          expect(actual, isNaN);
        } else if (expected is int && expected.isNaN) {
          expect(actual, isNaN);
        } else if (expected is double && expected.isFinite) {
          // TODO: We only want to do this check for floats, not doubles (we did
          // the intermediate calculations with more precision than an actual
          // float, so can have some variance nine or ten places out).
          final e = expected == 0.0 ? 1e-38 : (expected * floatEpsilon).abs();
          expect(actual, closeTo(expected, e));
        } else {
          expect(actual, expected);
        }
      }
    },
    skip: skip,
  );
}

/// Assert that the runtime fires a trap.
@isTest
void traps(
  String testName,
  Function() testClosure,
  String expectedTrapMessage, [
  String? skip,
]) {
  test(
    testName,
    () {
      try {
        testClosure();
        fail('trap expected but not thrown');
      } on Trap catch (e) {
        expect(e.message, expectedTrapMessage,
            reason: 'difference in trap message');
      }
    },
    skip: skip,
  );
}

// extension ModuleDefinitionExtension on ModuleDefinition {
//   Object? call(String fnName, List args) {
//     final context = ExecutionContect(this);
//     final function = exportedFunction(fnName)!.func as DefinedFunction;
//     return context.execute(function, args);
//   }
// }

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
