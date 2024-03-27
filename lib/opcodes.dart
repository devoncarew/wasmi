import 'package:collection/collection.dart';

import 'src/utils.dart';

void main() {
  const skip = {'overflow', 'vector'};

  for (final opcode in Opcode.values) {
    // static const unreachable = 0x00;
    if (opcode.name.startsWith('reserved_')) continue;
    if (skip.contains(opcode.name)) continue;

    // print('static const int ${opcode.name} = ${hex(count)};');
    // count++;

    // print('${opcode.name},');

    print('  void ${opcode.name}(Bytecode code) {');
    for (var i = opcode.params.length - 1; i >= 0; i--) {
      final param = opcode.params[i];
      print('    ${param.name} arg$i = stack[--sp] as ${param.dartType};');
    }
    final escape = opcode.name.contains(r'$') ? 'r' : '';
    print("    throw $escape'unimplemented: ${opcode.name}';");
    print('  }');
    print('');
  }

  for (final opcode in OverflowOpcode.values) {
    // static const unreachable = 0x00;
    if (opcode.name.startsWith('reserved_')) continue;

    // print('${opcode.name},');

    print('  void ${opcode.name}(Bytecode code) {');
    for (var i = opcode.params.length - 1; i >= 0; i--) {
      final param = opcode.params[i];
      print('    ${param.name} arg$i = stack[--sp] as ${param.dartType};');
    }
    final escape = opcode.name.contains(r'$') ? 'r' : '';
    print("    throw $escape'unimplemented: ${opcode.name}';");
    print('  }');
    print('');

    // print('static const int ${opcode.name} = ${hex(count)};');
    // count++;
  }
}

enum Opcode {
  // 0x00
  unreachable,
  nop,
  block('(i32)'),
  loop('(i32)'),
  $if('(i32) i32'),
  $else,
  reserved_06,
  reserved_07,
  reserved_08,
  reserved_09,
  reserved_0A,
  end,
  br('(u32)'),
  brIf('(u32)'),
  brTable('(u32) i32'),
  $return,

  // 0x10
  call('(u32)'),
  callIndirect('(u32 u32)'),
  reserved_12,
  reserved_13,
  reserved_14,
  reserved_15,
  reserved_16,
  reserved_17,
  reserved_18,
  reserved_19,
  drop('any'),
  select('any any i32 => any'),
  selectT('(u32 u32) any any i32 => any'),
  reserved_1D,
  reserved_1E,
  reserved_1F,

  // 0x20
  localGet('(u32) => any'),
  localSet('(u32) any'),
  localTee('(u32) any => any'),
  globalGet('(u32) => any'),
  globalSet('(u32) any'),
  tableGet('(u32) i32 => any'),
  tableSet('(u32) i32 => any'),
  reserved_27,
  i32_load('(u32 u32) i32 => i32'),
  i64_load('(u32 u32) i32 => i64'),
  f32_load('(u32 u32) i32 => f32'),
  f64_load('(u32 u32) i32 => f64'),
  i32_load8_s('(u32 u32) i32 => i32'),
  i32_load8_u('(u32 u32) i32 => i32'),
  i32_load16_s('(u32 u32) i32 => i32'),
  i32_load16_u('(u32 u32) i32 => i32'),

  // 0x30
  i64_load8_s('(u32 u32) i32 => i64'),
  i64_load8_u('(u32 u32) i32 => i64'),
  i64_load16_s('(u32 u32) i32 => i64'),
  i64_load16_u('(u32 u32) i32 => i64'),
  i64_load32_s('(u32 u32) i32 => i64'),
  i64_load32_u('(u32 u32) i32 => i64'),
  i32_store('(u32 u32) i32 i32'),
  i64_store('(u32 u32) i32 i64'),
  f32_store('(u32 u32) i32 f32'),
  f64_store('(u32 u32) i32 f64'),
  i32_store8('(u32 u32) i32 i32'),
  i32_store16('(u32 u32) i32 i32'),
  i64_store8('(u32 u32) i32 i64'),
  i64_store16('(u32 u32) i32 i64'),
  i64_store32('(u32 u32) i32 i64'),
  memory_size('(u32) => i32'),

  // 0x40
  memory_grow('(u32) i32 => i32'),
  i32_const('(i32) => i32'),
  i64_const('(i64) => i64'),
  f32_const('(f32) => f32'),
  f64_const('(f64) => f64'),
  i32_eqz('i32 => i32'),
  i32_eq('i32 i32 => i32'),
  i32_ne('i32 i32 => i32'),
  i32_lt_s('i32 i32 => i32'),
  i32_lt_u('i32 i32 => i32'),
  i32_gt_s('i32 i32 => i32'),
  i32_gt_u('i32 i32 => i32'),
  i32_le_s('i32 i32 => i32'),
  i32_le_u('i32 i32 => i32'),
  i32_ge_s('i32 i32 => i32'),
  i32_ge_u('i32 i32 => i32'),

  // 0x50
  i64_eqz('i64 => i32'),
  i64_eq('i64 i64 => i32'),
  i64_ne('i64 i64 => i32'),
  i64_lt_s('i64 i64 => i32'),
  i64_lt_u('i64 i64 => i32'),
  i64_gt_s('i64 i64 => i32'),
  i64_gt_u('i64 i64 => i32'),
  i64_le_s('i64 i64 => i32'),
  i64_le_u('i64 i64 => i32'),
  i64_ge_s('i64 i64 => i32'),
  i64_ge_u('i64 i64 => i32'),
  f32_eq('f32 f32 => i32'),
  f32_ne('f32 f32 => i32'),
  f32_lt('f32 f32 => i32'),
  f32_gt('f32 f32 => i32'),
  f32_le('f32 f32 => i32'),

  // 0x60
  f32_ge('f32 f32 => i32'),
  f64_eq('f64 f64 => i32'),
  f64_ne('f64 f64 => i32'),
  f64_lt('f64 f64 => i32'),
  f64_gt('f64 f64 => i32'),
  f64_le('f64 f64 => i32'),
  f64_ge('f64 f64 => i32'),
  i32_clz('i32 => i32'),
  i32_ctz('i32 => i32'),
  i32_popcnt('i32 => i32'),
  i32_add('i32 i32 => i32'),
  i32_sub('i32 i32 => i32'),
  i32_mul('i32 i32 => i32'),
  i32_div_s('i32 i32 => i32'),
  i32_div_u('i32 i32 => i32'),
  i32_rem_s('i32 i32 => i32'),

  // 0x70
  i32_rem_u('i32 i32 => i32'),
  i32_and('i32 i32 => i32'),
  i32_or('i32 i32 => i32'),
  i32_xor('i32 i32 => i32'),
  i32_shl('i32 i32 => i32'),
  i32_shr_s('i32 i32 => i32'),
  i32_shr_u('i32 i32 => i32'),
  i32_rotl('i32 i32 => i32'),
  i32_rotr('i32 i32 => i32'),
  i64_clz('i64 => i64'),
  i64_ctz('i64 => i64'),
  i64_popcnt('i64 => i64'),
  i64_add('i64 i64 => i64'),
  i64_sub('i64 i64 => i64'),
  i64_mul('i64 i64 => i64'),
  i64_div_s('i64 i64 => i64'),

  // 0x80
  i64_div_u('i64 i64 => i64'),
  i64_rem_s('i64 i64 => i64'),
  i64_rem_u('i64 i64 => i64'),
  i64_and('i64 i64 => i64'),
  i64_or('i64 i64 => i64'),
  i64_xor('i64 i64 => i64'),
  i64_shl('i64 i64 => i64'),
  i64_shr_s('i64 i64 => i64'),
  i64_shr_u('i64 i64 => i64'),
  i64_rotl('i64 i64 => i64'),
  i64_rotr('i64 i64 => i64'),
  f32_abs('f32 => f32'),
  f32_neg('f32 => f32'),
  f32_ceil('f32 => f32'),
  f32_floor('f32 => f32'),
  f32_trunc('f32 => f32'),

  // 0x90
  f32_nearest('f32 => f32'),
  f32_sqrt('f32 => f32'),
  f32_add('f32 f32 => f32'),
  f32_sub('f32 f32 => f32'),
  f32_mul('f32 f32 => f32'),
  f32_div('f32 f32 => f32'),
  f32_min('f32 f32 => f32'),
  f32_max('f32 f32 => f32'),
  f32_copysign('f32 f32 => f32'),
  f64_abs('f64 => f64'),
  f64_neg('f64 => f64'),
  f64_ceil('f64 => f64'),
  f64_foor('f64 => f64'),
  f64_trunc('f64 => f64'),
  f64_nearest('f64 => f64'),
  f64_sqrt('f64 => f64'),

  // 0xA0
  f64_add('f64 f64 => f64'),
  f64_sub('f64 f64 => f64'),
  f64_mul('f64 f64 => f64'),
  f64_div('f64 f64 => f64'),
  f64_min('f64 f64 => f64'),
  f64_max('f64 f64 => f64'),
  f64_copysign('f64 f64 => f64'),
  i32_wrap_i64('i64 => i32'),
  i32_trunc_f32_s('f32 => i32'),
  i32_trunc_f32_u('f32 => i32'),
  i32_trunc_f64_s('f64 => i32'),
  i32_trunc_f64_u('f64 => i32'),
  i64_extend_i32_s('i32 => i64'),
  i64_extend_i32_u('i32 => i64'),
  i64_trunc_f32_s('f32 => i64'),
  i64_trunc_f32_u('f32 => i64'),

  // 0xB0
  i64_trunc_f64_s('f64 => i64'),
  i64_trunc_f64_u('f64 => i64'),
  f32_convert_i32_s('i32 => f32'),
  f32_convert_i32_u('i32 => f32'),
  f32_convert_i64_s('i64 => f32'),
  f32_convert_i64_u('i64 => f32'),
  f32_demote_f64('f64 => f32'),
  f64_convert_i32_s('i32 => f64'),
  f64_convert_i32_u('i32 => f64'),
  f64_convert_i64_s('i64 => f64'),
  f64_convert_i64_u('i64 => f64'),
  f64_promote_f32('f32 => f64'),
  i32_reinterpret_f32('f32 => i32'),
  i64_reinterpret_f64('f64 => i64'),
  f32_reinterpret_i32('i32 => f32'),
  f64_reinterpret_i64('i64 => f64'),

  // 0xC0
  i32_extend8_s('i32 => i32'),
  i32_extend16_s('i32 => i32'),
  i64_extend8_s('i64 => i64'),
  i64_extend16_s('i64 => i64'),
  i64_extend32_s('i64 => i64'),
  reserved_C5,
  reserved_C6,
  reserved_C7,
  reserved_C8,
  reserved_C9,
  reserved_CA,
  reserved_CB,
  reserved_CC,
  reserved_CD,
  reserved_CE,
  reserved_CF,

  // 0xD0
  refNull('(u32) => reftype'),
  ref_is_null('reftype => i32'),
  refFunc('(u32) => funcref'),
  reserved_D3,
  reserved_D4,
  reserved_D5,
  reserved_D6,
  reserved_D7,
  reserved_D8,
  reserved_D9,
  reserved_DA,
  reserved_DB,
  reserved_DC,
  reserved_DD,
  reserved_DE,
  reserved_DF,

  // 0xE0
  reserved_E0,
  reserved_E1,
  reserved_E2,
  reserved_E3,
  reserved_E4,
  reserved_E5,
  reserved_E6,
  reserved_E7,
  reserved_E8,
  reserved_E9,
  reserved_EA,
  reserved_EB,
  reserved_EC,
  reserved_ED,
  reserved_EE,
  reserved_EF,

  // 0xF0
  reserved_F0,
  reserved_F1,
  reserved_F2,
  reserved_F3,
  reserved_F4,
  reserved_F5,
  reserved_F6,
  reserved_F7,
  reserved_F8,
  reserved_F9,
  reserved_FA,
  reserved_FB,
  overflow,
  vector;

  final String shorthand;

  const Opcode([this.shorthand = '']);

  List<ImmediateType> get immediates => _metaFor(shorthand).immediates;

  List<ImmediateType> get params => _metaFor(shorthand).params;

  List<ImmediateType> get returns => _metaFor(shorthand).returns;

  @override
  String toString() => '$name [${hex(index)}]';

  static final _hexMap = _createMap();

  static Opcode? from(int hex) => _hexMap[hex];

  static Map<int, Opcode> _createMap() {
    return {
      for (final opcode in values) opcode.index: opcode,
    };
  }
}

enum OverflowOpcode {
  // 0xFC 0x00
  i32_trunc_sat_f32_s('f32 => i32'),
  i32_trunc_sat_f32_u('f32 => i32'),
  i32_trunc_sat_f64_s('f64 => i32'),
  i32_trunc_sat_f64_u('f64 => i32'),
  i64_trunc_sat_f32_s('f32 => i64'),
  i64_trunc_sat_f32_u('f32 => i64'),
  i64_trunc_sat_f64_s('f64 => i64'),
  i64_trunc_sat_f64_u('f64 => i64'),
  memory_init('(u32 u32) i32 i32 i32'),
  data_drop('(u32)'),
  memory_copy('(u32 u32) i32 i32 i32'),
  memory_fill('(u32) i32 i32 i32'),
  table_init('(u32 u32) i32 i32 i32'),
  elem_drop('(u32)'),
  table_copy('(u32 u32) i32 i32 i32'),
  table_grow('(u32) reftype i32 => i32'),

  // 0xFC 0x10
  table_size('(u32) => i32'),
  table_fill('(u32) i32 reftype i32'),
  ;

  final String shorthand;

  const OverflowOpcode([this.shorthand = '']);

  List<ImmediateType> get immediates => _metaFor(shorthand).immediates;

  List<ImmediateType> get params => _metaFor(shorthand).params;

  List<ImmediateType> get returns => _metaFor(shorthand).returns;

  @override
  String toString() => '$name [${hex(index)}]';

  static final _hexMap = _createMap();

  static OverflowOpcode? from(int hex) => _hexMap[hex];

  static Map<int, OverflowOpcode> _createMap() {
    return {
      for (final opcode in values) opcode.index: opcode,
    };
  }
}

enum ImmediateType {
  i32,
  i64,
  f32,
  f64,
  u32,
  reftype,
  funcref,
  any;

  String get dartType {
    // todo:
    switch (this) {
      case u32:
      case i32:
      case i64:
        return 'int';
      case f32:
      case f64:
        return 'double';
      default:
        return name;
    }
  }

  static ImmediateType fromString(String str) {
    var ret = values.firstWhereOrNull((e) => e.name == str);
    if (ret == null) throw 'no ImmediateType found for \'$str\'';

    return ret;
  }
}

_OpcodeMeta _metaFor(String shorthand) {
  return _cache.putIfAbsent(
      shorthand, () => _OpcodeMeta.fromShorthand(shorthand));
}

final Map<String, _OpcodeMeta> _cache = {};

class _OpcodeMeta {
  late final List<ImmediateType> immediates;
  late final List<ImmediateType> params;
  late final List<ImmediateType> returns;

  _OpcodeMeta({
    required this.immediates,
    required this.params,
    required this.returns,
  });

  factory _OpcodeMeta.fromShorthand(String shorthand) {
    final List<ImmediateType> immediates;

    // '(immediates+) params* => return?'
    if (shorthand.contains(')')) {
      shorthand = shorthand.substring(1);
      var imm = shorthand.substring(0, shorthand.indexOf(')'));
      immediates = imm.split(' ').map(ImmediateType.fromString).toList();
      shorthand = shorthand.substring(shorthand.indexOf(')') + 1).trim();
    } else {
      immediates = const [];
    }

    final List<ImmediateType> returns;

    if (shorthand.contains('=>')) {
      var ret = shorthand.substring(shorthand.indexOf('=>') + 2).trim();
      returns = ret.split(' ').map(ImmediateType.fromString).toList();
      shorthand = shorthand.substring(0, shorthand.indexOf('=>')).trim();
    } else {
      returns = const [];
    }

    final List<ImmediateType> params;

    if (shorthand.isNotEmpty) {
      params = shorthand.split(' ').map(ImmediateType.fromString).toList();
    } else {
      params = const [];
    }

    return _OpcodeMeta(
      immediates: immediates,
      params: params,
      returns: returns,
    );
  }
}
