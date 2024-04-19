// Generated from spec/test/core/unreachable.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('unreachable', () {
    group('unreachable.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/unreachable/unreachable.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      traps('type_i32_0', () => m.$('type-i32', []), 'unreachable');
      traps('type_i64_0', () => m.$('type-i64', []), 'unreachable');
      traps('type_f32_0', () => m.$('type-f32', []), 'unreachable');
      traps('type_f64_0', () => m.$('type-f64', []), 'unreachable');
      traps('as_func_first_0', () => m.$('as-func-first', []), 'unreachable');
      traps('as_func_mid_0', () => m.$('as-func-mid', []), 'unreachable');
      traps('as_func_last_0', () => m.$('as-func-last', []), 'unreachable');
      traps('as_func_value_0', () => m.$('as-func-value', []), 'unreachable');
      traps('as_block_first_0', () => m.$('as-block-first', []), 'unreachable');
      traps('as_block_mid_0', () => m.$('as-block-mid', []), 'unreachable');
      traps('as_block_last_0', () => m.$('as-block-last', []), 'unreachable');
      traps('as_block_value_0', () => m.$('as-block-value', []), 'unreachable');
      returns('as_block_broke_0', () => m.$('as-block-broke', []), 1);
      traps('as_loop_first_0', () => m.$('as-loop-first', []), 'unreachable');
      traps('as_loop_mid_0', () => m.$('as-loop-mid', []), 'unreachable');
      traps('as_loop_last_0', () => m.$('as-loop-last', []), 'unreachable');
      returns('as_loop_broke_0', () => m.$('as-loop-broke', []), 1);
      traps('as_br_value_0', () => m.$('as-br-value', []), 'unreachable');
      traps('as_br_if_cond_0', () => m.$('as-br_if-cond', []), 'unreachable');
      traps('as_br_if_value_0', () => m.$('as-br_if-value', []), 'unreachable');
      traps('as_br_if_value_cond_0', () => m.$('as-br_if-value-cond', []),
          'unreachable');
      traps('as_br_table_index_0', () => m.$('as-br_table-index', []),
          'unreachable');
      traps('as_br_table_value_0', () => m.$('as-br_table-value', []),
          'unreachable');
      traps('as_br_table_value_2_0', () => m.$('as-br_table-value-2', []),
          'unreachable');
      traps('as_br_table_value_index_0',
          () => m.$('as-br_table-value-index', []), 'unreachable');
      traps('as_br_table_value_and_index_0',
          () => m.$('as-br_table-value-and-index', []), 'unreachable');
      traps(
          'as_return_value_0', () => m.$('as-return-value', []), 'unreachable');
      traps('as_if_cond_0', () => m.$('as-if-cond', []), 'unreachable');
      traps('as_if_then_0', () => m.$('as-if-then', [1, 6]), 'unreachable');
      returns('as_if_then_1', () => m.$('as-if-then', [0, 6]), 6);
      traps('as_if_else_0', () => m.$('as-if-else', [0, 6]), 'unreachable');
      returns('as_if_else_1', () => m.$('as-if-else', [1, 6]), 6);
      traps('as_if_then_no_else_0', () => m.$('as-if-then-no-else', [1, 6]),
          'unreachable');
      returns(
          'as_if_then_no_else_1', () => m.$('as-if-then-no-else', [0, 6]), 6);
      traps('as_select_first_0', () => m.$('as-select-first', [0, 6]),
          'unreachable');
      traps('as_select_first_1', () => m.$('as-select-first', [1, 6]),
          'unreachable');
      traps('as_select_second_0', () => m.$('as-select-second', [0, 6]),
          'unreachable');
      traps('as_select_second_1', () => m.$('as-select-second', [1, 6]),
          'unreachable');
      traps('as_select_cond_0', () => m.$('as-select-cond', []), 'unreachable');
      traps('as_call_first_0', () => m.$('as-call-first', []), 'unreachable');
      traps('as_call_mid_0', () => m.$('as-call-mid', []), 'unreachable');
      traps('as_call_last_0', () => m.$('as-call-last', []), 'unreachable');
      traps('as_call_indirect_func_0', () => m.$('as-call_indirect-func', []),
          'unreachable');
      traps('as_call_indirect_first_0', () => m.$('as-call_indirect-first', []),
          'unreachable');
      traps('as_call_indirect_mid_0', () => m.$('as-call_indirect-mid', []),
          'unreachable');
      traps('as_call_indirect_last_0', () => m.$('as-call_indirect-last', []),
          'unreachable');
      traps('as_local_set_value_0', () => m.$('as-local.set-value', []),
          'unreachable');
      traps('as_local_tee_value_0', () => m.$('as-local.tee-value', []),
          'unreachable');
      traps('as_global_set_value_0', () => m.$('as-global.set-value', []),
          'unreachable');
      traps(
          'as_load_address_0', () => m.$('as-load-address', []), 'unreachable');
      traps('as_loadN_address_0', () => m.$('as-loadN-address', []),
          'unreachable');
      traps('as_store_address_0', () => m.$('as-store-address', []),
          'unreachable');
      traps('as_store_value_0', () => m.$('as-store-value', []), 'unreachable');
      traps('as_storeN_address_0', () => m.$('as-storeN-address', []),
          'unreachable');
      traps(
          'as_storeN_value_0', () => m.$('as-storeN-value', []), 'unreachable');
      traps('as_unary_operand_0', () => m.$('as-unary-operand', []),
          'unreachable');
      traps('as_binary_left_0', () => m.$('as-binary-left', []), 'unreachable');
      traps(
          'as_binary_right_0', () => m.$('as-binary-right', []), 'unreachable');
      traps(
          'as_test_operand_0', () => m.$('as-test-operand', []), 'unreachable');
      traps(
          'as_compare_left_0', () => m.$('as-compare-left', []), 'unreachable');
      traps('as_compare_right_0', () => m.$('as-compare-right', []),
          'unreachable');
      traps('as_convert_operand_0', () => m.$('as-convert-operand', []),
          'unreachable');
      traps('as_memory_grow_size_0', () => m.$('as-memory.grow-size', []),
          'unreachable');
    });
  });
}
