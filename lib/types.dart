import 'package:collection/collection.dart';

enum ValueType {
  // valtype :=
  //   numtype |
  //   vectype |
  //   reftype

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

  static ValueType fromString(String str) {
    var ret = values.firstWhereOrNull((e) => e.name == str);
    if (ret == null) throw 'no ValueType found for \'$str\'';

    return ret;
  }
}
