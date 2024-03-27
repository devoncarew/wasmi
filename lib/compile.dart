import 'dart:math' as math;

import 'bytecode.dart';
import 'format.dart';
import 'instructions.dart';
import 'opcodes.dart';
import 'types.dart';

extension DefinedFunctionExtension on DefinedFunction {
  void compile() {
    int stackHeight = 0;
    int maxHeight = 0;

    final result = <Bytecode>[];
    final List<Instruction> labels = [];
    final List<BlockFunctionType> blockTypes = [];

    blockTypes.push(BlockFunctionType.fn(functionType!));

    for (final instruction in instructions) {
      final opcode = instruction.opcode;

      // update the stack height
      if (opcode != Opcode.overflow) {
        stackHeight += opcode.returns.length - opcode.params.length;
      } else {
        final opcode2 = instruction.opcode2!;
        stackHeight += opcode2.returns.length - opcode2.params.length;
      }
      maxHeight = math.max(maxHeight, stackHeight);

      print('${opcode.name.padRight(16)} [stack: $stackHeight]');

      // translate to bytecode
      final bytecode = _translate(instruction);
      instruction.bytecode = bytecode;
      result.add(bytecode);

      if (instruction.opcode == Opcode.end) {
        final blockType = blockTypes.pop();
        print('  blocktype = $blockType');

        if (labels.peek?.ifInstr == true) {
          labels.last.endInstr = instruction;
        }

        // todo: this is special casing the method block end
        if (labels.isNotEmpty) {
          labels.pop();
        }
      } else if (instruction.opcode == Opcode.$if) {
        labels.push(instruction);
        final blockType = BlockFunctionType.from(instruction.blockType, this);
        print('  blocktype = $blockType');
        blockTypes.push(blockType);
      } else if (instruction.opcode == Opcode.$else) {
        if (labels.last.ifInstr) {
          labels.last.elseInstr = instruction;
        }
      } else if (instruction.opcode == Opcode.loop) {
        labels.push(instruction);
        final blockType = BlockFunctionType.from(instruction.blockType, this);
        print('  blocktype = $blockType');
        blockTypes.push(blockType);
      } else if (instruction.opcode == Opcode.br) {
        final labelTarget = instruction.labelTarget;
        final target = labels[labels.length - labelTarget - 1];
        final targetPc = result.indexOf(target.bytecode!);
        instruction.bytecode!.targetPc = targetPc;
      }
    }

    print('\nend stack height: $stackHeight');
    print('max stack height: $maxHeight');

    // Calculate the branches.
    for (final instruction in instructions) {
      if (instruction.ifInstr) {
        final ifBytecode = instruction.bytecode!;

        // end block
        final endBytecode = instruction.endInstr!.bytecode!;
        final followPc = result.indexOf(endBytecode) + 1;

        // tell the if statement how to skip to the end
        ifBytecode.endFollow = followPc;

        // else block
        if (instruction.elseInstr != null) {
          final elseBytecode = instruction.elseInstr!.bytecode!;

          // tell the if bytecode where the else block starts
          final elsePc = result.indexOf(elseBytecode) + 1;
          ifBytecode.elseStart = elsePc;

          // tell the else bytecode how to skip to the end of the if statement
          elseBytecode.endFollow = followPc;
        }
      }
    }

    bytecodes = result;
  }

  Bytecode _translate(Instruction instr) {
    switch (instr.opcode) {
      case Opcode.unreachable:
        return Bytecode(Bytecode.unreachable);
      case Opcode.nop:
        return Bytecode(Bytecode.nop);
      case Opcode.localGet:
        return Bytecode(
          Bytecode.localGet,
          immediate_0_u64: instr.immediate_0 as int,
        );
      case Opcode.localTee:
        return Bytecode(
          Bytecode.localTee,
          immediate_0_u64: instr.immediate_0 as int,
        );
      case Opcode.i32_add:
        return Bytecode(Bytecode.i32_add);
      case Opcode.end:
        return Bytecode(Bytecode.end);
      case Opcode.i32_const:
        return Bytecode(
          Bytecode.i32_const,
          immediate_0_u64: instr.immediate_0 as int,
        );
      case Opcode.localSet:
        return Bytecode(
          Bytecode.localSet,
          immediate_0_u64: instr.immediate_0 as int,
        );
      case Opcode.i32_gt_s:
        return Bytecode(Bytecode.i32_gt_s);
      case Opcode.$if:
        return Bytecode(Bytecode.$if);
      case Opcode.loop:
        return Bytecode(Bytecode.loop);
      case Opcode.i32_sub:
        return Bytecode(Bytecode.i32_sub);
      case Opcode.br:
        return Bytecode(Bytecode.br);
      case Opcode.$return:
        return Bytecode(Bytecode.$return);

      default:
        throw StateError('unhandled ${instr.opcode}');
    }
  }
}

extension StackExt<T> on List<T> {
  void push(T item) => add(item);

  T pop() => removeLast();

  T? get peek => isEmpty ? null : last;
}

class BlockFunctionType {
  ValueType? valueType;
  FunctionType? functionType;

  BlockFunctionType.from(int code, DefinedFunction function) {
    if (code == -0x40) {
      // no block type
    } else if (code < 0) {
      valueType = ValueType.fromCode(code & 0x7F);
    } else {
      functionType = function.module.functionTypes[code];
    }
  }

  BlockFunctionType.fn(this.functionType);
  BlockFunctionType.value(this.valueType);

  int get paramItems {
    if (valueType != null) return 0;
    if (functionType != null) return functionType!.parameterTypes.length;
    return 0;
  }

  int get returnItems {
    if (valueType != null) return 1;
    if (functionType != null) return functionType!.resultTypes.length;
    return 0;
  }

  // String get tupleTypeName {
  //   var retItems = functionType!.resultType;
  //   return 'Tuple${retItems.length}<${retItems.map((t) => t.typeName).join(', ')}>';
  // }

  // ValueType? get firstReturnType {
  //   if (valueType != null) {
  //     return valueType;
  //   } else if (functionType != null) {
  //     var types = functionType!.resultType;
  //     return types.firstOrNull;
  //   } else {
  //     return null;
  //   }
  // }

  // bool get isPrimitive {
  //   return returnItems == 1 ? !firstReturnType!.refType : false;
  // }

  // String? get defaultInitValue {
  //   return firstReturnType?.initValue;
  // }

  String get describe {
    if (valueType != null) return '=> ${valueType!.name}';
    if (functionType != null) return functionType!.toString();
    return '∅';
  }

  @override
  String toString() => describe;
}
