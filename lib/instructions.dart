import 'bytecode.dart';
import 'opcodes.dart';
import 'parse.dart';

class Instruction {
  final Opcode opcode;
  final OverflowOpcode? opcode2;
  final List<Object> args;

  Instruction(
    this.opcode, [
    this.args = const [],
    this.opcode2,
  ]);

  Object get immediate_0 => args[0];
  Object get immediate_1 => args[1];

  int get blockType => immediate_0 as int;
  int get labelTarget => immediate_0 as int;

  Bytecode? bytecode;
  Instruction? elseInstr;
  Instruction? endInstr;
  Instruction? targetInstr;

  /// The starting stack height for structured instructions (block, loop, if).
  int? startingStackHeight;

  bool get ifInstr => opcode == Opcode.$if;
  bool get blockInstr => opcode == Opcode.block;
  bool get loopInstr => opcode == Opcode.loop;

  bool get brInstr => opcode == Opcode.br;
  bool get brIfInstr => opcode == Opcode.brIf;

  static Instruction? parse(Reader r, int code, {int? code2}) {
    final opcode = Opcode.from(code);
    if (opcode == null) return null;

    switch (opcode) {
      case Opcode.unreachable:
        return Instruction(opcode);
      case Opcode.nop:
        return Instruction(opcode);
      case Opcode.block:
        return Instruction(opcode, [r.i32()]);
      case Opcode.loop:
        return Instruction(opcode, [r.i32()]);
      case Opcode.$if:
        return Instruction(opcode, [r.i32()]);
      case Opcode.$else:
        return Instruction(opcode);
      case Opcode.reserved_06:
      case Opcode.reserved_07:
      case Opcode.reserved_08:
      case Opcode.reserved_09:
      case Opcode.reserved_0A:
        throw 'unhandled $opcode';
      case Opcode.end:
        return Instruction(opcode);
      case Opcode.br:
        return Instruction(opcode, [r.u32()]);
      case Opcode.brIf:
        return Instruction(opcode, [r.u32()]);
      case Opcode.brTable:
        var count = r.leb128_u();
        var labels = <int>[];
        for (int i = 0; i < count; i++) {
          labels.add(r.leb128_u());
        }
        int defaultLabel = r.leb128_u();
        return InstructionBrTable([labels, defaultLabel]);
      case Opcode.$return:
        return Instruction(opcode);

      // 0x10
      case Opcode.call:
        return Instruction(opcode, [r.u32()]);
      case Opcode.callIndirect:
        return Instruction(opcode, [r.u32(), r.u32()]);
      case Opcode.reserved_12:
      case Opcode.reserved_13:
      case Opcode.reserved_14:
      case Opcode.reserved_15:
      case Opcode.reserved_16:
      case Opcode.reserved_17:
      case Opcode.reserved_18:
      case Opcode.reserved_19:
        throw 'unhandled $opcode';
      case Opcode.drop:
        return Instruction(opcode);
      case Opcode.select:
        return Instruction(opcode);
      case Opcode.selectT:
        var count = r.leb128_u();
        if (count != 1) {
          throw 'select_t currently only supports result types == 1 (count=$count)';
        }
        return Instruction(opcode, [r.readUint8()]);
      case Opcode.reserved_1D:
      case Opcode.reserved_1E:
      case Opcode.reserved_1F:
        throw 'unhandled $opcode';

      // 0x20
      case Opcode.localGet:
      case Opcode.localSet:
      case Opcode.localTee:
      case Opcode.globalGet:
      case Opcode.globalSet:
      case Opcode.tableGet:
      case Opcode.tableSet:
        return Instruction(opcode, [r.u32()]);
      case Opcode.reserved_27:
        throw 'unhandled $opcode';
      case Opcode.i32_load:
      case Opcode.i64_load:
      case Opcode.f32_load:
      case Opcode.f64_load:
      case Opcode.i32_load8_s:
      case Opcode.i32_load8_u:
      case Opcode.i32_load16_s:
      case Opcode.i32_load16_u:
        return Instruction(opcode, [r.u32(), r.u32()]);

      // 0x30
      case Opcode.i64_load8_s:
      case Opcode.i64_load8_u:
      case Opcode.i64_load16_s:
      case Opcode.i64_load16_u:
      case Opcode.i64_load32_s:
      case Opcode.i64_load32_u:
      case Opcode.i32_store:
      case Opcode.i64_store:
      case Opcode.f32_store:
      case Opcode.f64_store:
      case Opcode.i32_store8:
      case Opcode.i32_store16:
      case Opcode.i64_store8:
      case Opcode.i64_store16:
      case Opcode.i64_store32:
        return Instruction(opcode, [r.u32(), r.u32()]);
      case Opcode.memory_size:
        return Instruction(opcode, [r.u32()]);

      // 0x40
      case Opcode.memory_grow:
        return Instruction(opcode, [r.u32()]);
      case Opcode.i32_const:
        return Instruction(opcode, [r.i32()]);
      case Opcode.i64_const:
        return Instruction(opcode, [r.i64()]);
      case Opcode.f32_const:
        return Instruction(opcode, [r.f32()]);
      case Opcode.f64_const:
        return Instruction(opcode, [r.f64()]);
      case Opcode.i32_eqz:
      case Opcode.i32_eq:
      case Opcode.i32_ne:
      case Opcode.i32_lt_s:
      case Opcode.i32_lt_u:
      case Opcode.i32_gt_s:
      case Opcode.i32_gt_u:
      case Opcode.i32_le_s:
      case Opcode.i32_le_u:
      case Opcode.i32_ge_s:
      case Opcode.i32_ge_u:
        return Instruction(opcode);

      // 0x50
      case Opcode.i64_eqz:
      case Opcode.i64_eq:
      case Opcode.i64_ne:
      case Opcode.i64_lt_s:
      case Opcode.i64_lt_u:
      case Opcode.i64_gt_s:
      case Opcode.i64_gt_u:
      case Opcode.i64_le_s:
      case Opcode.i64_le_u:
      case Opcode.i64_ge_s:
      case Opcode.i64_ge_u:
      case Opcode.f32_eq:
      case Opcode.f32_ne:
      case Opcode.f32_lt:
      case Opcode.f32_gt:
      case Opcode.f32_le:
        return Instruction(opcode);

      // 0x60
      case Opcode.f32_ge:
      case Opcode.f64_eq:
      case Opcode.f64_ne:
      case Opcode.f64_lt:
      case Opcode.f64_gt:
      case Opcode.f64_le:
      case Opcode.f64_ge:
      case Opcode.i32_clz:
      case Opcode.i32_ctz:
      case Opcode.i32_popcnt:
      case Opcode.i32_add:
      case Opcode.i32_sub:
      case Opcode.i32_mul:
      case Opcode.i32_div_s:
      case Opcode.i32_div_u:
      case Opcode.i32_rem_s:
        return Instruction(opcode);

      // 0x70
      case Opcode.i32_rem_u:
      case Opcode.i32_and:
      case Opcode.i32_or:
      case Opcode.i32_xor:
      case Opcode.i32_shl:
      case Opcode.i32_shr_s:
      case Opcode.i32_shr_u:
      case Opcode.i32_rotl:
      case Opcode.i32_rotr:
      case Opcode.i64_clz:
      case Opcode.i64_ctz:
      case Opcode.i64_popcnt:
      case Opcode.i64_add:
      case Opcode.i64_sub:
      case Opcode.i64_mul:
      case Opcode.i64_div_s:
        return Instruction(opcode);

      // 0x80
      case Opcode.i64_div_u:
      case Opcode.i64_rem_s:
      case Opcode.i64_rem_u:
      case Opcode.i64_and:
      case Opcode.i64_or:
      case Opcode.i64_xor:
      case Opcode.i64_shl:
      case Opcode.i64_shr_s:
      case Opcode.i64_shr_u:
      case Opcode.i64_rotl:
      case Opcode.i64_rotr:
      case Opcode.f32_abs:
      case Opcode.f32_neg:
      case Opcode.f32_ceil:
      case Opcode.f32_floor:
      case Opcode.f32_trunc:
        return Instruction(opcode);

      // 0x90
      case Opcode.f32_nearest:
      case Opcode.f32_sqrt:
      case Opcode.f32_add:
      case Opcode.f32_sub:
      case Opcode.f32_mul:
      case Opcode.f32_div:
      case Opcode.f32_min:
      case Opcode.f32_max:
      case Opcode.f32_copysign:
      case Opcode.f64_abs:
      case Opcode.f64_neg:
      case Opcode.f64_ceil:
      case Opcode.f64_foor:
      case Opcode.f64_trunc:
      case Opcode.f64_nearest:
      case Opcode.f64_sqrt:
        return Instruction(opcode);

      // 0xA0
      case Opcode.f64_add:
      case Opcode.f64_sub:
      case Opcode.f64_mul:
      case Opcode.f64_div:
      case Opcode.f64_min:
      case Opcode.f64_max:
      case Opcode.f64_copysign:
      case Opcode.i32_wrap_i64:
      case Opcode.i32_trunc_f32_s:
      case Opcode.i32_trunc_f32_u:
      case Opcode.i32_trunc_f64_s:
      case Opcode.i32_trunc_f64_u:
      case Opcode.i64_extend_i32_s:
      case Opcode.i64_extend_i32_u:
      case Opcode.i64_trunc_f32_s:
      case Opcode.i64_trunc_f32_u:
        return Instruction(opcode);

      // 0xB0
      case Opcode.i64_trunc_f64_s:
      case Opcode.i64_trunc_f64_u:
      case Opcode.f32_convert_i32_s:
      case Opcode.f32_convert_i32_u:
      case Opcode.f32_convert_i64_s:
      case Opcode.f32_convert_i64_u:
      case Opcode.f32_demote_f64:
      case Opcode.f64_convert_i32_s:
      case Opcode.f64_convert_i32_u:
      case Opcode.f64_convert_i64_s:
      case Opcode.f64_convert_i64_u:
      case Opcode.f64_promote_f32:
      case Opcode.i32_reinterpret_f32:
      case Opcode.i64_reinterpret_f64:
      case Opcode.f32_reinterpret_i32:
      case Opcode.f64_reinterpret_i64:
        return Instruction(opcode);

      // 0xC0
      case Opcode.i32_extend8_s:
      case Opcode.i32_extend16_s:
      case Opcode.i64_extend8_s:
      case Opcode.i64_extend16_s:
      case Opcode.i64_extend32_s:
        return Instruction(opcode);
      case Opcode.reserved_C5:
      case Opcode.reserved_C6:
      case Opcode.reserved_C7:
      case Opcode.reserved_C8:
      case Opcode.reserved_C9:
      case Opcode.reserved_CA:
      case Opcode.reserved_CB:
      case Opcode.reserved_CC:
      case Opcode.reserved_CD:
      case Opcode.reserved_CE:
      case Opcode.reserved_CF:
        throw 'unhandled $opcode';

      // 0xD0
      case Opcode.refNull:
        return Instruction(opcode, [r.u32()]);
      case Opcode.ref_is_null:
        return Instruction(opcode);
      case Opcode.refFunc:
        return Instruction(opcode, [r.u32()]);
      case Opcode.reserved_D3:
      case Opcode.reserved_D4:
      case Opcode.reserved_D5:
      case Opcode.reserved_D6:
      case Opcode.reserved_D7:
      case Opcode.reserved_D8:
      case Opcode.reserved_D9:
      case Opcode.reserved_DA:
      case Opcode.reserved_DB:
      case Opcode.reserved_DC:
      case Opcode.reserved_DD:
      case Opcode.reserved_DE:
      case Opcode.reserved_DF:
        throw 'unhandled $opcode';

      // 0xE0
      case Opcode.reserved_E0:
      case Opcode.reserved_E1:
      case Opcode.reserved_E2:
      case Opcode.reserved_E3:
      case Opcode.reserved_E4:
      case Opcode.reserved_E5:
      case Opcode.reserved_E6:
      case Opcode.reserved_E7:
      case Opcode.reserved_E8:
      case Opcode.reserved_E9:
      case Opcode.reserved_EA:
      case Opcode.reserved_EB:
      case Opcode.reserved_EC:
      case Opcode.reserved_ED:
      case Opcode.reserved_EE:
      case Opcode.reserved_EF:
        throw 'unhandled $opcode';

      // 0xF0
      case Opcode.reserved_F0:
      case Opcode.reserved_F1:
      case Opcode.reserved_F2:
      case Opcode.reserved_F3:
      case Opcode.reserved_F4:
      case Opcode.reserved_F5:
      case Opcode.reserved_F6:
      case Opcode.reserved_F7:
      case Opcode.reserved_F8:
      case Opcode.reserved_F9:
      case Opcode.reserved_FA:
      case Opcode.reserved_FB:
        throw 'unhandled $opcode';
      case Opcode.overflow:
        if (code2 == null) return null;

        return _parseOverflow(r, code2);
      case Opcode.vector:
        throw 'unhandled $opcode';
    }
  }

  static Instruction? _parseOverflow(Reader r, int code) {
    final opcode2 = OverflowOpcode.from(code);
    if (opcode2 == null) return null;

    switch (opcode2) {
      // 0xFC 0x00
      case OverflowOpcode.i32_trunc_sat_f32_s:
      case OverflowOpcode.i32_trunc_sat_f32_u:
      case OverflowOpcode.i32_trunc_sat_f64_s:
      case OverflowOpcode.i32_trunc_sat_f64_u:
      case OverflowOpcode.i64_trunc_sat_f32_s:
      case OverflowOpcode.i64_trunc_sat_f32_u:
      case OverflowOpcode.i64_trunc_sat_f64_s:
      case OverflowOpcode.i64_trunc_sat_f64_u:
        return Instruction(Opcode.overflow, [], opcode2);
      case OverflowOpcode.memory_init:
        return Instruction(Opcode.overflow, [r.u32(), r.u32()], opcode2);
      case OverflowOpcode.data_drop:
        return Instruction(Opcode.overflow, [r.u32()], opcode2);
      case OverflowOpcode.memory_copy:
        return Instruction(Opcode.overflow, [r.u32(), r.u32()], opcode2);
      case OverflowOpcode.memory_fill:
        return Instruction(Opcode.overflow, [r.u32()], opcode2);
      case OverflowOpcode.table_init:
        return Instruction(Opcode.overflow, [r.u32(), r.u32()], opcode2);
      case OverflowOpcode.elem_drop:
        return Instruction(Opcode.overflow, [r.u32()], opcode2);
      case OverflowOpcode.table_copy:
        return Instruction(Opcode.overflow, [r.u32(), r.u32()], opcode2);
      case OverflowOpcode.table_grow:
        return Instruction(Opcode.overflow, [r.u32()], opcode2);

      // 0xFC 0x10
      case OverflowOpcode.table_size:
        return Instruction(Opcode.overflow, [r.u32()], opcode2);
      case OverflowOpcode.table_fill:
        return Instruction(Opcode.overflow, [r.u32()], opcode2);
    }
  }

  int calcJumpTargetPc(List<Bytecode> bytecodes) {
    if (loopInstr) {
      // jump to the start
      return bytecodes.indexOf(bytecode!);
    } else {
      // jump to after the end
      return bytecodes.indexOf(endInstr!.bytecode!) + 1;
    }
  }

  @override
  String toString() {
    if (opcode == Opcode.overflow) {
      return '${opcode.name}:${opcode2!.name}';
    } else {
      return opcode.name;
    }
  }
}

class InstructionBrTable extends Instruction {
  Instruction? defaultTargetInstr;
  final List<Instruction> targetInstrs = [];

  InstructionBrTable(List<Object> args) : super(Opcode.brTable, args);

  List<int> get labels => args[0] as List<int>;
  int get defaultLabel => args[1] as int;
}
