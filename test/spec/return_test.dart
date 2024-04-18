// Generated from spec/test/core/return.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('return.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/return/return.0.wasm'));
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
    returns('nullary_0', () => m.$('nullary', []), null /*void*/);
    returns('unary_0', () => m.$('unary', []), $f64('4008000000000000'));
    returns('as_func_first_0', () => m.$('as-func-first', []), 1);
    returns('as_func_mid_0', () => m.$('as-func-mid', []), 2);
    returns('as_func_last_0', () => m.$('as-func-last', []), null /*void*/);
    returns('as_func_value_0', () => m.$('as-func-value', []), 3);
    returns('as_block_first_0', () => m.$('as-block-first', []), null /*void*/);
    returns('as_block_mid_0', () => m.$('as-block-mid', []), null /*void*/);
    returns('as_block_last_0', () => m.$('as-block-last', []), null /*void*/);
    returns('as_block_value_0', () => m.$('as-block-value', []), 2);
    returns('as_loop_first_0', () => m.$('as-loop-first', []), 3);
    returns('as_loop_mid_0', () => m.$('as-loop-mid', []), 4);
    returns('as_loop_last_0', () => m.$('as-loop-last', []), 5);
    returns('as_br_value_0', () => m.$('as-br-value', []), 9);
    returns('as_br_if_cond_0', () => m.$('as-br_if-cond', []), null /*void*/);
    returns('as_br_if_value_0', () => m.$('as-br_if-value', []), 8);
    returns('as_br_if_value_cond_0', () => m.$('as-br_if-value-cond', []), 9);
    returns('as_br_table_index_0', () => m.$('as-br_table-index', []), 9);
    returns('as_br_table_value_0', () => m.$('as-br_table-value', []), 0xA);
    returns('as_br_table_value_index_0',
        () => m.$('as-br_table-value-index', []), 0xB);
    returns('as_return_value_0', () => m.$('as-return-value', []), 7);
    returns('as_if_cond_0', () => m.$('as-if-cond', []), 2);
    returns('as_if_then_0', () => m.$('as-if-then', [1, 6]), 3);
    returns('as_if_then_1', () => m.$('as-if-then', [0, 6]), 6);
    returns('as_if_else_0', () => m.$('as-if-else', [0, 6]), 4);
    returns('as_if_else_1', () => m.$('as-if-else', [1, 6]), 6);
    returns('as_select_first_0', () => m.$('as-select-first', [0, 6]), 5);
    returns('as_select_first_1', () => m.$('as-select-first', [1, 6]), 5);
    returns('as_select_second_0', () => m.$('as-select-second', [0, 6]), 6);
    returns('as_select_second_1', () => m.$('as-select-second', [1, 6]), 6);
    returns('as_select_cond_0', () => m.$('as-select-cond', []), 7);
    returns('as_call_first_0', () => m.$('as-call-first', []), 0xC);
    returns('as_call_mid_0', () => m.$('as-call-mid', []), 0xD);
    returns('as_call_last_0', () => m.$('as-call-last', []), 0xE);
    returns('as_call_indirect_func_0', () => m.$('as-call_indirect-func', []),
        0x14);
    returns('as_call_indirect_first_0', () => m.$('as-call_indirect-first', []),
        0x15);
    returns(
        'as_call_indirect_mid_0', () => m.$('as-call_indirect-mid', []), 0x16);
    returns('as_call_indirect_last_0', () => m.$('as-call_indirect-last', []),
        0x17);
    returns('as_local_set_value_0', () => m.$('as-local.set-value', []), 0x11);
    returns('as_local_tee_value_0', () => m.$('as-local.tee-value', []), 1);
    returns('as_global_set_value_0', () => m.$('as-global.set-value', []), 1);
    returns('as_load_address_0', () => m.$('as-load-address', []),
        $f32('3FD9999A'));
    returns('as_loadN_address_0', () => m.$('as-loadN-address', []), 0x1E);
    returns('as_store_address_0', () => m.$('as-store-address', []), 0x1E);
    returns('as_store_value_0', () => m.$('as-store-value', []), 0x1F);
    returns('as_storeN_address_0', () => m.$('as-storeN-address', []), 0x20);
    returns('as_storeN_value_0', () => m.$('as-storeN-value', []), 0x21);
    returns('as_unary_operand_0', () => m.$('as-unary-operand', []),
        $f32('4059999A'));
    returns('as_binary_left_0', () => m.$('as-binary-left', []), 3);
    returns('as_binary_right_0', () => m.$('as-binary-right', []), 0x2D);
    returns('as_test_operand_0', () => m.$('as-test-operand', []), 0x2C);
    returns('as_compare_left_0', () => m.$('as-compare-left', []), 0x2B);
    returns('as_compare_right_0', () => m.$('as-compare-right', []), 0x2A);
    returns('as_convert_operand_0', () => m.$('as-convert-operand', []), 0x29);
    returns(
        'as_memory_grow_size_0', () => m.$('as-memory.grow-size', []), 0x28);
  });

  // assertInvalid('invalid return.1.wasm', 'return/return.1.wasm', 'type mismatch');
  // assertInvalid('invalid return.2.wasm', 'return/return.2.wasm', 'type mismatch');
  // assertInvalid('invalid return.3.wasm', 'return/return.3.wasm', 'type mismatch');
  // assertInvalid('invalid return.4.wasm', 'return/return.4.wasm', 'type mismatch');
  // assertInvalid('invalid return.5.wasm', 'return/return.5.wasm', 'type mismatch');
  // assertInvalid('invalid return.6.wasm', 'return/return.6.wasm', 'type mismatch');
  // assertInvalid('invalid return.7.wasm', 'return/return.7.wasm', 'type mismatch');
  // assertInvalid('invalid return.8.wasm', 'return/return.8.wasm', 'type mismatch');
  // assertInvalid('invalid return.9.wasm', 'return/return.9.wasm', 'type mismatch');
  // assertInvalid('invalid return.10.wasm', 'return/return.10.wasm', 'type mismatch');
  // assertInvalid('invalid return.11.wasm', 'return/return.11.wasm', 'type mismatch');
  // assertInvalid('invalid return.12.wasm', 'return/return.12.wasm', 'type mismatch');
  // assertInvalid('invalid return.13.wasm', 'return/return.13.wasm', 'type mismatch');
  // assertInvalid('invalid return.14.wasm', 'return/return.14.wasm', 'type mismatch');
  // assertInvalid('invalid return.15.wasm', 'return/return.15.wasm', 'type mismatch');
  // assertInvalid('invalid return.16.wasm', 'return/return.16.wasm', 'type mismatch');
  // assertInvalid('invalid return.17.wasm', 'return/return.17.wasm', 'type mismatch');
  // assertInvalid('invalid return.18.wasm', 'return/return.18.wasm', 'type mismatch');
  // assertInvalid('invalid return.19.wasm', 'return/return.19.wasm', 'type mismatch');
  // assertInvalid('invalid return.20.wasm', 'return/return.20.wasm', 'type mismatch');
}
