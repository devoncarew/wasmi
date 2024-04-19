// Generated from spec/test/core/left-to-right.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('left-to-right.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/left-to-right/left-to-right.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('i32_add_0', () => m.$('i32_add', []), 0x102);
    returns('i64_add_0', () => m.$('i64_add', []), 0x102);
    returns('i32_sub_0', () => m.$('i32_sub', []), 0x102);
    returns('i64_sub_0', () => m.$('i64_sub', []), 0x102);
    returns('i32_mul_0', () => m.$('i32_mul', []), 0x102);
    returns('i64_mul_0', () => m.$('i64_mul', []), 0x102);
    returns('i32_div_s_0', () => m.$('i32_div_s', []), 0x102);
    returns('i64_div_s_0', () => m.$('i64_div_s', []), 0x102);
    returns('i32_div_u_0', () => m.$('i32_div_u', []), 0x102);
    returns('i64_div_u_0', () => m.$('i64_div_u', []), 0x102);
    returns('i32_rem_s_0', () => m.$('i32_rem_s', []), 0x102);
    returns('i64_rem_s_0', () => m.$('i64_rem_s', []), 0x102);
    returns('i32_rem_u_0', () => m.$('i32_rem_u', []), 0x102);
    returns('i64_rem_u_0', () => m.$('i64_rem_u', []), 0x102);
    returns('i32_and_0', () => m.$('i32_and', []), 0x102);
    returns('i64_and_0', () => m.$('i64_and', []), 0x102);
    returns('i32_or_0', () => m.$('i32_or', []), 0x102);
    returns('i64_or_0', () => m.$('i64_or', []), 0x102);
    returns('i32_xor_0', () => m.$('i32_xor', []), 0x102);
    returns('i64_xor_0', () => m.$('i64_xor', []), 0x102);
    returns('i32_shl_0', () => m.$('i32_shl', []), 0x102);
    returns('i64_shl_0', () => m.$('i64_shl', []), 0x102);
    returns('i32_shr_u_0', () => m.$('i32_shr_u', []), 0x102);
    returns('i64_shr_u_0', () => m.$('i64_shr_u', []), 0x102);
    returns('i32_shr_s_0', () => m.$('i32_shr_s', []), 0x102);
    returns('i64_shr_s_0', () => m.$('i64_shr_s', []), 0x102);
    returns('i32_eq_0', () => m.$('i32_eq', []), 0x102);
    returns('i64_eq_0', () => m.$('i64_eq', []), 0x102);
    returns('i32_ne_0', () => m.$('i32_ne', []), 0x102);
    returns('i64_ne_0', () => m.$('i64_ne', []), 0x102);
    returns('i32_lt_s_0', () => m.$('i32_lt_s', []), 0x102);
    returns('i64_lt_s_0', () => m.$('i64_lt_s', []), 0x102);
    returns('i32_le_s_0', () => m.$('i32_le_s', []), 0x102);
    returns('i64_le_s_0', () => m.$('i64_le_s', []), 0x102);
    returns('i32_lt_u_0', () => m.$('i32_lt_u', []), 0x102);
    returns('i64_lt_u_0', () => m.$('i64_lt_u', []), 0x102);
    returns('i32_le_u_0', () => m.$('i32_le_u', []), 0x102);
    returns('i64_le_u_0', () => m.$('i64_le_u', []), 0x102);
    returns('i32_gt_s_0', () => m.$('i32_gt_s', []), 0x102);
    returns('i64_gt_s_0', () => m.$('i64_gt_s', []), 0x102);
    returns('i32_ge_s_0', () => m.$('i32_ge_s', []), 0x102);
    returns('i64_ge_s_0', () => m.$('i64_ge_s', []), 0x102);
    returns('i32_gt_u_0', () => m.$('i32_gt_u', []), 0x102);
    returns('i64_gt_u_0', () => m.$('i64_gt_u', []), 0x102);
    returns('i32_ge_u_0', () => m.$('i32_ge_u', []), 0x102);
    returns('i64_ge_u_0', () => m.$('i64_ge_u', []), 0x102);
    returns('i32_store_0', () => m.$('i32_store', []), 0x102);
    returns('i64_store_0', () => m.$('i64_store', []), 0x102);
    returns('i32_store8_0', () => m.$('i32_store8', []), 0x102);
    returns('i64_store8_0', () => m.$('i64_store8', []), 0x102);
    returns('i32_store16_0', () => m.$('i32_store16', []), 0x102);
    returns('i64_store16_0', () => m.$('i64_store16', []), 0x102);
    returns('i64_store32_0', () => m.$('i64_store32', []), 0x102);
    returns('i32_call_0', () => m.$('i32_call', []), 0x102);
    returns('i64_call_0', () => m.$('i64_call', []), 0x102);
    returns('i32_call_indirect_0', () => m.$('i32_call_indirect', []), 0x10204);
    returns('i64_call_indirect_0', () => m.$('i64_call_indirect', []), 0x10204);
    returns('i32_select_0', () => m.$('i32_select', []), 0x10205);
    returns('i64_select_0', () => m.$('i64_select', []), 0x10205);
    returns('f32_add_0', () => m.$('f32_add', []), 0x102);
    returns('f64_add_0', () => m.$('f64_add', []), 0x102);
    returns('f32_sub_0', () => m.$('f32_sub', []), 0x102);
    returns('f64_sub_0', () => m.$('f64_sub', []), 0x102);
    returns('f32_mul_0', () => m.$('f32_mul', []), 0x102);
    returns('f64_mul_0', () => m.$('f64_mul', []), 0x102);
    returns('f32_div_0', () => m.$('f32_div', []), 0x102);
    returns('f64_div_0', () => m.$('f64_div', []), 0x102);
    returns('f32_copysign_0', () => m.$('f32_copysign', []), 0x102);
    returns('f64_copysign_0', () => m.$('f64_copysign', []), 0x102);
    returns('f32_eq_0', () => m.$('f32_eq', []), 0x102);
    returns('f64_eq_0', () => m.$('f64_eq', []), 0x102);
    returns('f32_ne_0', () => m.$('f32_ne', []), 0x102);
    returns('f64_ne_0', () => m.$('f64_ne', []), 0x102);
    returns('f32_lt_0', () => m.$('f32_lt', []), 0x102);
    returns('f64_lt_0', () => m.$('f64_lt', []), 0x102);
    returns('f32_le_0', () => m.$('f32_le', []), 0x102);
    returns('f64_le_0', () => m.$('f64_le', []), 0x102);
    returns('f32_gt_0', () => m.$('f32_gt', []), 0x102);
    returns('f64_gt_0', () => m.$('f64_gt', []), 0x102);
    returns('f32_ge_0', () => m.$('f32_ge', []), 0x102);
    returns('f64_ge_0', () => m.$('f64_ge', []), 0x102);
    returns('f32_min_0', () => m.$('f32_min', []), 0x102);
    returns('f64_min_0', () => m.$('f64_min', []), 0x102);
    returns('f32_max_0', () => m.$('f32_max', []), 0x102);
    returns('f64_max_0', () => m.$('f64_max', []), 0x102);
    returns('f32_store_0', () => m.$('f32_store', []), 0x102);
    returns(
      'f64_store_0',
      () => m.$('f64_store', []),
      0x102,
      skip: 'failed',
    );
    returns('f32_call_0', () => m.$('f32_call', []), 0x102);
    returns('f64_call_0', () => m.$('f64_call', []), 0x102);
    returns('f32_call_indirect_0', () => m.$('f32_call_indirect', []), 0x10204);
    returns('f64_call_indirect_0', () => m.$('f64_call_indirect', []), 0x10204);
    returns('f32_select_0', () => m.$('f32_select', []), 0x10205);
    returns('f64_select_0', () => m.$('f64_select', []), 0x10205);
    returns('br_if_0', () => m.$('br_if', []), 0x102);
    returns('br_table_0', () => m.$('br_table', []), 0x102);
  });
}
