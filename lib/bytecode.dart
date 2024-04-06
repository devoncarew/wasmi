// ignore_for_file: non_constant_identifier_names

import 'src/utils.dart';

class Bytecode {
  static const int unreachable = 0x00;
  static const int nop = 0x01;
  static const int block = 0x02;
  static const int loop = 0x03;
  static const int $if = 0x04;
  static const int $else = 0x05;
  static const int end = 0x06;
  static const int br = 0x07;
  static const int brIf = 0x08;
  static const int brTable = 0x09;
  static const int $return = 0x0A;
  static const int call = 0x0B;
  static const int callIndirect = 0x0C;
  static const int drop = 0x0D;
  static const int select = 0x0E;
  static const int selectT = 0x0F;
  static const int localGet = 0x10;
  static const int localSet = 0x11;
  static const int localTee = 0x12;
  static const int globalGet = 0x13;
  static const int globalSet = 0x14;
  static const int tableGet = 0x15;
  static const int tableSet = 0x16;
  static const int i32_load = 0x17;
  static const int i64_load = 0x18;
  static const int f32_load = 0x19;
  static const int f64_load = 0x1A;
  static const int i32_load8_s = 0x1B;
  static const int i32_load8_u = 0x1C;
  static const int i32_load16_s = 0x1D;
  static const int i32_load16_u = 0x1E;
  static const int i64_load8_s = 0x1F;
  static const int i64_load8_u = 0x20;
  static const int i64_load16_s = 0x21;
  static const int i64_load16_u = 0x22;
  static const int i64_load32_s = 0x23;
  static const int i64_load32_u = 0x24;
  static const int i32_store = 0x25;
  static const int i64_store = 0x26;
  static const int f32_store = 0x27;
  static const int f64_store = 0x28;
  static const int i32_store8 = 0x29;
  static const int i32_store16 = 0x2A;
  static const int i64_store8 = 0x2B;
  static const int i64_store16 = 0x2C;
  static const int i64_store32 = 0x2D;
  static const int memory_size = 0x2E;
  static const int memory_grow = 0x2F;
  static const int i32_const = 0x30;
  static const int i64_const = 0x31;
  static const int f32_const = 0x32;
  static const int f64_const = 0x33;
  static const int i32_eqz = 0x34;
  static const int i32_eq = 0x35;
  static const int i32_ne = 0x36;
  static const int i32_lt_s = 0x37;
  static const int i32_lt_u = 0x38;
  static const int i32_gt_s = 0x39;
  static const int i32_gt_u = 0x3A;
  static const int i32_le_s = 0x3B;
  static const int i32_le_u = 0x3C;
  static const int i32_ge_s = 0x3D;
  static const int i32_ge_u = 0x3E;
  static const int i64_eqz = 0x3F;
  static const int i64_eq = 0x40;
  static const int i64_ne = 0x41;
  static const int i64_lt_s = 0x42;
  static const int i64_lt_u = 0x43;
  static const int i64_gt_s = 0x44;
  static const int i64_gt_u = 0x45;
  static const int i64_le_s = 0x46;
  static const int i64_le_u = 0x47;
  static const int i64_ge_s = 0x48;
  static const int i64_ge_u = 0x49;
  static const int f32_eq = 0x4A;
  static const int f32_ne = 0x4B;
  static const int f32_lt = 0x4C;
  static const int f32_gt = 0x4D;
  static const int f32_le = 0x4E;
  static const int f32_ge = 0x4F;
  static const int f64_eq = 0x50;
  static const int f64_ne = 0x51;
  static const int f64_lt = 0x52;
  static const int f64_gt = 0x53;
  static const int f64_le = 0x54;
  static const int f64_ge = 0x55;
  static const int i32_clz = 0x56;
  static const int i32_ctz = 0x57;
  static const int i32_popcnt = 0x58;
  static const int i32_add = 0x59;
  static const int i32_sub = 0x5A;
  static const int i32_mul = 0x5B;
  static const int i32_div_s = 0x5C;
  static const int i32_div_u = 0x5D;
  static const int i32_rem_s = 0x5E;
  static const int i32_rem_u = 0x5F;
  static const int i32_and = 0x60;
  static const int i32_or = 0x61;
  static const int i32_xor = 0x62;
  static const int i32_shl = 0x63;
  static const int i32_shr_s = 0x64;
  static const int i32_shr_u = 0x65;
  static const int i32_rotl = 0x66;
  static const int i32_rotr = 0x67;
  static const int i64_clz = 0x68;
  static const int i64_ctz = 0x69;
  static const int i64_popcnt = 0x6A;
  static const int i64_add = 0x6B;
  static const int i64_sub = 0x6C;
  static const int i64_mul = 0x6D;
  static const int i64_div_s = 0x6E;
  static const int i64_div_u = 0x6F;
  static const int i64_rem_s = 0x70;
  static const int i64_rem_u = 0x71;
  static const int i64_and = 0x72;
  static const int i64_or = 0x73;
  static const int i64_xor = 0x74;
  static const int i64_shl = 0x75;
  static const int i64_shr_s = 0x76;
  static const int i64_shr_u = 0x77;
  static const int i64_rotl = 0x78;
  static const int i64_rotr = 0x79;
  static const int f32_abs = 0x7A;
  static const int f32_neg = 0x7B;
  static const int f32_ceil = 0x7C;
  static const int f32_floor = 0x7D;
  static const int f32_trunc = 0x7E;
  static const int f32_nearest = 0x7F;
  static const int f32_sqrt = 0x80;
  static const int f32_add = 0x81;
  static const int f32_sub = 0x82;
  static const int f32_mul = 0x83;
  static const int f32_div = 0x84;
  static const int f32_min = 0x85;
  static const int f32_max = 0x86;
  static const int f32_copysign = 0x87;
  static const int f64_abs = 0x88;
  static const int f64_neg = 0x89;
  static const int f64_ceil = 0x8A;
  static const int f64_foor = 0x8B;
  static const int f64_trunc = 0x8C;
  static const int f64_nearest = 0x8D;
  static const int f64_sqrt = 0x8E;
  static const int f64_add = 0x8F;
  static const int f64_sub = 0x90;
  static const int f64_mul = 0x91;
  static const int f64_div = 0x92;
  static const int f64_min = 0x93;
  static const int f64_max = 0x94;
  static const int f64_copysign = 0x95;
  static const int i32_wrap_i64 = 0x96;
  static const int i32_trunc_f32_s = 0x97;
  static const int i32_trunc_f32_u = 0x98;
  static const int i32_trunc_f64_s = 0x99;
  static const int i32_trunc_f64_u = 0x9A;
  static const int i64_extend_i32_s = 0x9B;
  static const int i64_extend_i32_u = 0x9C;
  static const int i64_trunc_f32_s = 0x9D;
  static const int i64_trunc_f32_u = 0x9E;
  static const int i64_trunc_f64_s = 0x9F;
  static const int i64_trunc_f64_u = 0xA0;
  static const int f32_convert_i32_s = 0xA1;
  static const int f32_convert_i32_u = 0xA2;
  static const int f32_convert_i64_s = 0xA3;
  static const int f32_convert_i64_u = 0xA4;
  static const int f32_demote_f64 = 0xA5;
  static const int f64_convert_i32_s = 0xA6;
  static const int f64_convert_i32_u = 0xA7;
  static const int f64_convert_i64_s = 0xA8;
  static const int f64_convert_i64_u = 0xA9;
  static const int f64_promote_f32 = 0xAA;
  static const int i32_reinterpret_f32 = 0xAB;
  static const int i64_reinterpret_f64 = 0xAC;
  static const int f32_reinterpret_i32 = 0xAD;
  static const int f64_reinterpret_i64 = 0xAE;
  static const int i32_extend8_s = 0xAF;
  static const int i32_extend16_s = 0xB0;
  static const int i64_extend8_s = 0xB1;
  static const int i64_extend16_s = 0xB2;
  static const int i64_extend32_s = 0xB3;
  static const int refNull = 0xB4;
  static const int ref_is_null = 0xB5;
  static const int refFunc = 0xB6;
  static const int i32_trunc_sat_f32_s = 0xB7;
  static const int i32_trunc_sat_f32_u = 0xB8;
  static const int i32_trunc_sat_f64_s = 0xB9;
  static const int i32_trunc_sat_f64_u = 0xBA;
  static const int i64_trunc_sat_f32_s = 0xBB;
  static const int i64_trunc_sat_f32_u = 0xBC;
  static const int i64_trunc_sat_f64_s = 0xBD;
  static const int i64_trunc_sat_f64_u = 0xBE;
  static const int memory_init = 0xBF;
  static const int data_drop = 0xC0;
  static const int memory_copy = 0xC1;
  static const int memory_fill = 0xC2;
  static const int table_init = 0xC3;
  static const int elem_drop = 0xC4;
  static const int table_copy = 0xC5;
  static const int table_grow = 0xC6;
  static const int table_size = 0xC7;
  static const int table_fill = 0xC8;

  final int code;
  final int i0;
  final int i1;
  final double f0;

  // The start pc of the cooresponding else block, if any.
  int? elseStart;

  // Ths pc of the instructions following the end block, if any.
  int? endFollow;

  // The target of a branch instruction.
  int? targetPc;

  Bytecode(
    this.code, {
    this.i0 = 0,
    this.i1 = 0,
    this.f0 = 0.0,
  });

  String get name => _opcodeNames[code]!;

  @override
  String toString() => hex(code);
}

class BytecodeTable extends Bytecode {
  final List<int> indexes;

  BytecodeTable(this.indexes, int defaultIndex)
      : super(Bytecode.brTable, i1: defaultIndex);
}

const Map<int, String> _opcodeNames = {
  0x00: 'unreachable',
  0x01: 'nop',
  0x02: 'block',
  0x03: 'loop',
  0x04: r'$if',
  0x05: r'$else',
  0x06: 'end',
  0x07: 'br',
  0x08: 'brIf',
  0x09: 'brTable',
  0x0A: r'$return',
  0x0B: 'call',
  0x0C: 'callIndirect',
  0x0D: 'drop',
  0x0E: 'select',
  0x0F: 'selectT',
  0x10: 'localGet',
  0x11: 'localSet',
  0x12: 'localTee',
  0x13: 'globalGet',
  0x14: 'globalSet',
  0x15: 'tableGet',
  0x16: 'tableSet',
  0x17: 'i32_load',
  0x18: 'i64_load',
  0x19: 'f32_load',
  0x1A: 'f64_load',
  0x1B: 'i32_load8_s',
  0x1C: 'i32_load8_u',
  0x1D: 'i32_load16_s',
  0x1E: 'i32_load16_u',
  0x1F: 'i64_load8_s',
  0x20: 'i64_load8_u',
  0x21: 'i64_load16_s',
  0x22: 'i64_load16_u',
  0x23: 'i64_load32_s',
  0x24: 'i64_load32_u',
  0x25: 'i32_store',
  0x26: 'i64_store',
  0x27: 'f32_store',
  0x28: 'f64_store',
  0x29: 'i32_store8',
  0x2A: 'i32_store16',
  0x2B: 'i64_store8',
  0x2C: 'i64_store16',
  0x2D: 'i64_store32',
  0x2E: 'memory_size',
  0x2F: 'memory_grow',
  0x30: 'i32_const',
  0x31: 'i64_const',
  0x32: 'f32_const',
  0x33: 'f64_const',
  0x34: 'i32_eqz',
  0x35: 'i32_eq',
  0x36: 'i32_ne',
  0x37: 'i32_lt_s',
  0x38: 'i32_lt_u',
  0x39: 'i32_gt_s',
  0x3A: 'i32_gt_u',
  0x3B: 'i32_le_s',
  0x3C: 'i32_le_u',
  0x3D: 'i32_ge_s',
  0x3E: 'i32_ge_u',
  0x3F: 'i64_eqz',
  0x40: 'i64_eq',
  0x41: 'i64_ne',
  0x42: 'i64_lt_s',
  0x43: 'i64_lt_u',
  0x44: 'i64_gt_s',
  0x45: 'i64_gt_u',
  0x46: 'i64_le_s',
  0x47: 'i64_le_u',
  0x48: 'i64_ge_s',
  0x49: 'i64_ge_u',
  0x4A: 'f32_eq',
  0x4B: 'f32_ne',
  0x4C: 'f32_lt',
  0x4D: 'f32_gt',
  0x4E: 'f32_le',
  0x4F: 'f32_ge',
  0x50: 'f64_eq',
  0x51: 'f64_ne',
  0x52: 'f64_lt',
  0x53: 'f64_gt',
  0x54: 'f64_le',
  0x55: 'f64_ge',
  0x56: 'i32_clz',
  0x57: 'i32_ctz',
  0x58: 'i32_popcnt',
  0x59: 'i32_add',
  0x5A: 'i32_sub',
  0x5B: 'i32_mul',
  0x5C: 'i32_div_s',
  0x5D: 'i32_div_u',
  0x5E: 'i32_rem_s',
  0x5F: 'i32_rem_u',
  0x60: 'i32_and',
  0x61: 'i32_or',
  0x62: 'i32_xor',
  0x63: 'i32_shl',
  0x64: 'i32_shr_s',
  0x65: 'i32_shr_u',
  0x66: 'i32_rotl',
  0x67: 'i32_rotr',
  0x68: 'i64_clz',
  0x69: 'i64_ctz',
  0x6A: 'i64_popcnt',
  0x6B: 'i64_add',
  0x6C: 'i64_sub',
  0x6D: 'i64_mul',
  0x6E: 'i64_div_s',
  0x6F: 'i64_div_u',
  0x70: 'i64_rem_s',
  0x71: 'i64_rem_u',
  0x72: 'i64_and',
  0x73: 'i64_or',
  0x74: 'i64_xor',
  0x75: 'i64_shl',
  0x76: 'i64_shr_s',
  0x77: 'i64_shr_u',
  0x78: 'i64_rotl',
  0x79: 'i64_rotr',
  0x7A: 'f32_abs',
  0x7B: 'f32_neg',
  0x7C: 'f32_ceil',
  0x7D: 'f32_floor',
  0x7E: 'f32_trunc',
  0x7F: 'f32_nearest',
  0x80: 'f32_sqrt',
  0x81: 'f32_add',
  0x82: 'f32_sub',
  0x83: 'f32_mul',
  0x84: 'f32_div',
  0x85: 'f32_min',
  0x86: 'f32_max',
  0x87: 'f32_copysign',
  0x88: 'f64_abs',
  0x89: 'f64_neg',
  0x8A: 'f64_ceil',
  0x8B: 'f64_foor',
  0x8C: 'f64_trunc',
  0x8D: 'f64_nearest',
  0x8E: 'f64_sqrt',
  0x8F: 'f64_add',
  0x90: 'f64_sub',
  0x91: 'f64_mul',
  0x92: 'f64_div',
  0x93: 'f64_min',
  0x94: 'f64_max',
  0x95: 'f64_copysign',
  0x96: 'i32_wrap_i64',
  0x97: 'i32_trunc_f32_s',
  0x98: 'i32_trunc_f32_u',
  0x99: 'i32_trunc_f64_s',
  0x9A: 'i32_trunc_f64_u',
  0x9B: 'i64_extend_i32_s',
  0x9C: 'i64_extend_i32_u',
  0x9D: 'i64_trunc_f32_s',
  0x9E: 'i64_trunc_f32_u',
  0x9F: 'i64_trunc_f64_s',
  0xA0: 'i64_trunc_f64_u',
  0xA1: 'f32_convert_i32_s',
  0xA2: 'f32_convert_i32_u',
  0xA3: 'f32_convert_i64_s',
  0xA4: 'f32_convert_i64_u',
  0xA5: 'f32_demote_f64',
  0xA6: 'f64_convert_i32_s',
  0xA7: 'f64_convert_i32_u',
  0xA8: 'f64_convert_i64_s',
  0xA9: 'f64_convert_i64_u',
  0xAA: 'f64_promote_f32',
  0xAB: 'i32_reinterpret_f32',
  0xAC: 'i64_reinterpret_f64',
  0xAD: 'f32_reinterpret_i32',
  0xAE: 'f64_reinterpret_i64',
  0xAF: 'i32_extend8_s',
  0xB0: 'i32_extend16_s',
  0xB1: 'i64_extend8_s',
  0xB2: 'i64_extend16_s',
  0xB3: 'i64_extend32_s',
  0xB4: 'refNull',
  0xB5: 'ref_is_null',
  0xB6: 'refFunc',
  0xB7: 'i32_trunc_sat_f32_s',
  0xB8: 'i32_trunc_sat_f32_u',
  0xB9: 'i32_trunc_sat_f64_s',
  0xBA: 'i32_trunc_sat_f64_u',
  0xBB: 'i64_trunc_sat_f32_s',
  0xBC: 'i64_trunc_sat_f32_u',
  0xBD: 'i64_trunc_sat_f64_s',
  0xBE: 'i64_trunc_sat_f64_u',
  0xBF: 'memory_init',
  0xC0: 'data_drop',
  0xC1: 'memory_copy',
  0xC2: 'memory_fill',
  0xC3: 'table_init',
  0xC4: 'elem_drop',
  0xC5: 'table_copy',
  0xC6: 'table_grow',
  0xC7: 'table_size',
  0xC8: 'table_fill',
};
