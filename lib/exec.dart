// ignore_for_file: camel_case_types

import 'instructions.dart';
import 'loader.dart';
import 'types.dart';

class Frame {
  final DefinedFunction function;
  final List<int> args;
  final List<Object?> locals;
  // todo: length
  final List<Object?> stack = List.filled(100, 0);

  int pc = 0; // 0 == first instruction
  int sp = 0; // 0 == stack is empty

  bool finished = false;
  Object? $return;

  Frame(this.function, this.args)
      : locals = List.filled(args.length + function.locals.length, 0) {
    for (int i = 0; i < args.length; i++) {
      locals[i] = args[i];
    }
  }

  Object? exec() {
    while (!finished) {
      final currentpc = pc++;
      final instr = function.execExecInsts[currentpc];
      instr.exec(this);
    }

    return $return;
  }

  void push(Object? object) {
    stack[sp++] = object;
  }

  Object? pop() {
    return stack[--sp];
  }
}

abstract class ExecInst {
  void exec(Frame frame);
}

class ExecConst extends ExecInst {
  final Object $const;

  ExecConst(this.$const);

  @override
  void exec(Frame frame) {
    frame.push($const);
  }
}

class ExecLocalSet extends ExecInst {
  final int local;

  ExecLocalSet(this.local);

  @override
  void exec(Frame frame) {
    frame.locals[local] = frame.pop();
  }
}

class ExecLocalGet extends ExecInst {
  final int local;

  ExecLocalGet(this.local);

  @override
  void exec(Frame frame) {
    frame.push(frame.locals[local]);
  }
}

// todo: switch to having all the methods implemented on 'Frame'

class Exec_i32_gt_s extends ExecInst {
  @override
  void exec(Frame frame) {
    i32 arg1 = frame.pop() as i32;
    i32 arg0 = frame.pop() as i32;
    frame.push(arg0 > arg1 ? 1 : 0);
  }
}

class UnimplementedExecInst extends ExecInst {
  final Instruction instruction;

  UnimplementedExecInst(this.instruction);

  @override
  void exec(Frame frame) {
    throw 'unimplemented: $instruction';
  }
}
