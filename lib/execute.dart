// ignore_for_file: unused_local_variable, deprecated_member_use
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types

import 'dart:math';

import 'bytecode.dart';
import 'compile.dart';
import 'parse.dart';
import 'types.dart';

typedef ImplFn = void Function(Bytecode code);
typedef reftype = Object?; // todo:

class Module {
  final ModuleDefinition moduleDefinition;

  final Map<String, CompiledFn> _exportedFunctions = {};

  Module(this.moduleDefinition) {
    _init();
  }

  void _init() {
    // todo: memory and such
  }

  Object? call(String methodName, [List<Object?> args = const []]) {
    final fn = _exportedFunctions.putIfAbsent(methodName, () {
      // todo: throw an exception if there is no such method
      var function = moduleDefinition.exportedFunction(methodName)!.func;
      return compile(this, function as DefinedFunction);
    });

    return fn.call(args);

    // // todo:
    // var context = ExecutionContect(this);
    // // todo: throw an exception if there is no such method
    // var function = module.exportedFunction(methodName)!.func as DefinedFunction;

    // // todo: handle compilation here

    // return context.execute(function, args);
  }
}

class CompiledFn {
  final Module module;
  final DefinedFunction function;
  final List<Bytecode> bytecodes;
  final int stackHeight;

  CompiledFn(this.module, this.function, this.bytecodes, this.stackHeight);

  Object? call(List<Object?> args) {
    final paramTypes = function.functionType!.parameterTypes;
    if (args.length != paramTypes.length) {
      throw StateError(
        'wrong number of args: expected '
        '${paramTypes.length}, got ${args.length}',
      );
    }

    final List<Object?> locals = <Object?>[];
    locals.addAll(args);
    for (final local in function.locals) {
      locals.add(local.defaultValue);
    }

    final List<Object?> stack = List<Object?>.filled(stackHeight, null);
    int sp = 0;
    int pc = 0;

    final bytecodes = this.bytecodes;

    /* bytecode implementations */

    void unreachable(Bytecode code) {
      throw 'unimplemented: unreachable';
    }

    void nop(Bytecode code) {
      throw 'unimplemented: nop';
    }

    void block(Bytecode code) {
      // todo:

      throw 'unimplemented: block';
    }

    void loop(Bytecode code) {
      // nothing to do
    }

    void $if(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      if (arg0 == 0) {
        // Execute the else block if it exists.
        pc = code.elseStart != null ? code.elseStart! : code.endFollow!;
      }
    }

    void $else(Bytecode code) {
      // skip the else block
      pc = code.endFollow!;
    }

    void end(Bytecode code) {
      // todo: implement?

      // throw 'unimplemented: end';
    }

    void br(Bytecode code) {
      pc = code.targetPc!;
    }

    void brIf(Bytecode code) {
      throw 'unimplemented: brIf';
    }

    void brTable(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: brTable';
    }

    void $return(Bytecode code) {
      // // todo: use the fn return type
      // if (fn.functionType!.returnsVoid) {
      //   return null;
      // } else {
      //   return stack[--sp];
      // }

      pc = bytecodes.length;
    }

    void call(Bytecode code) {
      throw 'unimplemented: call';
    }

    void callIndirect(Bytecode code) {
      throw 'unimplemented: callIndirect';
    }

    void drop(Bytecode code) {
      Object? arg0 = stack[--sp];
      throw 'unimplemented: drop';
    }

    void select(Bytecode code) {
      i32 arg2 = stack[--sp] as int;
      Object? arg1 = stack[--sp];
      Object? arg0 = stack[--sp];
      throw 'unimplemented: select';
    }

    void selectT(Bytecode code) {
      i32 arg2 = stack[--sp] as int;
      Object? arg1 = stack[--sp];
      Object? arg0 = stack[--sp];
      throw 'unimplemented: selectT';
    }

    void localGet(Bytecode code) {
      stack[sp++] = locals[code.i0];
    }

    void localSet(Bytecode code) {
      Object? arg0 = stack[--sp];
      locals[code.i0] = arg0;
    }

    void localTee(Bytecode code) {
      Object? arg0 = stack[sp - 1];
      locals[code.i0] = arg0;
    }

    void globalGet(Bytecode code) {
      throw 'unimplemented: globalGet';
    }

    void globalSet(Bytecode code) {
      Object? arg0 = stack[--sp];
      throw 'unimplemented: globalSet';
    }

    void tableGet(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: tableGet';
    }

    void tableSet(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: tableSet';
    }

    void i32_load(Bytecode code) {
      // i32 index = stack[--sp] as int;
      // if (index < 0) throw Trap('out of bounds memory access');
      // try {
      //   i32 value = memory.data.getInt32(index + code.i1, Endian.little);
      //   stack.add(value);
      // } on RangeError {
      //   throw Trap('out of bounds memory access');
      // }

      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i32_load';
    }

    void i64_load(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_load';
    }

    void f32_load(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: f32_load';
    }

    void f64_load(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: f64_load';
    }

    void i32_load8_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i32_load8_s';
    }

    void i32_load8_u(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i32_load8_u';
    }

    void i32_load16_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i32_load16_s';
    }

    void i32_load16_u(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i32_load16_u';
    }

    void i64_load8_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_load8_s';
    }

    void i64_load8_u(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_load8_u';
    }

    void i64_load16_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_load16_s';
    }

    void i64_load16_u(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_load16_u';
    }

    void i64_load32_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_load32_s';
    }

    void i64_load32_u(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_load32_u';
    }

    void i32_store(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i32_store';
    }

    void i64_store(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_store';
    }

    void f32_store(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: f32_store';
    }

    void f64_store(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: f64_store';
    }

    void i32_store8(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i32_store8';
    }

    void i32_store16(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i32_store16';
    }

    void i64_store8(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_store8';
    }

    void i64_store16(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_store16';
    }

    void i64_store32(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_store32';
    }

    void memory_size(Bytecode code) {
      throw 'unimplemented: memory_size';
    }

    void memory_grow(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: memory_grow';
    }

    void i32_const(Bytecode code) {
      stack[sp++] = code.i0;
    }

    void i64_const(Bytecode code) {
      throw 'unimplemented: i64_const';
    }

    void f32_const(Bytecode code) {
      throw 'unimplemented: f32_const';
    }

    void f64_const(Bytecode code) {
      throw 'unimplemented: f64_const';
    }

    void i32_eqz(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 == 0 ? 1 : 0;
    }

    void i32_eq(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 == arg1 ? 1 : 0;
    }

    void i32_ne(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 != arg1 ? 1 : 0;
    }

    void i32_lt_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 < arg1 ? 1 : 0;
    }

    void i32_lt_u(Bytecode code) {
      i32 arg1 = (stack[--sp] as int) & _mask32;
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = arg0 < arg1 ? 1 : 0;
    }

    void i32_gt_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 > arg1 ? 1 : 0;
    }

    void i32_gt_u(Bytecode code) {
      i32 arg1 = (stack[--sp] as int) & _mask32;
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = arg0 > arg1 ? 1 : 0;
    }

    void i32_le_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 <= arg1 ? 1 : 0;
    }

    void i32_le_u(Bytecode code) {
      i32 arg1 = (stack[--sp] as int) & _mask32;
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = arg0 <= arg1 ? 1 : 0;
    }

    void i32_ge_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 >= arg1 ? 1 : 0;
    }

    void i32_ge_u(Bytecode code) {
      i32 arg1 = (stack[--sp] as int) & _mask32;
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = arg0 >= arg1 ? 1 : 0;
    }

    void i64_eqz(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 == 0 ? 1 : 0;
    }

    void i64_eq(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 == arg1 ? 1 : 0;
    }

    void i64_ne(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 != arg1 ? 1 : 0;
    }

    void i64_lt_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 < arg1 ? 1 : 0;
    }

    void i64_lt_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 < arg1 ? 1 : 0;
    }

    void i64_gt_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 > arg1 ? 1 : 0;
    }

    void i64_gt_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 > arg1 ? 1 : 0;
    }

    void i64_le_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 <= arg1 ? 1 : 0;
    }

    void i64_le_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 <= arg1 ? 1 : 0;
    }

    void i64_ge_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 >= arg1 ? 1 : 0;
    }

    void i64_ge_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 >= arg1 ? 1 : 0;
    }

    void f32_eq(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 == arg1 ? 1 : 0;
    }

    void f32_ne(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 != arg1 ? 1 : 0;
    }

    void f32_lt(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 < arg1 ? 1 : 0;
    }

    void f32_gt(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 > arg1 ? 1 : 0;
    }

    void f32_le(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 <= arg1 ? 1 : 0;
    }

    void f32_ge(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 >= arg1 ? 1 : 0;
    }

    void f64_eq(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 == arg1 ? 1 : 0;
    }

    void f64_ne(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 != arg1 ? 1 : 0;
    }

    void f64_lt(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 < arg1 ? 1 : 0;
    }

    void f64_gt(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 > arg1 ? 1 : 0;
    }

    void f64_le(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 <= arg1 ? 1 : 0;
    }

    void f64_ge(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 >= arg1 ? 1 : 0;
    }

    void i32_clz(Bytecode code) {
      // "Return the count of leading zero bits in i; all bits are considered
      // leading zeros if i is 0."
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = 32 - arg0.bitLength;
    }

    void i32_ctz(Bytecode code) {
      // "Return the count of trailing zero bits in i; all bits are considered
      // trailing zeros if i is 0."
      i32 arg0 = stack[--sp] as int;

      if (arg0 == 0) {
        stack[sp++] = 32;
      } else {
        arg0 |= 0xFFFFFFFF00000000;
        arg0 &= -arg0;
        int clz;
        if (arg0 & 0x8000000000000000 != 0) {
          clz = 0;
        } else {
          clz = 32 - arg0.bitLength;
        }
        // function ctz4 (x)
        //   x &= -x
        //   return w - (clz(x) + 1)
        stack[sp++] = 32 - (clz + 1);
      }
    }

    void i32_popcnt(Bytecode code) {
      // "Return the count of non-zero bits in i."
      i32 arg0 = stack[--sp] as int;
      var result = _popcntTable[arg0 & 0xFF];
      result += _popcntTable[(arg0 >> 8) & 0xFF];
      result += _popcntTable[(arg0 >> 16) & 0xFF];
      result += _popcntTable[(arg0 >> 24) & 0xFF];
      stack[sp++] = result;
    }

    void i32_add(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      var result = arg0 + arg1;
      if ((result & _bit31) != 0) {
        result |= _maskTop32;
      } else {
        result &= _mask32;
      }
      stack[sp++] = result;
    }

    void i32_sub(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      final result = arg0 - arg1;
      stack[sp++] =
          (result & _bit31) != 0 ? result | _maskTop32 : result & _mask32;
    }

    void i32_mul(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      var result = arg0 * arg1;
      if ((result & _bit31) != 0) {
        result |= _maskTop32;
      } else {
        result &= _mask32;
      }
      stack[sp++] = result;
    }

    void i32_div_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      try {
        var result = arg0 ~/ arg1;
        stack[sp++] = result;
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i32_div_u(Bytecode code) {
      i32 arg1 = (stack[--sp] as int) & _mask32;
      i32 arg0 = (stack[--sp] as int) & _mask32;
      try {
        stack[sp++] = arg0 ~/ arg1;
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i32_rem_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      try {
        stack[sp++] = arg0.remainder(arg1);
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i32_rem_u(Bytecode code) {
      u32 arg1 = (stack[--sp] as int) & _mask32;
      u32 arg0 = (stack[--sp] as int) & _mask32;
      try {
        var result = arg0.remainder(arg1);
        // sign extend result
        if ((result & _bit31) != 0) result |= _maskTop32;
        stack[sp++] = result;
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i32_and(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 & arg1;
    }

    void i32_or(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 | arg1;
    }

    void i32_xor(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 ^ arg1;
    }

    void i32_shl(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      arg1 = arg1 & 0x1F; // shift left by arg1 bits modulo 32
      var result = arg0 << arg1;
      if ((result & _bit31) != 0) {
        // sign extend result
        result |= _maskTop32;
      } else {
        // remove anything shifted into the 64 bit portion
        result &= _mask32;
      }
      stack[sp++] = result;
    }

    void i32_shr_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      arg1 = arg1 & 0x1F; // shift right by arg1 bits modulo 32
      stack[sp++] = arg0 >> arg1;
    }

    void i32_shr_u(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = (stack[--sp] as int) & _mask32;
      arg1 = arg1 & 0x1F; // shift right by arg1 bits modulo 32
      var result = arg0 >>> arg1;
      // sign extend result
      if ((result & _bit31) != 0) result |= _maskTop32;
      stack[sp++] = result;
    }

    void i32_rotl(Bytecode code) {
      const bitCount = 32;

      i32 count = stack[--sp] as int;
      i32 value = (stack[--sp] as int) & _mask32;

      count = count & 0x1F; // modulo 32

      var result = (value << count) | (value >>> (bitCount - count));
      if ((result & _bit31) != 0) {
        // sign extend result
        result |= _maskTop32;
      } else {
        // remove anything shifted into the 64 bit portion
        result &= _mask32;
      }
      stack[sp++] = result;
    }

    void i32_rotr(Bytecode code) {
      const bitCount = 32;

      i32 count = stack[--sp] as int;
      i32 value = (stack[--sp] as int) & _mask32;

      count = count & 0x1F; //  modulo 32

      i32 result = (value << (bitCount - count)) | (value >>> count);
      if ((result & _bit31) != 0) {
        // sign extend result
        result |= _maskTop32;
      } else {
        // remove anything shifted into the 64 bit portion
        result &= _mask32;
      }
      stack[sp++] = result;
    }

    void i64_clz(Bytecode code) {
      // "Return the count of leading zero bits in i; all bits are considered
      // leading zeros if i is 0."
      i64 arg0 = stack[--sp] as i64;
      if (arg0 & 0x8000000000000000 != 0) {
        stack[sp++] = 0;
      } else {
        stack[sp++] = 64 - arg0.bitLength;
      }
    }

    void i64_ctz(Bytecode code) {
      // "Return the count of trailing zero bits in i; all bits are considered
      // trailing zeros if i is 0."
      i64 arg0 = stack[--sp] as int;
      if (arg0 == 0) {
        stack[sp++] = 64;
      } else {
        arg0 &= -arg0;
        int clz;
        if (arg0 & 0x8000000000000000 != 0) {
          clz = 0;
        } else {
          clz = 64 - arg0.bitLength;
        }
        // function ctz4 (x)
        //   x &= -x
        //   return w - (clz(x) + 1)
        stack[sp++] = 64 - (clz + 1);
      }
    }

    void i64_popcnt(Bytecode code) {
      // "Return the count of non-zero bits in i."
      i64 arg0 = stack[--sp] as int;
      var result = _popcntTable[arg0 & 0xFF];
      result += _popcntTable[(arg0 >> 8) & 0xFF];
      result += _popcntTable[(arg0 >> 16) & 0xFF];
      result += _popcntTable[(arg0 >> 24) & 0xFF];
      result += _popcntTable[(arg0 >> 32) & 0xFF];
      result += _popcntTable[(arg0 >> 40) & 0xFF];
      result += _popcntTable[(arg0 >> 48) & 0xFF];
      result += _popcntTable[(arg0 >> 56) & 0xFF];
      stack[sp++] = result;
    }

    void i64_add(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 + arg1;
    }

    void i64_sub(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 - arg1;
    }

    void i64_mul(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 * arg1;
    }

    void i64_div_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      try {
        stack[sp++] = arg0 ~/ arg1;
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i64_div_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      try {
        stack[sp++] = arg0 ~/ arg1;
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i64_rem_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      try {
        stack[sp++] = arg0.remainder(arg1);
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i64_rem_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      try {
        stack[sp++] = arg0.remainder(arg1);
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i64_and(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 & arg1;
    }

    void i64_or(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 | arg1;
    }

    void i64_xor(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 ^ arg1;
    }

    void i64_shl(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      // shift left by arg1 bits modulo 64
      arg1 = arg1 & 0x3F;
      stack[sp++] = arg0 << arg1;
    }

    void i64_shr_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      // shift right by arg1 bits modulo 64
      arg1 = arg1 & 0x3F;
      stack[sp++] = arg0 >> arg1;
    }

    void i64_shr_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      // shift right by arg1 bits modulo 64
      arg1 = arg1 & 0x3F;
      stack[sp++] = arg0 >>> arg1;
    }

    void i64_rotl(Bytecode code) {
      const bitCount = 64;

      u64 count = stack[--sp] as int;
      u64 value = stack[--sp] as int;

      count = count & 0x3F; // count bits modulo 64

      i64 result = count == 0
          ? value
          : (value << count) | (value >>> (bitCount - count));
      stack[sp++] = result;
    }

    void i64_rotr(Bytecode code) {
      const bitCount = 64;

      u64 count = stack[--sp] as int;
      u64 value = stack[--sp] as int;

      count = count & 0x3F; // count bits modulo 64

      i64 result = count == 0
          ? value
          : (value << (bitCount - count)) | (value >>> count);
      stack[sp++] = result;
    }

    void f32_abs(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.abs();
    }

    void f32_neg(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = -arg0;
    }

    void f32_ceil(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.ceilToDouble();
    }

    void f32_floor(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.floorToDouble();
    }

    void f32_trunc(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.truncateToDouble();
    }

    void f32_nearest(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.roundToDouble();
    }

    void f32_sqrt(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = sqrt(arg0);
    }

    void f32_add(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 + arg1;
    }

    void f32_sub(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 - arg1;
    }

    void f32_mul(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 * arg1;
    }

    void f32_div(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 / arg1;
    }

    void f32_min(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = min(arg0, arg1);
    }

    void f32_max(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = max(arg0, arg1);
    }

    void f32_copysign(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.isNegative == arg1.isNegative ? arg0 : -arg0;
    }

    void f64_abs(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.abs();
    }

    void f64_neg(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = -arg0;
    }

    void f64_ceil(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.ceilToDouble();
    }

    void f64_foor(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.floorToDouble();
    }

    void f64_trunc(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.truncateToDouble();
    }

    void f64_nearest(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.roundToDouble();
    }

    void f64_sqrt(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = sqrt(arg0);
    }

    void f64_add(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 + arg1;
    }

    void f64_sub(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 - arg1;
    }

    void f64_mul(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 * arg1;
    }

    void f64_div(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 / arg1;
    }

    void f64_min(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = min(arg0, arg1);
    }

    void f64_max(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = max(arg0, arg1);
    }

    void f64_copysign(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.isNegative == arg1.isNegative ? arg0 : -arg0;
    }

    void i32_wrap_i64(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      i32 result = arg0 & _mask32;
      // sign extend
      if ((result & _bit31) != 0) result |= _maskTop32;
      stack[sp++] = result;
    }

    void i32_trunc_f32_s(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      throw 'unimplemented: i32_trunc_f32_s';
    }

    void i32_trunc_f32_u(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      throw 'unimplemented: i32_trunc_f32_u';
    }

    void i32_trunc_f64_s(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      throw 'unimplemented: i32_trunc_f64_s';
    }

    void i32_trunc_f64_u(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      throw 'unimplemented: i32_trunc_f64_u';
    }

    void i64_extend_i32_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_extend_i32_s';
    }

    void i64_extend_i32_u(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: i64_extend_i32_u';
    }

    void i64_trunc_f32_s(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      throw 'unimplemented: i64_trunc_f32_s';
    }

    void i64_trunc_f32_u(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      throw 'unimplemented: i64_trunc_f32_u';
    }

    void i64_trunc_f64_s(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      throw 'unimplemented: i64_trunc_f64_s';
    }

    void i64_trunc_f64_u(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      throw 'unimplemented: i64_trunc_f64_u';
    }

    void f32_convert_i32_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: f32_convert_i32_s';
    }

    void f32_convert_i32_u(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: f32_convert_i32_u';
    }

    void f32_convert_i64_s(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      throw 'unimplemented: f32_convert_i64_s';
    }

    void f32_convert_i64_u(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      throw 'unimplemented: f32_convert_i64_u';
    }

    void f32_demote_f64(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      throw 'unimplemented: f32_demote_f64';
    }

    void f64_convert_i32_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: f64_convert_i32_s';
    }

    void f64_convert_i32_u(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: f64_convert_i32_u';
    }

    void f64_convert_i64_s(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      throw 'unimplemented: f64_convert_i64_s';
    }

    void f64_convert_i64_u(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      throw 'unimplemented: f64_convert_i64_u';
    }

    void f64_promote_f32(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      throw 'unimplemented: f64_promote_f32';
    }

    void i32_reinterpret_f32(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      throw 'unimplemented: i32_reinterpret_f32';
    }

    void i64_reinterpret_f64(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      throw 'unimplemented: i64_reinterpret_f64';
    }

    void f32_reinterpret_i32(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: f32_reinterpret_i32';
    }

    void f64_reinterpret_i64(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      throw 'unimplemented: f64_reinterpret_i64';
    }

    void i32_extend8_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      if ((arg0 & 0x80) != 0) {
        stack[sp++] = 0xFFFFFFFFFFFFFF00 | arg0;
      } else {
        stack[sp++] = arg0 & 0xFF;
      }
    }

    void i32_extend16_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      if ((arg0 & 0x8000) != 0) {
        i64 result = 0xFFFFFFFFFFFF0000 | arg0;
        stack[sp++] = result;
      } else {
        stack[sp++] = arg0 & 0xFFFF;
      }
    }

    void i64_extend8_s(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      if ((arg0 & 0x80) != 0) {
        i64 result = 0xFFFFFFFFFFFFFF00 | arg0;
        stack[sp++] = result;
      } else {
        i64 result = 0x00000000000000FF & arg0;
        stack[sp++] = result;
      }
    }

    void i64_extend16_s(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      if ((arg0 & 0x8000) != 0) {
        i64 result = 0xFFFFFFFFFFFF0000 | arg0;
        stack[sp++] = result;
      } else {
        i64 result = 0x000000000000FFFF & arg0;
        stack[sp++] = result;
      }
    }

    void i64_extend32_s(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      if ((arg0 & 0x80000000) != 0) {
        i64 result = 0xFFFFFFFF00000000 | arg0;
        stack[sp++] = result;
      } else {
        i64 result = 0x00000000FFFFFFFF & arg0;
        stack[sp++] = result;
      }
    }

    void refNull(Bytecode code) {
      stack[sp++] = null;
    }

    void ref_is_null(Bytecode code) {
      reftype arg0 = stack[--sp];
      throw 'unimplemented: ref_is_null';
    }

    void refFunc(Bytecode code) {
      throw 'unimplemented: refFunc';
    }

    void i32_trunc_sat_f32_s(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      throw 'unimplemented: i32_trunc_sat_f32_s';
    }

    void i32_trunc_sat_f32_u(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      throw 'unimplemented: i32_trunc_sat_f32_u';
    }

    void i32_trunc_sat_f64_s(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      throw 'unimplemented: i32_trunc_sat_f64_s';
    }

    void i32_trunc_sat_f64_u(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      throw 'unimplemented: i32_trunc_sat_f64_u';
    }

    void i64_trunc_sat_f32_s(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      throw 'unimplemented: i64_trunc_sat_f32_s';
    }

    void i64_trunc_sat_f32_u(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      throw 'unimplemented: i64_trunc_sat_f32_u';
    }

    void i64_trunc_sat_f64_s(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      throw 'unimplemented: i64_trunc_sat_f64_s';
    }

    void i64_trunc_sat_f64_u(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      throw 'unimplemented: i64_trunc_sat_f64_u';
    }

    void memory_init(Bytecode code) {
      i32 arg2 = stack[--sp] as int;
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: memory_init';
    }

    void data_drop(Bytecode code) {
      throw 'unimplemented: data_drop';
    }

    void memory_copy(Bytecode code) {
      i32 arg2 = stack[--sp] as int;
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: memory_copy';
    }

    void memory_fill(Bytecode code) {
      i32 arg2 = stack[--sp] as int;
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: memory_fill';
    }

    void table_init(Bytecode code) {
      i32 arg2 = stack[--sp] as int;
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: table_init';
    }

    void elem_drop(Bytecode code) {
      throw 'unimplemented: elem_drop';
    }

    void table_copy(Bytecode code) {
      i32 arg2 = stack[--sp] as int;
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: table_copy';
    }

    void table_grow(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      reftype arg0 = stack[--sp];
      throw 'unimplemented: table_grow';
    }

    void table_size(Bytecode code) {
      throw 'unimplemented: table_size';
    }

    void table_fill(Bytecode code) {
      i32 arg2 = stack[--sp] as int;
      reftype arg1 = stack[--sp];
      i32 arg0 = stack[--sp] as int;
      throw 'unimplemented: table_fill';
    }

    /* bytecode implementations */

    final List<ImplFn> dispatch = [
      unreachable,
      nop,
      block,
      loop,
      $if,
      $else,
      end,
      br,
      brIf,
      brTable,
      $return,
      call,
      callIndirect,
      drop,
      select,
      selectT,
      localGet,
      localSet,
      localTee,
      globalGet,
      globalSet,
      tableGet,
      tableSet,
      i32_load,
      i64_load,
      f32_load,
      f64_load,
      i32_load8_s,
      i32_load8_u,
      i32_load16_s,
      i32_load16_u,
      i64_load8_s,
      i64_load8_u,
      i64_load16_s,
      i64_load16_u,
      i64_load32_s,
      i64_load32_u,
      i32_store,
      i64_store,
      f32_store,
      f64_store,
      i32_store8,
      i32_store16,
      i64_store8,
      i64_store16,
      i64_store32,
      memory_size,
      memory_grow,
      i32_const,
      i64_const,
      f32_const,
      f64_const,
      i32_eqz,
      i32_eq,
      i32_ne,
      i32_lt_s,
      i32_lt_u,
      i32_gt_s,
      i32_gt_u,
      i32_le_s,
      i32_le_u,
      i32_ge_s,
      i32_ge_u,
      i64_eqz,
      i64_eq,
      i64_ne,
      i64_lt_s,
      i64_lt_u,
      i64_gt_s,
      i64_gt_u,
      i64_le_s,
      i64_le_u,
      i64_ge_s,
      i64_ge_u,
      f32_eq,
      f32_ne,
      f32_lt,
      f32_gt,
      f32_le,
      f32_ge,
      f64_eq,
      f64_ne,
      f64_lt,
      f64_gt,
      f64_le,
      f64_ge,
      i32_clz,
      i32_ctz,
      i32_popcnt,
      i32_add,
      i32_sub,
      i32_mul,
      i32_div_s,
      i32_div_u,
      i32_rem_s,
      i32_rem_u,
      i32_and,
      i32_or,
      i32_xor,
      i32_shl,
      i32_shr_s,
      i32_shr_u,
      i32_rotl,
      i32_rotr,
      i64_clz,
      i64_ctz,
      i64_popcnt,
      i64_add,
      i64_sub,
      i64_mul,
      i64_div_s,
      i64_div_u,
      i64_rem_s,
      i64_rem_u,
      i64_and,
      i64_or,
      i64_xor,
      i64_shl,
      i64_shr_s,
      i64_shr_u,
      i64_rotl,
      i64_rotr,
      f32_abs,
      f32_neg,
      f32_ceil,
      f32_floor,
      f32_trunc,
      f32_nearest,
      f32_sqrt,
      f32_add,
      f32_sub,
      f32_mul,
      f32_div,
      f32_min,
      f32_max,
      f32_copysign,
      f64_abs,
      f64_neg,
      f64_ceil,
      f64_foor,
      f64_trunc,
      f64_nearest,
      f64_sqrt,
      f64_add,
      f64_sub,
      f64_mul,
      f64_div,
      f64_min,
      f64_max,
      f64_copysign,
      i32_wrap_i64,
      i32_trunc_f32_s,
      i32_trunc_f32_u,
      i32_trunc_f64_s,
      i32_trunc_f64_u,
      i64_extend_i32_s,
      i64_extend_i32_u,
      i64_trunc_f32_s,
      i64_trunc_f32_u,
      i64_trunc_f64_s,
      i64_trunc_f64_u,
      f32_convert_i32_s,
      f32_convert_i32_u,
      f32_convert_i64_s,
      f32_convert_i64_u,
      f32_demote_f64,
      f64_convert_i32_s,
      f64_convert_i32_u,
      f64_convert_i64_s,
      f64_convert_i64_u,
      f64_promote_f32,
      i32_reinterpret_f32,
      i64_reinterpret_f64,
      f32_reinterpret_i32,
      f64_reinterpret_i64,
      i32_extend8_s,
      i32_extend16_s,
      i64_extend8_s,
      i64_extend16_s,
      i64_extend32_s,
      refNull,
      ref_is_null,
      refFunc,
      i32_trunc_sat_f32_s,
      i32_trunc_sat_f32_u,
      i32_trunc_sat_f64_s,
      i32_trunc_sat_f64_u,
      i64_trunc_sat_f32_s,
      i64_trunc_sat_f32_u,
      i64_trunc_sat_f64_s,
      i64_trunc_sat_f64_u,
      memory_init,
      data_drop,
      memory_copy,
      memory_fill,
      table_init,
      elem_drop,
      table_copy,
      table_grow,
      table_size,
      table_fill,
    ];

    final len = bytecodes.length;

    while (pc < len) {
      final code = bytecodes[pc++];

      // print('[pc $pc] ${code.name} (sp: $sp)');

      // Call the implementation method for the given bytecode.
      final impl = dispatch[code.code];
      impl(code);
    }

    // todo: use the fn return type
    if (sp > 0) {
      return stack[--sp];
    } else {
      return null;
    }
  }
}

const int _mask32 = 0xFFFFFFFF;
const int _bit31 = 0x80000000;
const int _maskTop32 = 0xFFFFFFFF00000000;

class Trap implements Exception {
  final String message;

  Trap(this.message);

  @override
  String toString() => message;
}

const List<int> _popcntTable = <int>[
  0, 1, 1, 2, // 00000000, 00000001, 00000010, 00000011
  1, 2, 2, 3, // 00000100, 00000101, 00000110, 00000111
  1, 2, 2, 3, // 00001000, 00001001, 00001010, 00001011
  2, 3, 3, 4, // 00001100, 00001101, 00001110, 00001111
  1, 2, 2, 3, // 00010000, 00010001, 00010010, 00010011
  2, 3, 3, 4, // 00010100, 00010101, 00010110, 00010111
  2, 3, 3, 4, // 00011000, 00011001, 00011010, 00011011
  3, 4, 4, 5, // 00011100, 00011101, 00011110, 00011111
  1, 2, 2, 3, // 00100000, 00100001, 00100010, 00100011
  2, 3, 3, 4, // 00100100, 00100101, 00100110, 00100111
  2, 3, 3, 4, // 00101000, 00101001, 00101010, 00101011
  3, 4, 4, 5, // 00101100, 00101101, 00101110, 00101111
  2, 3, 3, 4, // 00110000, 00110001, 00110010, 00110011
  3, 4, 4, 5, // 00110100, 00110101, 00110110, 00110111
  3, 4, 4, 5, // 00111000, 00111001, 00111010, 00111011
  4, 5, 5, 6, // 00111100, 00111101, 00111110, 00111111
  1, 2, 2, 3, // 01000000, 01000001, 01000010, 01000011
  2, 3, 3, 4, // 01000100, 01000101, 01000110, 01000111
  2, 3, 3, 4, // 01001000, 01001001, 01001010, 01001011
  3, 4, 4, 5, // 01001100, 01001101, 01001110, 01001111
  2, 3, 3, 4, // 01010000, 01010001, 01010010, 01010011
  3, 4, 4, 5, // 01010100, 01010101, 01010110, 01010111
  3, 4, 4, 5, // 01011000, 01011001, 01011010, 01011011
  4, 5, 5, 6, // 01011100, 01011101, 01011110, 01011111
  2, 3, 3, 4, // 01100000, 01100001, 01100010, 01100011
  3, 4, 4, 5, // 01100100, 01100101, 01100110, 01100111
  3, 4, 4, 5, // 01101000, 01101001, 01101010, 01101011
  4, 5, 5, 6, // 01101100, 01101101, 01101110, 01101111
  3, 4, 4, 5, // 01110000, 01110001, 01110010, 01110011
  4, 5, 5, 6, // 01110100, 01110101, 01110110, 01110111
  4, 5, 5, 6, // 01111000, 01111001, 01111010, 01111011
  5, 6, 6, 7, // 01111100, 01111101, 01111110, 01111111
  1, 2, 2, 3, // 10000000, 10000001, 10000010, 10000011
  2, 3, 3, 4, // 10000100, 10000101, 10000110, 10000111
  2, 3, 3, 4, // 10001000, 10001001, 10001010, 10001011
  3, 4, 4, 5, // 10001100, 10001101, 10001110, 10001111
  2, 3, 3, 4, // 10010000, 10010001, 10010010, 10010011
  3, 4, 4, 5, // 10010100, 10010101, 10010110, 10010111
  3, 4, 4, 5, // 10011000, 10011001, 10011010, 10011011
  4, 5, 5, 6, // 10011100, 10011101, 10011110, 10011111
  2, 3, 3, 4, // 10100000, 10100001, 10100010, 10100011
  3, 4, 4, 5, // 10100100, 10100101, 10100110, 10100111
  3, 4, 4, 5, // 10101000, 10101001, 10101010, 10101011
  4, 5, 5, 6, // 10101100, 10101101, 10101110, 10101111
  3, 4, 4, 5, // 10110000, 10110001, 10110010, 10110011
  4, 5, 5, 6, // 10110100, 10110101, 10110110, 10110111
  4, 5, 5, 6, // 10111000, 10111001, 10111010, 10111011
  5, 6, 6, 7, // 10111100, 10111101, 10111110, 10111111
  2, 3, 3, 4, // 11000000, 11000001, 11000010, 11000011
  3, 4, 4, 5, // 11000100, 11000101, 11000110, 11000111
  3, 4, 4, 5, // 11001000, 11001001, 11001010, 11001011
  4, 5, 5, 6, // 11001100, 11001101, 11001110, 11001111
  3, 4, 4, 5, // 11010000, 11010001, 11010010, 11010011
  4, 5, 5, 6, // 11010100, 11010101, 11010110, 11010111
  4, 5, 5, 6, // 11011000, 11011001, 11011010, 11011011
  5, 6, 6, 7, // 11011100, 11011101, 11011110, 11011111
  3, 4, 4, 5, // 11100000, 11100001, 11100010, 11100011
  4, 5, 5, 6, // 11100100, 11100101, 11100110, 11100111
  4, 5, 5, 6, // 11101000, 11101001, 11101010, 11101011
  5, 6, 6, 7, // 11101100, 11101101, 11101110, 11101111
  4, 5, 5, 6, // 11110000, 11110001, 11110010, 11110011
  5, 6, 6, 7, // 11110100, 11110101, 11110110, 11110111
  5, 6, 6, 7, // 11111000, 11111001, 11111010, 11111011
  6, 7, 7, 8, // 11111100, 11111101, 11111110, 11111111
];
