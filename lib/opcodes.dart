//static const i32ConstOpcode = 0x41;
// static const i64ConstOpcode = 0x42;
// static const f32ConstOpcode = 0x43;
// static const f64ConstOpcode = 0x44;

enum Opcode {
  unreachable,
  foo('sdsdf'),
  ;

  int get code => index;
  final String shorthand;

  // late final List<ValueType> immediates;
  // late final List<ValueType> params;
  // late final List<ValueType> returns;

  const Opcode([this.shorthand = '']);

  @override
  String toString() {
    return '$name [0x${code.toRadixString(16).padLeft(2, '0')}]';
  }
}
