import 'dart:math' as math;

import 'bytecode.dart';
import 'execute.dart';
import 'instructions.dart';
import 'opcodes.dart';
import 'parse.dart' as def;
import 'types.dart';

CompiledFn compile(
  Module module,
  def.DefinedFunction function, {
  FunctionType? fnTypeOverride,
}) {
  int stackHeight = 0;
  int maxHeight = 0;

  final List<Bytecode> bytecodes = <Bytecode>[];
  final List<Instruction> labels = [];
  final List<FunctionType> blockTypes = [];
  final functionType = fnTypeOverride ?? function.functionType!;

  blockTypes.push(functionType);

  for (final instruction in function.instructions) {
    final opcode = instruction.opcode;

    // update the stack height
    if (opcode != Opcode.overflow) {
      stackHeight += opcode.returns.length - opcode.params.length;
    } else {
      final opcode2 = instruction.opcode2!;
      stackHeight += opcode2.returns.length - opcode2.params.length;
    }
    maxHeight = math.max(maxHeight, stackHeight);

    // print('${opcode.name.padRight(16)} [stack: $stackHeight]');

    // translate to bytecode
    final bytecode = _translate(instruction);
    instruction.bytecode = bytecode;
    bytecodes.add(bytecode);

    // TODO: handle manipulating the stack when branching

    if (instruction.opcode == Opcode.end) {
      // TODO: use this value
      // ignore: unused_local_variable
      final blockType = blockTypes.pop();

      if (labels.peek?.ifInstr == true ||
          labels.peek?.blockInstr == true ||
          labels.peek?.loopInstr == true) {
        labels.last.endInstr = instruction;
      }

      // TODO: this is special casing the method block end
      if (labels.isNotEmpty) {
        labels.pop();
      }
    } else if (instruction.opcode == Opcode.$if) {
      labels.push(instruction);
      final code = instruction.blockType;
      final blockType = code < 0
          ? FunctionType.fromBlockType(code)!
          : function.module.functionTypes[code];
      blockTypes.push(blockType);
    } else if (instruction.opcode == Opcode.$else) {
      if (labels.last.ifInstr) {
        labels.last.elseInstr = instruction;
      }
    } else if (instruction.opcode == Opcode.block) {
      labels.push(instruction);
      final code = instruction.blockType;
      final blockType = code < 0
          ? FunctionType.fromBlockType(code)!
          : function.module.functionTypes[code];
      blockTypes.push(blockType);
    } else if (instruction.opcode == Opcode.loop) {
      labels.push(instruction);
      final code = instruction.blockType;
      final blockType = code < 0
          ? FunctionType.fromBlockType(code)!
          : function.module.functionTypes[code];
      blockTypes.push(blockType);
    } else if (instruction.brInstr || instruction.brIfInstr) {
      instruction.targetInstr =
          labels[labels.length - instruction.labelTarget - 1];
    } else if (instruction.opcode == Opcode.brTable) {
      // Store the instructions that brTable branches to.
      final brTableInstr = instruction as InstructionBrTable;
      brTableInstr.defaultInstr =
          labels[labels.length - brTableInstr.defaultLabel - 1];
      for (var label in brTableInstr.labels) {
        brTableInstr.labelsInstr.add(labels[labels.length - label - 1]);
      }
    }
  }

  // Calculate the branches.
  for (final instruction in function.instructions) {
    if (instruction.ifInstr) {
      final ifBytecode = instruction.bytecode!;

      // end block
      final endBytecode = instruction.endInstr!.bytecode!;
      final followPc = bytecodes.indexOf(endBytecode) + 1;

      // tell the if statement how to skip to the end
      ifBytecode.endFollow = followPc;

      // else block
      if (instruction.elseInstr != null) {
        final elseBytecode = instruction.elseInstr!.bytecode!;

        // tell the if bytecode where the else block starts
        final elsePc = bytecodes.indexOf(elseBytecode) + 1;
        ifBytecode.elseStart = elsePc;

        // tell the else bytecode how to skip to the end of the if statement
        elseBytecode.endFollow = followPc;
      }
    } else if (instruction.brInstr || instruction.brIfInstr) {
      final targetInstr = instruction.targetInstr!;
      instruction.bytecode!.targetPc = targetInstr.calcJumpTargetPc(bytecodes);
    } else if (instruction.opcode == Opcode.brTable) {
      // From the bytecode instrution targets, calculate PCs.
      final brTableInstr = instruction as InstructionBrTable;
      final brTableBytecode = instruction.bytecode! as BytecodeBrTable;

      brTableBytecode.defaultPcTarget =
          brTableInstr.defaultInstr!.calcJumpTargetPc(bytecodes);
      for (var targetInstr in brTableInstr.labelsInstr) {
        brTableBytecode.pcTargets.add(targetInstr.calcJumpTargetPc(bytecodes));
      }
    }
  }

  return CompiledFn(module, function, functionType, bytecodes, maxHeight);
}

Bytecode _translate(Instruction instr) {
  switch (instr.opcode) {
    case Opcode.unreachable:
      return Bytecode(Bytecode.unreachable);
    case Opcode.nop:
      return Bytecode(Bytecode.nop);
    case Opcode.block:
      return Bytecode(Bytecode.block, i0: instr.immediate_0 as int);
    case Opcode.loop:
      return Bytecode(Bytecode.loop, i0: instr.immediate_0 as int);
    case Opcode.$if:
      return Bytecode(Bytecode.$if, i0: instr.immediate_0 as int);
    case Opcode.$else:
      return Bytecode(Bytecode.$else);
    case Opcode.end:
      return Bytecode(Bytecode.end);
    case Opcode.br:
      return Bytecode(Bytecode.br, i0: instr.immediate_0 as int);
    case Opcode.brIf:
      return Bytecode(Bytecode.brIf, i0: instr.immediate_0 as int);
    case Opcode.brTable:
      return BytecodeBrTable(
          instr.immediate_0 as List<int>, instr.immediate_1 as int);
    case Opcode.$return:
      return Bytecode(Bytecode.$return);
    case Opcode.call:
      return Bytecode(Bytecode.call, i0: instr.immediate_0 as int);
    case Opcode.callIndirect:
      return Bytecode(Bytecode.callIndirect,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.drop:
      return Bytecode(Bytecode.drop);
    case Opcode.select:
      return Bytecode(Bytecode.select);
    case Opcode.selectT:
      return Bytecode(Bytecode.selectT, i0: instr.immediate_0 as int);
    case Opcode.localGet:
      return Bytecode(Bytecode.localGet, i0: instr.immediate_0 as int);
    case Opcode.localSet:
      return Bytecode(Bytecode.localSet, i0: instr.immediate_0 as int);
    case Opcode.localTee:
      return Bytecode(Bytecode.localTee, i0: instr.immediate_0 as int);
    case Opcode.globalGet:
      return Bytecode(Bytecode.globalGet, i0: instr.immediate_0 as int);
    case Opcode.globalSet:
      return Bytecode(Bytecode.globalSet, i0: instr.immediate_0 as int);
    case Opcode.tableGet:
      return Bytecode(Bytecode.tableGet, i0: instr.immediate_0 as int);
    case Opcode.tableSet:
      return Bytecode(Bytecode.tableSet, i0: instr.immediate_0 as int);
    case Opcode.i32_load:
      return Bytecode(Bytecode.i32_load,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i64_load:
      return Bytecode(Bytecode.i64_load,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.f32_load:
      return Bytecode(Bytecode.f32_load,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.f64_load:
      return Bytecode(Bytecode.f64_load,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i32_load8_s:
      return Bytecode(Bytecode.i32_load8_s,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i32_load8_u:
      return Bytecode(Bytecode.i32_load8_u,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i32_load16_s:
      return Bytecode(Bytecode.i32_load16_s,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i32_load16_u:
      return Bytecode(Bytecode.i32_load16_u,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i64_load8_s:
      return Bytecode(Bytecode.i64_load8_s,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i64_load8_u:
      return Bytecode(Bytecode.i64_load8_u,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i64_load16_s:
      return Bytecode(Bytecode.i64_load16_s,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i64_load16_u:
      return Bytecode(Bytecode.i64_load16_u,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i64_load32_s:
      return Bytecode(Bytecode.i64_load32_s,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i64_load32_u:
      return Bytecode(Bytecode.i64_load32_u,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i32_store:
      return Bytecode(Bytecode.i32_store,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i64_store:
      return Bytecode(Bytecode.i64_store,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.f32_store:
      return Bytecode(Bytecode.f32_store,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.f64_store:
      return Bytecode(Bytecode.f64_store,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i32_store8:
      return Bytecode(Bytecode.i32_store8,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i32_store16:
      return Bytecode(Bytecode.i32_store16,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i64_store8:
      return Bytecode(Bytecode.i64_store8,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i64_store16:
      return Bytecode(Bytecode.i64_store16,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.i64_store32:
      return Bytecode(Bytecode.i64_store32,
          i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
    case Opcode.memory_size:
      return Bytecode(Bytecode.memory_size, i0: instr.immediate_0 as int);
    case Opcode.memory_grow:
      return Bytecode(Bytecode.memory_grow, i0: instr.immediate_0 as int);
    case Opcode.i32_const:
      return Bytecode(Bytecode.i32_const, i0: instr.immediate_0 as int);
    case Opcode.i64_const:
      return Bytecode(Bytecode.i64_const, i0: instr.immediate_0 as int);
    case Opcode.f32_const:
      return Bytecode(Bytecode.f32_const, f0: instr.immediate_0 as double);
    case Opcode.f64_const:
      return Bytecode(Bytecode.f64_const, f0: instr.immediate_0 as double);
    case Opcode.i32_eqz:
      return Bytecode(Bytecode.i32_eqz);
    case Opcode.i32_eq:
      return Bytecode(Bytecode.i32_eq);
    case Opcode.i32_ne:
      return Bytecode(Bytecode.i32_ne);
    case Opcode.i32_lt_s:
      return Bytecode(Bytecode.i32_lt_s);
    case Opcode.i32_lt_u:
      return Bytecode(Bytecode.i32_lt_u);
    case Opcode.i32_gt_s:
      return Bytecode(Bytecode.i32_gt_s);
    case Opcode.i32_gt_u:
      return Bytecode(Bytecode.i32_gt_u);
    case Opcode.i32_le_s:
      return Bytecode(Bytecode.i32_le_s);
    case Opcode.i32_le_u:
      return Bytecode(Bytecode.i32_le_u);
    case Opcode.i32_ge_s:
      return Bytecode(Bytecode.i32_ge_s);
    case Opcode.i32_ge_u:
      return Bytecode(Bytecode.i32_ge_u);
    case Opcode.i64_eqz:
      return Bytecode(Bytecode.i64_eqz);
    case Opcode.i64_eq:
      return Bytecode(Bytecode.i64_eq);
    case Opcode.i64_ne:
      return Bytecode(Bytecode.i64_ne);
    case Opcode.i64_lt_s:
      return Bytecode(Bytecode.i64_lt_s);
    case Opcode.i64_lt_u:
      return Bytecode(Bytecode.i64_lt_u);
    case Opcode.i64_gt_s:
      return Bytecode(Bytecode.i64_gt_s);
    case Opcode.i64_gt_u:
      return Bytecode(Bytecode.i64_gt_u);
    case Opcode.i64_le_s:
      return Bytecode(Bytecode.i64_le_s);
    case Opcode.i64_le_u:
      return Bytecode(Bytecode.i64_le_u);
    case Opcode.i64_ge_s:
      return Bytecode(Bytecode.i64_ge_s);
    case Opcode.i64_ge_u:
      return Bytecode(Bytecode.i64_ge_u);
    case Opcode.f32_eq:
      return Bytecode(Bytecode.f32_eq);
    case Opcode.f32_ne:
      return Bytecode(Bytecode.f32_ne);
    case Opcode.f32_lt:
      return Bytecode(Bytecode.f32_lt);
    case Opcode.f32_gt:
      return Bytecode(Bytecode.f32_gt);
    case Opcode.f32_le:
      return Bytecode(Bytecode.f32_le);
    case Opcode.f32_ge:
      return Bytecode(Bytecode.f32_ge);
    case Opcode.f64_eq:
      return Bytecode(Bytecode.f64_eq);
    case Opcode.f64_ne:
      return Bytecode(Bytecode.f64_ne);
    case Opcode.f64_lt:
      return Bytecode(Bytecode.f64_lt);
    case Opcode.f64_gt:
      return Bytecode(Bytecode.f64_gt);
    case Opcode.f64_le:
      return Bytecode(Bytecode.f64_le);
    case Opcode.f64_ge:
      return Bytecode(Bytecode.f64_ge);
    case Opcode.i32_clz:
      return Bytecode(Bytecode.i32_clz);
    case Opcode.i32_ctz:
      return Bytecode(Bytecode.i32_ctz);
    case Opcode.i32_popcnt:
      return Bytecode(Bytecode.i32_popcnt);
    case Opcode.i32_add:
      return Bytecode(Bytecode.i32_add);
    case Opcode.i32_sub:
      return Bytecode(Bytecode.i32_sub);
    case Opcode.i32_mul:
      return Bytecode(Bytecode.i32_mul);
    case Opcode.i32_div_s:
      return Bytecode(Bytecode.i32_div_s);
    case Opcode.i32_div_u:
      return Bytecode(Bytecode.i32_div_u);
    case Opcode.i32_rem_s:
      return Bytecode(Bytecode.i32_rem_s);
    case Opcode.i32_rem_u:
      return Bytecode(Bytecode.i32_rem_u);
    case Opcode.i32_and:
      return Bytecode(Bytecode.i32_and);
    case Opcode.i32_or:
      return Bytecode(Bytecode.i32_or);
    case Opcode.i32_xor:
      return Bytecode(Bytecode.i32_xor);
    case Opcode.i32_shl:
      return Bytecode(Bytecode.i32_shl);
    case Opcode.i32_shr_s:
      return Bytecode(Bytecode.i32_shr_s);
    case Opcode.i32_shr_u:
      return Bytecode(Bytecode.i32_shr_u);
    case Opcode.i32_rotl:
      return Bytecode(Bytecode.i32_rotl);
    case Opcode.i32_rotr:
      return Bytecode(Bytecode.i32_rotr);
    case Opcode.i64_clz:
      return Bytecode(Bytecode.i64_clz);
    case Opcode.i64_ctz:
      return Bytecode(Bytecode.i64_ctz);
    case Opcode.i64_popcnt:
      return Bytecode(Bytecode.i64_popcnt);
    case Opcode.i64_add:
      return Bytecode(Bytecode.i64_add);
    case Opcode.i64_sub:
      return Bytecode(Bytecode.i64_sub);
    case Opcode.i64_mul:
      return Bytecode(Bytecode.i64_mul);
    case Opcode.i64_div_s:
      return Bytecode(Bytecode.i64_div_s);
    case Opcode.i64_div_u:
      return Bytecode(Bytecode.i64_div_u);
    case Opcode.i64_rem_s:
      return Bytecode(Bytecode.i64_rem_s);
    case Opcode.i64_rem_u:
      return Bytecode(Bytecode.i64_rem_u);
    case Opcode.i64_and:
      return Bytecode(Bytecode.i64_and);
    case Opcode.i64_or:
      return Bytecode(Bytecode.i64_or);
    case Opcode.i64_xor:
      return Bytecode(Bytecode.i64_xor);
    case Opcode.i64_shl:
      return Bytecode(Bytecode.i64_shl);
    case Opcode.i64_shr_s:
      return Bytecode(Bytecode.i64_shr_s);
    case Opcode.i64_shr_u:
      return Bytecode(Bytecode.i64_shr_u);
    case Opcode.i64_rotl:
      return Bytecode(Bytecode.i64_rotl);
    case Opcode.i64_rotr:
      return Bytecode(Bytecode.i64_rotr);
    case Opcode.f32_abs:
      return Bytecode(Bytecode.f32_abs);
    case Opcode.f32_neg:
      return Bytecode(Bytecode.f32_neg);
    case Opcode.f32_ceil:
      return Bytecode(Bytecode.f32_ceil);
    case Opcode.f32_floor:
      return Bytecode(Bytecode.f32_floor);
    case Opcode.f32_trunc:
      return Bytecode(Bytecode.f32_trunc);
    case Opcode.f32_nearest:
      return Bytecode(Bytecode.f32_nearest);
    case Opcode.f32_sqrt:
      return Bytecode(Bytecode.f32_sqrt);
    case Opcode.f32_add:
      return Bytecode(Bytecode.f32_add);
    case Opcode.f32_sub:
      return Bytecode(Bytecode.f32_sub);
    case Opcode.f32_mul:
      return Bytecode(Bytecode.f32_mul);
    case Opcode.f32_div:
      return Bytecode(Bytecode.f32_div);
    case Opcode.f32_min:
      return Bytecode(Bytecode.f32_min);
    case Opcode.f32_max:
      return Bytecode(Bytecode.f32_max);
    case Opcode.f32_copysign:
      return Bytecode(Bytecode.f32_copysign);
    case Opcode.f64_abs:
      return Bytecode(Bytecode.f64_abs);
    case Opcode.f64_neg:
      return Bytecode(Bytecode.f64_neg);
    case Opcode.f64_ceil:
      return Bytecode(Bytecode.f64_ceil);
    case Opcode.f64_foor:
      return Bytecode(Bytecode.f64_foor);
    case Opcode.f64_trunc:
      return Bytecode(Bytecode.f64_trunc);
    case Opcode.f64_nearest:
      return Bytecode(Bytecode.f64_nearest);
    case Opcode.f64_sqrt:
      return Bytecode(Bytecode.f64_sqrt);
    case Opcode.f64_add:
      return Bytecode(Bytecode.f64_add);
    case Opcode.f64_sub:
      return Bytecode(Bytecode.f64_sub);
    case Opcode.f64_mul:
      return Bytecode(Bytecode.f64_mul);
    case Opcode.f64_div:
      return Bytecode(Bytecode.f64_div);
    case Opcode.f64_min:
      return Bytecode(Bytecode.f64_min);
    case Opcode.f64_max:
      return Bytecode(Bytecode.f64_max);
    case Opcode.f64_copysign:
      return Bytecode(Bytecode.f64_copysign);
    case Opcode.i32_wrap_i64:
      return Bytecode(Bytecode.i32_wrap_i64);
    case Opcode.i32_trunc_f32_s:
      return Bytecode(Bytecode.i32_trunc_f32_s);
    case Opcode.i32_trunc_f32_u:
      return Bytecode(Bytecode.i32_trunc_f32_u);
    case Opcode.i32_trunc_f64_s:
      return Bytecode(Bytecode.i32_trunc_f64_s);
    case Opcode.i32_trunc_f64_u:
      return Bytecode(Bytecode.i32_trunc_f64_u);
    case Opcode.i64_extend_i32_s:
      return Bytecode(Bytecode.i64_extend_i32_s);
    case Opcode.i64_extend_i32_u:
      return Bytecode(Bytecode.i64_extend_i32_u);
    case Opcode.i64_trunc_f32_s:
      return Bytecode(Bytecode.i64_trunc_f32_s);
    case Opcode.i64_trunc_f32_u:
      return Bytecode(Bytecode.i64_trunc_f32_u);
    case Opcode.i64_trunc_f64_s:
      return Bytecode(Bytecode.i64_trunc_f64_s);
    case Opcode.i64_trunc_f64_u:
      return Bytecode(Bytecode.i64_trunc_f64_u);
    case Opcode.f32_convert_i32_s:
      return Bytecode(Bytecode.f32_convert_i32_s);
    case Opcode.f32_convert_i32_u:
      return Bytecode(Bytecode.f32_convert_i32_u);
    case Opcode.f32_convert_i64_s:
      return Bytecode(Bytecode.f32_convert_i64_s);
    case Opcode.f32_convert_i64_u:
      return Bytecode(Bytecode.f32_convert_i64_u);
    case Opcode.f32_demote_f64:
      return Bytecode(Bytecode.f32_demote_f64);
    case Opcode.f64_convert_i32_s:
      return Bytecode(Bytecode.f64_convert_i32_s);
    case Opcode.f64_convert_i32_u:
      return Bytecode(Bytecode.f64_convert_i32_u);
    case Opcode.f64_convert_i64_s:
      return Bytecode(Bytecode.f64_convert_i64_s);
    case Opcode.f64_convert_i64_u:
      return Bytecode(Bytecode.f64_convert_i64_u);
    case Opcode.f64_promote_f32:
      return Bytecode(Bytecode.f64_promote_f32);
    case Opcode.i32_reinterpret_f32:
      return Bytecode(Bytecode.i32_reinterpret_f32);
    case Opcode.i64_reinterpret_f64:
      return Bytecode(Bytecode.i64_reinterpret_f64);
    case Opcode.f32_reinterpret_i32:
      return Bytecode(Bytecode.f32_reinterpret_i32);
    case Opcode.f64_reinterpret_i64:
      return Bytecode(Bytecode.f64_reinterpret_i64);
    case Opcode.i32_extend8_s:
      return Bytecode(Bytecode.i32_extend8_s);
    case Opcode.i32_extend16_s:
      return Bytecode(Bytecode.i32_extend16_s);
    case Opcode.i64_extend8_s:
      return Bytecode(Bytecode.i64_extend8_s);
    case Opcode.i64_extend16_s:
      return Bytecode(Bytecode.i64_extend16_s);
    case Opcode.i64_extend32_s:
      return Bytecode(Bytecode.i64_extend32_s);
    case Opcode.refNull:
      return Bytecode(Bytecode.refNull, i0: instr.immediate_0 as int);
    case Opcode.ref_is_null:
      return Bytecode(Bytecode.ref_is_null);
    case Opcode.refFunc:
      return Bytecode(Bytecode.refFunc, i0: instr.immediate_0 as int);

    case Opcode.overflow:
      switch (instr.opcode2!) {
        case OverflowOpcode.i32_trunc_sat_f32_s:
          return Bytecode(Bytecode.i32_trunc_sat_f32_s);
        case OverflowOpcode.i32_trunc_sat_f32_u:
          return Bytecode(Bytecode.i32_trunc_sat_f32_u);
        case OverflowOpcode.i32_trunc_sat_f64_s:
          return Bytecode(Bytecode.i32_trunc_sat_f64_s);
        case OverflowOpcode.i32_trunc_sat_f64_u:
          return Bytecode(Bytecode.i32_trunc_sat_f64_u);
        case OverflowOpcode.i64_trunc_sat_f32_s:
          return Bytecode(Bytecode.i64_trunc_sat_f32_s);
        case OverflowOpcode.i64_trunc_sat_f32_u:
          return Bytecode(Bytecode.i64_trunc_sat_f32_u);
        case OverflowOpcode.i64_trunc_sat_f64_s:
          return Bytecode(Bytecode.i64_trunc_sat_f64_s);
        case OverflowOpcode.i64_trunc_sat_f64_u:
          return Bytecode(Bytecode.i64_trunc_sat_f64_u);
        case OverflowOpcode.memory_init:
          return Bytecode(Bytecode.memory_init,
              i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
        case OverflowOpcode.data_drop:
          return Bytecode(Bytecode.data_drop, i0: instr.immediate_0 as int);
        case OverflowOpcode.memory_copy:
          return Bytecode(Bytecode.memory_copy,
              i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
        case OverflowOpcode.memory_fill:
          return Bytecode(Bytecode.memory_fill, i0: instr.immediate_0 as int);
        case OverflowOpcode.table_init:
          return Bytecode(Bytecode.table_init,
              i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
        case OverflowOpcode.elem_drop:
          return Bytecode(Bytecode.elem_drop, i0: instr.immediate_0 as int);
        case OverflowOpcode.table_copy:
          return Bytecode(Bytecode.table_copy,
              i0: instr.immediate_0 as int, i1: instr.immediate_1 as int);
        case OverflowOpcode.table_grow:
          return Bytecode(Bytecode.table_grow, i0: instr.immediate_0 as int);
        case OverflowOpcode.table_size:
          return Bytecode(Bytecode.table_size, i0: instr.immediate_0 as int);
        case OverflowOpcode.table_fill:
          return Bytecode(Bytecode.table_fill, i0: instr.immediate_0 as int);

        default:
          throw 'unhandled overflow ${instr.opcode2}';
      }

    case Opcode.vector:
      throw 'unhandled ${instr.opcode}';

    default:
      throw StateError('unhandled ${instr.opcode}');
  }
}

extension StackExt<T> on List<T> {
  void push(T item) => add(item);

  T pop() => removeLast();

  T? get peek => isEmpty ? null : last;
}
