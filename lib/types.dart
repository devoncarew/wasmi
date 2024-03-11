// ignore_for_file: camel_case_types

import 'package:collection/collection.dart';

import 'utils.dart';

// typedefs

typedef i32 = int;
typedef i64 = int;
typedef u32 = int;
typedef u64 = int;
typedef f32 = double;
typedef f64 = double;

typedef FuncRef = Function;
typedef ExternRef = Function;
typedef RefType = Function;

// runtime support

const int mask32 = 0xFFFFFFFF;

/// valtype := numtype | vectype | reftype
/// numtype := i32, i64, f32, f64
/// reftype := functype | externref
enum ValueType {
  // todo: rationalize these types
  i32(0x7F),
  i64(0x7E),
  f32(0x7D),
  f64(0x7C),
  funcref(0x70),
  u32(0x7F),
  reftype(0x70),
  any(0x7F),
  externref(0x6F);

  final int code;

  const ValueType(this.code);

  String get typeName {
    if (this == funcref) {
      return 'FuncRef?';
    } else if (this == externref) {
      return 'ExternRef?';
    } else {
      return name;
    }
  }

  static ValueType fromString(String str) {
    var ret = values.firstWhereOrNull((e) => e.name == str);

    if (ret == null) throw 'no ValueType found for \'$str\'';
    return ret;
  }

  static ValueType fromCode(int code) {
    return ValueType.values.firstWhere((e) => e.code == code, orElse: () {
      throw 'unhandled type kind: ${hex(code)}';
    });
  }
}
