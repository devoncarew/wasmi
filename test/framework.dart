import 'dart:io';
import 'dart:typed_data';

import 'package:meta/meta.dart';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import 'package:wasmi/types.dart';

@isTest
void action(String testName, Function() testClosure) {
  test(testName, testClosure);
}

/// Assert that the result of the given closure matches the expected result.
@isTest
void returns(
  String testName,
  Function() testClosure,
  Object? expected, {
  String? skip,
}) {
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
  String expectedTrapMessage, {
  String? skip,
}) {
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

@isTest
void assertInvalid(String testName, String filePath, String text) {
  test(testName, () {
    try {
      final definition = ModuleDefinition.parse(File('test/spec/$filePath'));
      // ignore: unused_local_variable
      final module = Module(definition);

      fail('Expected: $text');
    } on FormatException catch (e) {
      expect(e.message, text);
    }
  });
}

ImportModule importModuleFrom(Module module) {
  final importModule = ImportModule();

  // functions
  for (var export in module.definition.exportedFunctions) {
    importModule.functions.add(ImportFunction(
      export.name,
      (List<Object?> args) {
        return module.invoke(export.name, args);
      },
      export.func.functionType!.parameterTypes,
      export.func.functionType!.resultTypes,
    ));
  }

  // todo: tables

  // todo: memory

  // todo: globals

  return importModule;
}

extension ModuleDefinitionExtension on Module {
  Object? $(String fnName, List args) => invoke(fnName, args);
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

Function $externref(String value) {
  int val = $i32(value);
  return _testExterns[val];
}

final List<Function> _testExterns = [
  extern0,
  extern1,
  extern2,
  extern3,
  extern4,
  extern5,
  extern6,
];

int extern0() => 0;
int extern1(int p) => p * p;
int extern2(int p0, int p1) => p0 + p1;
int extern3(int p0, int p1, int p2) => p0 + p1;
int extern4(int p0, int p1, int p2, int p3) => p0 + p1;
int extern5(int p0, int p1, int p2, int p3, int p4) => p0 + p1;
int extern6(int p0, int p1, int p2, int p3, int p4, int p5) => p0 + p1;

ImportModule specTestModule() {
  // 'spectest'
  final module = ImportModule();

  module.memory = Memory(1, 2);

  module.globals.add(_GlobalValue('global_i32', ValueType.i32, 0));
  module.globals.add(_GlobalValue('global_i64', ValueType.i64, 0));
  module.globals.add(_GlobalValue('global_f32', ValueType.f32, 0.0));
  module.globals.add(_GlobalValue('global_f64', ValueType.f64, 0.0));

  Object? voidHandler(List<Object?> args) {
    return null;
  }

  // void print() {}
  module.functions.add(ImportFunction('print', voidHandler));
  // void print_f32(f32 arg0) {}
  module.functions.add(ImportFunction('print_f32', voidHandler));
  // void print_f64(f64 arg0) {}
  module.functions.add(ImportFunction('print_f64', voidHandler));
  // void print_f64_f64(f64 arg0, f64 arg1) {}
  module.functions.add(ImportFunction('print_f64_f64', voidHandler));
  // void print_i32(i32 arg0) {}
  module.functions.add(ImportFunction('print_i32', voidHandler));
  // void print_i32_f32(i32 arg0, f32 arg1) {}
  module.functions.add(ImportFunction('print_i32_f32', voidHandler));
  // void print_i64(i64 arg0) {}
  module.functions.add(ImportFunction('print_i64', voidHandler));

  // tables
  final table = ImportTable<WasmFunction>('table', 10, 20);
  // todo: fill in values?
  module.tables.add(table);

  return module;
}

class _GlobalValue implements ImportGlobal {
  @override
  final String name;

  @override
  final ValueType type;

  Object? _value;

  _GlobalValue(this.name, this.type, Object? initialValue)
      : _value = initialValue;

  @override
  bool get mutable => true;

  @override
  Object? get value => _value;

  @override
  set value(Object? v) {
    _value = v;
  }

  @override
  GetHandler get getter => throw UnimplementedError();

  @override
  SetHandler? get setter => throw UnimplementedError();
}