// ignore_for_file: camel_case_types

import 'package:collection/collection.dart';

import 'src/utils.dart';

typedef i32 = int;
typedef i64 = int;
typedef u32 = int;
typedef u64 = int;
typedef f32 = double;
typedef f64 = double;

enum ValueType {
  // valtype := numtype | vectype | reftype

  // numtype := i32, i64, f32, f64
  i32(0x7F),
  i64(0x7E),
  f32(0x7D),
  f64(0x7C),

  v128(0x7B),

  // reftype := functype | externref
  funcref(0x70),
  externref(0x6F),
  ;

  final int code;

  const ValueType(this.code);

  Object? get defaultValue {
    switch (this) {
      case i32:
        return 0;
      case i64:
        return 0;
      case f32:
        return 0.0;
      case f64:
        return 0.0;
      case v128:
        throw 'unsupported: $v128';
      case funcref:
        return null;
      case externref:
        return null;
    }
  }

  bool get refType => this == funcref || this == externref;

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

class FunctionType {
  final List<ValueType> parameterTypes;
  final List<ValueType> resultTypes;

  FunctionType(this.parameterTypes, this.resultTypes);

  bool get returnsVoid => resultTypes.isEmpty;

  bool get returnsTuple => resultTypes.length >= 2;

  String get resultTypeDisplayText {
    if (resultTypes.isEmpty) {
      return 'void';
    } else if (resultTypes.length > 1) {
      return '(${resultTypes.map((t) => t.name).join(', ')})';
    } else {
      return resultTypes.first.name;
    }
  }

  String get displayText {
    var params = parameterTypes.map((e) => e.name).join(', ');
    return '$params => $resultTypeDisplayText';
  }

  @override
  String toString() => displayText;
}
