// ignore_for_file: unused_local_variable
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types

import 'bytecode.dart';
import 'compile.dart';
import 'format.dart';
import 'types.dart';

typedef ImplFn = void Function(Bytecode code);
typedef reftype = Object?; // todo:

class ExecutionContect {
  final Module module;

  final List<ImplFn> dispatch = [];

  ExecutionContect(this.module) {
    dispatch.addAll([
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
    ]);
  }

  Object? execute(DefinedFunction fn, [List<Object> args = const []]) {
    // todo: if not module inited (memory, ...), then init

    if (!fn.compiled) {
      fn.compile();
    }

    this.fn = fn;

    final paramTypes = fn.functionType!.parameterTypes;

    if (args.length != paramTypes.length) {
      throw StateError(
        'wrong number of args: expected '
        '${paramTypes.length}, got ${args.length}',
      );
    }

    final locals = <Object?>[];
    locals.addAll(args);
    for (final local in fn.locals) {
      locals.add(local.defaultValue);
    }

    this.locals.clear();
    this.locals.addAll(locals);

    // todo: we need to know the stack height per function, ...

    return _execute();
  }

  late final DefinedFunction fn;
  final List<Object?> locals = [];
  final List<Object?> stack = List<Object?>.filled(100, null);
  int sp = 0;
  int pc = 0;

  Object? _execute() {
    // todo: stack height
    // final stack = List<Object?>.filled(100, null);
    // int sp = 0;

    final bytecodes = fn.bytecodes!;

    final len = bytecodes.length;

    while (pc < len) {
      final code = bytecodes[pc++];

      print('$code pc: $pc sp: $sp');

      // Call the implementation method for the given bytecode.
      dispatch[code.code](code);
    }

    // todo: use the fn return type
    if (sp > 0) {
      return stack[--sp];
    } else {
      return null;
    }

    // todo: do we ever reach here?
    // return null;
  }

  // opcode implementations

  void unreachable(Bytecode code) {
    throw 'unimplemented: unreachable';
  }

  void nop(Bytecode code) {
    throw 'unimplemented: nop';
  }

  void block(Bytecode code) {
    throw 'unimplemented: block';
  }

  void loop(Bytecode code) {
    // nothing to do
  }

  void $if(Bytecode code) {
    i32 arg0 = stack[--sp] as int;
    if (arg0 == 0) {
      // Execute the else block if it exists.
      sp = code.elseStart != null ? code.elseStart! : code.endFollow!;
    }
  }

  void $else(Bytecode code) {
    // skip the else block
    sp = code.endFollow!;
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

    pc = fn.bytecodes!.length;
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
    stack[sp++] = locals[code.immediate_0_u64];
  }

  void localSet(Bytecode code) {
    Object? arg0 = stack[--sp];
    locals[code.immediate_0_u64] = arg0;
  }

  void localTee(Bytecode code) {
    Object? arg0 = stack[sp - 1];
    locals[code.immediate_0_u64] = arg0;
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
    stack[sp++] = code.immediate_0_u64;
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
    throw 'unimplemented: i32_eqz';
  }

  void i32_eq(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_eq';
  }

  void i32_ne(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_ne';
  }

  void i32_lt_s(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_lt_s';
  }

  void i32_lt_u(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_lt_u';
  }

  void i32_gt_s(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    stack[sp++] = arg0 > arg1 ? 1 : 0;
  }

  void i32_gt_u(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_gt_u';
  }

  void i32_le_s(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_le_s';
  }

  void i32_le_u(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_le_u';
  }

  void i32_ge_s(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_ge_s';
  }

  void i32_ge_u(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_ge_u';
  }

  void i64_eqz(Bytecode code) {
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_eqz';
  }

  void i64_eq(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_eq';
  }

  void i64_ne(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_ne';
  }

  void i64_lt_s(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_lt_s';
  }

  void i64_lt_u(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_lt_u';
  }

  void i64_gt_s(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_gt_s';
  }

  void i64_gt_u(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_gt_u';
  }

  void i64_le_s(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_le_s';
  }

  void i64_le_u(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_le_u';
  }

  void i64_ge_s(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_ge_s';
  }

  void i64_ge_u(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_ge_u';
  }

  void f32_eq(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_eq';
  }

  void f32_ne(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_ne';
  }

  void f32_lt(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_lt';
  }

  void f32_gt(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_gt';
  }

  void f32_le(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_le';
  }

  void f32_ge(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_ge';
  }

  void f64_eq(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_eq';
  }

  void f64_ne(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_ne';
  }

  void f64_lt(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_lt';
  }

  void f64_gt(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_gt';
  }

  void f64_le(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_le';
  }

  void f64_ge(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_ge';
  }

  void i32_clz(Bytecode code) {
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_clz';
  }

  void i32_ctz(Bytecode code) {
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_ctz';
  }

  void i32_popcnt(Bytecode code) {
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_popcnt';
  }

  void i32_add(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    final result = arg0 + arg1;
    stack[sp++] =
        (result & _bit31) != 0 ? result | _maskTop32 : result & _mask32;
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
    throw 'unimplemented: i32_mul';
  }

  void i32_div_s(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_div_s';
  }

  void i32_div_u(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_div_u';
  }

  void i32_rem_s(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_rem_s';
  }

  void i32_rem_u(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_rem_u';
  }

  void i32_and(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_and';
  }

  void i32_or(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_or';
  }

  void i32_xor(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_xor';
  }

  void i32_shl(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_shl';
  }

  void i32_shr_s(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_shr_s';
  }

  void i32_shr_u(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_shr_u';
  }

  void i32_rotl(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_rotl';
  }

  void i32_rotr(Bytecode code) {
    i32 arg1 = stack[--sp] as int;
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_rotr';
  }

  void i64_clz(Bytecode code) {
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_clz';
  }

  void i64_ctz(Bytecode code) {
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_ctz';
  }

  void i64_popcnt(Bytecode code) {
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_popcnt';
  }

  void i64_add(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_add';
  }

  void i64_sub(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_sub';
  }

  void i64_mul(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_mul';
  }

  void i64_div_s(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_div_s';
  }

  void i64_div_u(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_div_u';
  }

  void i64_rem_s(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_rem_s';
  }

  void i64_rem_u(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_rem_u';
  }

  void i64_and(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_and';
  }

  void i64_or(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_or';
  }

  void i64_xor(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_xor';
  }

  void i64_shl(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_shl';
  }

  void i64_shr_s(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_shr_s';
  }

  void i64_shr_u(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_shr_u';
  }

  void i64_rotl(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_rotl';
  }

  void i64_rotr(Bytecode code) {
    i64 arg1 = stack[--sp] as int;
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_rotr';
  }

  void f32_abs(Bytecode code) {
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_abs';
  }

  void f32_neg(Bytecode code) {
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_neg';
  }

  void f32_ceil(Bytecode code) {
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_ceil';
  }

  void f32_floor(Bytecode code) {
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_floor';
  }

  void f32_trunc(Bytecode code) {
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_trunc';
  }

  void f32_nearest(Bytecode code) {
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_nearest';
  }

  void f32_sqrt(Bytecode code) {
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_sqrt';
  }

  void f32_add(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_add';
  }

  void f32_sub(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_sub';
  }

  void f32_mul(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_mul';
  }

  void f32_div(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_div';
  }

  void f32_min(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_min';
  }

  void f32_max(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_max';
  }

  void f32_copysign(Bytecode code) {
    f32 arg1 = stack[--sp] as double;
    f32 arg0 = stack[--sp] as double;
    throw 'unimplemented: f32_copysign';
  }

  void f64_abs(Bytecode code) {
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_abs';
  }

  void f64_neg(Bytecode code) {
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_neg';
  }

  void f64_ceil(Bytecode code) {
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_ceil';
  }

  void f64_foor(Bytecode code) {
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_foor';
  }

  void f64_trunc(Bytecode code) {
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_trunc';
  }

  void f64_nearest(Bytecode code) {
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_nearest';
  }

  void f64_sqrt(Bytecode code) {
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_sqrt';
  }

  void f64_add(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_add';
  }

  void f64_sub(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_sub';
  }

  void f64_mul(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_mul';
  }

  void f64_div(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_div';
  }

  void f64_min(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_min';
  }

  void f64_max(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_max';
  }

  void f64_copysign(Bytecode code) {
    f64 arg1 = stack[--sp] as double;
    f64 arg0 = stack[--sp] as double;
    throw 'unimplemented: f64_copysign';
  }

  void i32_wrap_i64(Bytecode code) {
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_wrap_i64';
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
    throw 'unimplemented: i32_extend8_s';
  }

  void i32_extend16_s(Bytecode code) {
    i32 arg0 = stack[--sp] as int;
    throw 'unimplemented: i32_extend16_s';
  }

  void i64_extend8_s(Bytecode code) {
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_extend8_s';
  }

  void i64_extend16_s(Bytecode code) {
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_extend16_s';
  }

  void i64_extend32_s(Bytecode code) {
    i64 arg0 = stack[--sp] as int;
    throw 'unimplemented: i64_extend32_s';
  }

  void refNull(Bytecode code) {
    throw 'unimplemented: refNull';
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
}

const int _mask32 = 0xFFFFFFFF;
const int _bit31 = 0x80000000;
const int _maskTop32 = 0xFFFFFFFF00000000;
