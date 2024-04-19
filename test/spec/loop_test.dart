// Generated from spec/test/core/loop.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('loop', () {
    group('loop.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/loop/loop.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('empty_0', () => m.$('empty', []), null /*void*/);
      returns('singular_0', () => m.$('singular', []), 7);
      returns('multi_0', () => m.$('multi', []), 8);
      returns('nested_0', () => m.$('nested', []), 9);
      returns('deep_0', () => m.$('deep', []), 0x96);
      returns('as_select_first_0', () => m.$('as-select-first', []), 1);
      returns('as_select_mid_0', () => m.$('as-select-mid', []), 2);
      returns('as_select_last_0', () => m.$('as-select-last', []), 2);
      returns(
          'as_if_condition_0', () => m.$('as-if-condition', []), null /*void*/);
      returns('as_if_then_0', () => m.$('as-if-then', []), 1);
      returns('as_if_else_0', () => m.$('as-if-else', []), 2);
      returns('as_br_if_first_0', () => m.$('as-br_if-first', []), 1);
      returns('as_br_if_last_0', () => m.$('as-br_if-last', []), 2);
      returns('as_br_table_first_0', () => m.$('as-br_table-first', []), 1);
      returns('as_br_table_last_0', () => m.$('as-br_table-last', []), 2);
      returns('as_call_indirect_first_0',
          () => m.$('as-call_indirect-first', []), 1);
      returns(
          'as_call_indirect_mid_0', () => m.$('as-call_indirect-mid', []), 2);
      returns(
          'as_call_indirect_last_0', () => m.$('as-call_indirect-last', []), 1);
      returns(
          'as_store_first_0', () => m.$('as-store-first', []), null /*void*/);
      returns('as_store_last_0', () => m.$('as-store-last', []), null /*void*/);
      returns(
          'as_memory_grow_value_0', () => m.$('as-memory.grow-value', []), 1);
      returns('as_call_value_0', () => m.$('as-call-value', []), 1);
      returns('as_return_value_0', () => m.$('as-return-value', []), 1);
      returns(
          'as_drop_operand_0', () => m.$('as-drop-operand', []), null /*void*/);
      returns('as_br_value_0', () => m.$('as-br-value', []), 1);
      returns('as_local_set_value_0', () => m.$('as-local.set-value', []), 1);
      returns('as_local_tee_value_0', () => m.$('as-local.tee-value', []), 1);
      returns('as_global_set_value_0', () => m.$('as-global.set-value', []), 1);
      returns('as_load_operand_0', () => m.$('as-load-operand', []), 1);
      returns('as_unary_operand_0', () => m.$('as-unary-operand', []), 0);
      returns('as_binary_operand_0', () => m.$('as-binary-operand', []), 0xC);
      returns('as_test_operand_0', () => m.$('as-test-operand', []), 0);
      returns('as_compare_operand_0', () => m.$('as-compare-operand', []), 0);
      returns('as_binary_operands_0', () => m.$('as-binary-operands', []), 0xC);
      returns('as_compare_operands_0', () => m.$('as-compare-operands', []), 0);
      returns('as_mixed_operands_0', () => m.$('as-mixed-operands', []), 0x1B);
      returns('break_bare_0', () => m.$('break-bare', []), 0x13);
      returns('break_value_0', () => m.$('break-value', []), 0x12);
      returns('break_multi_value_0', () => m.$('break-multi-value', []),
          [0x12, $i32('FFFFFFEE'), 0x12]);
      returns('break_repeated_0', () => m.$('break-repeated', []), 0x12);
      returns('break_inner_0', () => m.$('break-inner', []), 0x1F);
      returns('param_0', () => m.$('param', []), 3);
      returns('params_0', () => m.$('params', []), 3);
      returns('params_id_0', () => m.$('params-id', []), 3);
      returns('param_break_0', () => m.$('param-break', []), 0xD);
      returns('params_break_0', () => m.$('params-break', []), 0xC);
      returns('params_id_break_0', () => m.$('params-id-break', []), 3);
      returns('effects_0', () => m.$('effects', []), 1);
      returns('while_0', () => m.$('while', [0]), 1);
      returns('while_1', () => m.$('while', [1]), 1);
      returns('while_2', () => m.$('while', [2]), 2);
      returns('while_3', () => m.$('while', [3]), 6);
      returns('while_4', () => m.$('while', [5]), 0x78);
      returns('while_5', () => m.$('while', [0x14]), $i64('21C3677C82B40000'));
      returns('for_0', () => m.$('for', [0]), 1);
      returns('for_1', () => m.$('for', [1]), 1);
      returns('for_2', () => m.$('for', [2]), 2);
      returns('for_3', () => m.$('for', [3]), 6);
      returns('for_4', () => m.$('for', [5]), 0x78);
      returns('for_5', () => m.$('for', [0x14]), $i64('21C3677C82B40000'));
      returns('nesting_0', () => m.$('nesting', [$f32('0'), $f32('40E00000')]),
          $f32('0'));
      returns('nesting_1', () => m.$('nesting', [$f32('40E00000'), $f32('0')]),
          $f32('0'));
      returns(
          'nesting_2',
          () => m.$('nesting', [$f32('3F800000'), $f32('3F800000')]),
          $f32('3F800000'));
      returns(
          'nesting_3',
          () => m.$('nesting', [$f32('3F800000'), $f32('40000000')]),
          $f32('40000000'));
      returns(
          'nesting_4',
          () => m.$('nesting', [$f32('3F800000'), $f32('40400000')]),
          $f32('40800000'));
      returns(
          'nesting_5',
          () => m.$('nesting', [$f32('3F800000'), $f32('40800000')]),
          $f32('40C00000'));
      returns(
          'nesting_6',
          () => m.$('nesting', [$f32('3F800000'), $f32('42C80000')]),
          $f32('451F6000'));
      returns(
          'nesting_7',
          () => m.$('nesting', [$f32('3F800000'), $f32('42CA0000')]),
          $f32('45229000'));
      returns(
          'nesting_8',
          () => m.$('nesting', [$f32('40000000'), $f32('3F800000')]),
          $f32('3F800000'));
      returns(
          'nesting_9',
          () => m.$('nesting', [$f32('40400000'), $f32('3F800000')]),
          $f32('3F800000'));
      returns(
          'nesting_10',
          () => m.$('nesting', [$f32('41200000'), $f32('3F800000')]),
          $f32('3F800000'));
      returns(
          'nesting_11',
          () => m.$('nesting', [$f32('40000000'), $f32('40000000')]),
          $f32('40400000'));
      returns(
          'nesting_12',
          () => m.$('nesting', [$f32('40000000'), $f32('40400000')]),
          $f32('40800000'));
      returns(
          'nesting_13',
          () => m.$('nesting', [$f32('40E00000'), $f32('40800000')]),
          $f32('4124F3CF'));
      returns(
          'nesting_14',
          () => m.$('nesting', [$f32('40E00000'), $f32('42C80000')]),
          $f32('4588EC62'));
      returns(
          'nesting_15',
          () => m.$('nesting', [$f32('40E00000'), $f32('42CA0000')]),
          $f32('45229000'));
      returns('type_use_0', () => m.$('type-use', []), null /*void*/);
    });

    // assertMalformed('malformed loop.1.wat');
    // assertMalformed('malformed loop.2.wat');
    // assertMalformed('malformed loop.3.wat');
    // assertMalformed('malformed loop.4.wat');
    // assertMalformed('malformed loop.5.wat');
    // assertMalformed('malformed loop.6.wat');
    // assertMalformed('malformed loop.7.wat');
    // assertMalformed('malformed loop.8.wat');
    // assertMalformed('malformed loop.9.wat');
    // assertMalformed('malformed loop.10.wat');
    // assertMalformed('malformed loop.11.wat');
    // assertInvalid('invalid loop.12.wasm', 'loop/loop.12.wasm', 'type mismatch');
    // assertInvalid('invalid loop.13.wasm', 'loop/loop.13.wasm', 'type mismatch');
    // assertInvalid('invalid loop.14.wasm', 'loop/loop.14.wasm', 'type mismatch');
    // assertInvalid('invalid loop.15.wasm', 'loop/loop.15.wasm', 'type mismatch');
    // assertInvalid('invalid loop.16.wasm', 'loop/loop.16.wasm', 'type mismatch');
    // assertInvalid('invalid loop.17.wasm', 'loop/loop.17.wasm', 'type mismatch');
    // assertInvalid('invalid loop.18.wasm', 'loop/loop.18.wasm', 'type mismatch');
    // assertInvalid('invalid loop.19.wasm', 'loop/loop.19.wasm', 'type mismatch');
    // assertInvalid('invalid loop.20.wasm', 'loop/loop.20.wasm', 'type mismatch');
    // assertInvalid('invalid loop.21.wasm', 'loop/loop.21.wasm', 'type mismatch');
    // assertInvalid('invalid loop.22.wasm', 'loop/loop.22.wasm', 'type mismatch');
    // assertInvalid('invalid loop.23.wasm', 'loop/loop.23.wasm', 'type mismatch');
    // assertInvalid('invalid loop.24.wasm', 'loop/loop.24.wasm', 'type mismatch');
    // assertInvalid('invalid loop.25.wasm', 'loop/loop.25.wasm', 'type mismatch');
    // assertInvalid('invalid loop.26.wasm', 'loop/loop.26.wasm', 'type mismatch');
    // assertInvalid('invalid loop.27.wasm', 'loop/loop.27.wasm', 'type mismatch');
    // assertInvalid('invalid loop.28.wasm', 'loop/loop.28.wasm', 'type mismatch');
    // assertInvalid('invalid loop.29.wasm', 'loop/loop.29.wasm', 'type mismatch');
    // assertInvalid('invalid loop.30.wasm', 'loop/loop.30.wasm', 'type mismatch');
    // assertInvalid('invalid loop.31.wasm', 'loop/loop.31.wasm', 'type mismatch');
    // assertInvalid('invalid loop.32.wasm', 'loop/loop.32.wasm', 'type mismatch');
    // assertInvalid('invalid loop.33.wasm', 'loop/loop.33.wasm', 'type mismatch');
    // assertInvalid('invalid loop.34.wasm', 'loop/loop.34.wasm', 'type mismatch');
    // assertInvalid('invalid loop.35.wasm', 'loop/loop.35.wasm', 'type mismatch');
    // assertInvalid('invalid loop.36.wasm', 'loop/loop.36.wasm', 'type mismatch');
    // assertInvalid('invalid loop.37.wasm', 'loop/loop.37.wasm', 'type mismatch');
    // assertInvalid('invalid loop.38.wasm', 'loop/loop.38.wasm', 'type mismatch');
    // assertMalformed('malformed loop.39.wat');
    // assertMalformed('malformed loop.40.wat');
    // assertMalformed('malformed loop.41.wat');
    // assertMalformed('malformed loop.42.wat');
  });
}
