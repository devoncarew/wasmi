// Generated from spec/test/core/br_if.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('br_if.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/br_if/br_if.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('type_i32_0', () => m.$('type-i32', []), null /*void*/);
    returns('type_i64_0', () => m.$('type-i64', []), null /*void*/);
    returns('type_f32_0', () => m.$('type-f32', []), null /*void*/);
    returns('type_f64_0', () => m.$('type-f64', []), null /*void*/);
    returns('type_i32_value_0', () => m.$('type-i32-value', []), 1);
    returns('type_i64_value_0', () => m.$('type-i64-value', []), 2);
    returns(
        'type_f32_value_0', () => m.$('type-f32-value', []), $f32('40400000'));
    returns('type_f64_value_0', () => m.$('type-f64-value', []),
        $f64('4010000000000000'));
    returns('as_block_first_0', () => m.$('as-block-first', [0]), 2);
    returns('as_block_first_1', () => m.$('as-block-first', [1]), 3);
    returns('as_block_mid_0', () => m.$('as-block-mid', [0]), 2);
    returns('as_block_mid_1', () => m.$('as-block-mid', [1]), 3);
    returns('as_block_last_0', () => m.$('as-block-last', [0]), null /*void*/);
    returns('as_block_last_1', () => m.$('as-block-last', [1]), null /*void*/);
    returns(
        'as_block_first_value_0', () => m.$('as-block-first-value', [0]), 0xB);
    returns(
        'as_block_first_value_1', () => m.$('as-block-first-value', [1]), 0xA);
    returns('as_block_mid_value_0', () => m.$('as-block-mid-value', [0]), 0x15);
    returns('as_block_mid_value_1', () => m.$('as-block-mid-value', [1]), 0x14);
    returns(
        'as_block_last_value_0', () => m.$('as-block-last-value', [0]), 0xB);
    returns(
        'as_block_last_value_1', () => m.$('as-block-last-value', [1]), 0xB);
    returns('as_loop_first_0', () => m.$('as-loop-first', [0]), 2);
    returns('as_loop_first_1', () => m.$('as-loop-first', [1]), 3);
    returns('as_loop_mid_0', () => m.$('as-loop-mid', [0]), 2);
    returns('as_loop_mid_1', () => m.$('as-loop-mid', [1]), 4);
    returns(
      'as_loop_last_0',
      () => m.$('as-loop-last', [0]),
      null /*void*/,
      skip: 'failed',
    );
    returns(
      'as_loop_last_1',
      () => m.$('as-loop-last', [1]),
      null /*void*/,
      skip: 'failed',
    );
    returns('as_br_value_0', () => m.$('as-br-value', []), 1);
    returns('as_br_if_cond_0', () => m.$('as-br_if-cond', []), null /*void*/);
    returns('as_br_if_value_0', () => m.$('as-br_if-value', []), 1);
    returns('as_br_if_value_cond_0', () => m.$('as-br_if-value-cond', [0]), 2);
    returns('as_br_if_value_cond_1', () => m.$('as-br_if-value-cond', [1]), 1);
    returns('as_br_table_index_0', () => m.$('as-br_table-index', []),
        null /*void*/);
    returns('as_br_table_value_0', () => m.$('as-br_table-value', []), 1);
    returns('as_br_table_value_index_0',
        () => m.$('as-br_table-value-index', []), 1);
    returns('as_return_value_0', () => m.$('as-return-value', []), 1);
    returns('as_if_cond_0', () => m.$('as-if-cond', [0]), 2);
    returns('as_if_cond_1', () => m.$('as-if-cond', [1]), 1);
    returns('as_if_then_0', () => m.$('as-if-then', [0, 0]), null /*void*/);
    returns('as_if_then_1', () => m.$('as-if-then', [4, 0]), null /*void*/);
    returns('as_if_then_2', () => m.$('as-if-then', [0, 1]), null /*void*/);
    returns('as_if_then_3', () => m.$('as-if-then', [4, 1]), null /*void*/);
    returns('as_if_else_0', () => m.$('as-if-else', [0, 0]), null /*void*/);
    returns('as_if_else_1', () => m.$('as-if-else', [3, 0]), null /*void*/);
    returns('as_if_else_2', () => m.$('as-if-else', [0, 1]), null /*void*/);
    returns('as_if_else_3', () => m.$('as-if-else', [3, 1]), null /*void*/);
    returns('as_select_first_0', () => m.$('as-select-first', [0]), 3);
    returns('as_select_first_1', () => m.$('as-select-first', [1]), 3);
    returns('as_select_second_0', () => m.$('as-select-second', [0]), 3);
    returns('as_select_second_1', () => m.$('as-select-second', [1]), 3);
    returns('as_select_cond_0', () => m.$('as-select-cond', []), 3);
    returns('as_call_first_0', () => m.$('as-call-first', []), 0xC);
    returns('as_call_mid_0', () => m.$('as-call-mid', []), 0xD);
    returns('as_call_last_0', () => m.$('as-call-last', []), 0xE);
    returns(
        'as_call_indirect_func_0', () => m.$('as-call_indirect-func', []), 4);
    returns(
        'as_call_indirect_first_0', () => m.$('as-call_indirect-first', []), 4);
    returns('as_call_indirect_mid_0', () => m.$('as-call_indirect-mid', []), 4);
    returns(
        'as_call_indirect_last_0', () => m.$('as-call_indirect-last', []), 4);
    returns('as_local_set_value_0', () => m.$('as-local.set-value', [0]),
        $i32('FFFFFFFF'));
    returns('as_local_set_value_1', () => m.$('as-local.set-value', [1]), 0x11);
    returns('as_local_tee_value_0', () => m.$('as-local.tee-value', [0]),
        $i32('FFFFFFFF'));
    returns('as_local_tee_value_1', () => m.$('as-local.tee-value', [1]), 1);
    returns('as_global_set_value_0', () => m.$('as-global.set-value', [0]),
        $i32('FFFFFFFF'));
    returns('as_global_set_value_1', () => m.$('as-global.set-value', [1]), 1);
    returns('as_load_address_0', () => m.$('as-load-address', []), 1);
    returns('as_loadN_address_0', () => m.$('as-loadN-address', []), 0x1E);
    returns('as_store_address_0', () => m.$('as-store-address', []), 0x1E);
    returns('as_store_value_0', () => m.$('as-store-value', []), 0x1F);
    returns('as_storeN_address_0', () => m.$('as-storeN-address', []), 0x20);
    returns('as_storeN_value_0', () => m.$('as-storeN-value', []), 0x21);
    returns('as_unary_operand_0', () => m.$('as-unary-operand', []),
        $f64('3FF0000000000000'));
    returns('as_binary_left_0', () => m.$('as-binary-left', []), 1);
    returns('as_binary_right_0', () => m.$('as-binary-right', []), 1);
    returns('as_test_operand_0', () => m.$('as-test-operand', []), 0);
    returns('as_compare_left_0', () => m.$('as-compare-left', []), 1);
    returns('as_compare_right_0', () => m.$('as-compare-right', []), 1);
    returns('as_memory_grow_size_0', () => m.$('as-memory.grow-size', []), 1);
    returns('nested_block_value_0', () => m.$('nested-block-value', [0]), 0x15);
    returns('nested_block_value_1', () => m.$('nested-block-value', [1]), 9);
    returns('nested_br_value_0', () => m.$('nested-br-value', [0]), 5);
    returns('nested_br_value_1', () => m.$('nested-br-value', [1]), 9);
    returns('nested_br_if_value_0', () => m.$('nested-br_if-value', [0]), 5);
    returns('nested_br_if_value_1', () => m.$('nested-br_if-value', [1]), 9);
    returns('nested_br_if_value_cond_0',
        () => m.$('nested-br_if-value-cond', [0]), 5);
    returns('nested_br_if_value_cond_1',
        () => m.$('nested-br_if-value-cond', [1]), 9);
    returns(
        'nested_br_table_value_0', () => m.$('nested-br_table-value', [0]), 5);
    returns(
        'nested_br_table_value_1', () => m.$('nested-br_table-value', [1]), 9);
    returns('nested_br_table_value_index_0',
        () => m.$('nested-br_table-value-index', [0]), 5);
    returns('nested_br_table_value_index_1',
        () => m.$('nested-br_table-value-index', [1]), 9);
  });

  // assertInvalid('invalid br_if.1.wasm', 'br_if/br_if.1.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.2.wasm', 'br_if/br_if.2.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.3.wasm', 'br_if/br_if.3.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.4.wasm', 'br_if/br_if.4.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.5.wasm', 'br_if/br_if.5.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.6.wasm', 'br_if/br_if.6.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.7.wasm', 'br_if/br_if.7.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.8.wasm', 'br_if/br_if.8.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.9.wasm', 'br_if/br_if.9.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.10.wasm', 'br_if/br_if.10.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.11.wasm', 'br_if/br_if.11.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.12.wasm', 'br_if/br_if.12.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.13.wasm', 'br_if/br_if.13.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.14.wasm', 'br_if/br_if.14.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.15.wasm', 'br_if/br_if.15.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.16.wasm', 'br_if/br_if.16.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.17.wasm', 'br_if/br_if.17.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.18.wasm', 'br_if/br_if.18.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.19.wasm', 'br_if/br_if.19.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.20.wasm', 'br_if/br_if.20.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.21.wasm', 'br_if/br_if.21.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.22.wasm', 'br_if/br_if.22.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.23.wasm', 'br_if/br_if.23.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.24.wasm', 'br_if/br_if.24.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.25.wasm', 'br_if/br_if.25.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.26.wasm', 'br_if/br_if.26.wasm', 'type mismatch');
  // assertInvalid('invalid br_if.27.wasm', 'br_if/br_if.27.wasm', 'unknown label');
  // assertInvalid('invalid br_if.28.wasm', 'br_if/br_if.28.wasm', 'unknown label');
  // assertInvalid('invalid br_if.29.wasm', 'br_if/br_if.29.wasm', 'unknown label');
}
