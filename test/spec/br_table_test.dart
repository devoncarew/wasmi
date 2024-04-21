// Generated from spec/test/core/br_table.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('br_table', () {
    group('br_table.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def =
            ModuleDefinition.parse(File('test/spec/br_table/br_table.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('type_i32_0', () => m.$('type-i32', []), null /*void*/);
      returns('type_i64_0', () => m.$('type-i64', []), null /*void*/);
      returns('type_f32_0', () => m.$('type-f32', []), null /*void*/);
      returns('type_f64_0', () => m.$('type-f64', []), null /*void*/);
      returns('type_i32_value_0', () => m.$('type-i32-value', []), 1);
      returns('type_i64_value_0', () => m.$('type-i64-value', []), 2);
      returns('type_f32_value_0', () => m.$('type-f32-value', []),
          $f32('40400000'));
      returns('type_f64_value_0', () => m.$('type-f64-value', []),
          $f64('4010000000000000'));
      returns('empty_0', () => m.$('empty', [0]), 0x16);
      returns('empty_1', () => m.$('empty', [1]), 0x16);
      returns('empty_2', () => m.$('empty', [0xB]), 0x16);
      returns('empty_3', () => m.$('empty', [$i32('FFFFFFFF')]), 0x16);
      returns('empty_4', () => m.$('empty', [$i32('FFFFFF9C')]), 0x16);
      returns('empty_5', () => m.$('empty', [$i32('FFFFFFFF')]), 0x16);
      returns('empty_value_0', () => m.$('empty-value', [0]), 0x21);
      returns('empty_value_1', () => m.$('empty-value', [1]), 0x21);
      returns('empty_value_2', () => m.$('empty-value', [0xB]), 0x21);
      returns(
          'empty_value_3', () => m.$('empty-value', [$i32('FFFFFFFF')]), 0x21);
      returns(
          'empty_value_4', () => m.$('empty-value', [$i32('FFFFFF9C')]), 0x21);
      returns(
          'empty_value_5', () => m.$('empty-value', [$i32('FFFFFFFF')]), 0x21);
      returns('singleton_0', () => m.$('singleton', [0]), 0x16);
      returns('singleton_1', () => m.$('singleton', [1]), 0x14);
      returns('singleton_2', () => m.$('singleton', [0xB]), 0x14);
      returns('singleton_3', () => m.$('singleton', [$i32('FFFFFFFF')]), 0x14);
      returns('singleton_4', () => m.$('singleton', [$i32('FFFFFF9C')]), 0x14);
      returns('singleton_5', () => m.$('singleton', [$i32('FFFFFFFF')]), 0x14);
      returns('singleton_value_0', () => m.$('singleton-value', [0]), 0x20);
      returns('singleton_value_1', () => m.$('singleton-value', [1]), 0x21);
      returns('singleton_value_2', () => m.$('singleton-value', [0xB]), 0x21);
      returns('singleton_value_3',
          () => m.$('singleton-value', [$i32('FFFFFFFF')]), 0x21);
      returns('singleton_value_4',
          () => m.$('singleton-value', [$i32('FFFFFF9C')]), 0x21);
      returns('singleton_value_5',
          () => m.$('singleton-value', [$i32('FFFFFFFF')]), 0x21);
      returns('multiple_0', () => m.$('multiple', [0]), 0x67);
      returns('multiple_1', () => m.$('multiple', [1]), 0x66);
      returns('multiple_2', () => m.$('multiple', [2]), 0x65);
      returns('multiple_3', () => m.$('multiple', [3]), 0x64);
      returns('multiple_4', () => m.$('multiple', [4]), 0x68);
      returns('multiple_5', () => m.$('multiple', [5]), 0x68);
      returns('multiple_6', () => m.$('multiple', [6]), 0x68);
      returns('multiple_7', () => m.$('multiple', [0xA]), 0x68);
      returns('multiple_8', () => m.$('multiple', [$i32('FFFFFFFF')]), 0x68);
      returns('multiple_9', () => m.$('multiple', [$i32('FFFFFFFF')]), 0x68);
      returns('multiple_value_0', () => m.$('multiple-value', [0]), 0xD5);
      returns('multiple_value_1', () => m.$('multiple-value', [1]), 0xD4);
      returns('multiple_value_2', () => m.$('multiple-value', [2]), 0xD3);
      returns('multiple_value_3', () => m.$('multiple-value', [3]), 0xD2);
      returns('multiple_value_4', () => m.$('multiple-value', [4]), 0xD6);
      returns('multiple_value_5', () => m.$('multiple-value', [5]), 0xD6);
      returns('multiple_value_6', () => m.$('multiple-value', [6]), 0xD6);
      returns('multiple_value_7', () => m.$('multiple-value', [0xA]), 0xD6);
      returns('multiple_value_8',
          () => m.$('multiple-value', [$i32('FFFFFFFF')]), 0xD6);
      returns('multiple_value_9',
          () => m.$('multiple-value', [$i32('FFFFFFFF')]), 0xD6);
      returns('large_0', () => m.$('large', [0]), 0);
      returns('large_1', () => m.$('large', [1]), 1);
      returns('large_2', () => m.$('large', [0x64]), 0);
      returns('large_3', () => m.$('large', [0x65]), 1);
      returns('large_4', () => m.$('large', [0x2710]), 0);
      returns('large_5', () => m.$('large', [0x2711]), 1);
      returns('large_6', () => m.$('large', [$i32('F4240')]), 1);
      returns('large_7', () => m.$('large', [$i32('F4241')]), 1);
      returns(
          'as_block_first_0', () => m.$('as-block-first', []), null /*void*/);
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
      returns('as_br_table_index_0', () => m.$('as-br_table-index', []),
          null /*void*/);
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
      returns('as_call_indirect_first_0',
          () => m.$('as-call_indirect-first', []), 0x14);
      returns('as_call_indirect_mid_0', () => m.$('as-call_indirect-mid', []),
          0x15);
      returns('as_call_indirect_last_0', () => m.$('as-call_indirect-last', []),
          0x16);
      returns('as_call_indirect_func_0', () => m.$('as-call_indirect-func', []),
          0x17);
      returns(
          'as_local_set_value_0', () => m.$('as-local.set-value', []), 0x11);
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
      returns(
          'as_convert_operand_0', () => m.$('as-convert-operand', []), 0x29);
      returns(
          'as_memory_grow_size_0', () => m.$('as-memory.grow-size', []), 0x28);
      returns(
          'nested_block_value_0', () => m.$('nested-block-value', [0]), 0x13);
      returns(
          'nested_block_value_1', () => m.$('nested-block-value', [1]), 0x11);
      returns(
          'nested_block_value_2', () => m.$('nested-block-value', [2]), 0x10);
      returns(
          'nested_block_value_3', () => m.$('nested-block-value', [0xA]), 0x10);
      returns('nested_block_value_4',
          () => m.$('nested-block-value', [$i32('FFFFFFFF')]), 0x10);
      returns('nested_block_value_5',
          () => m.$('nested-block-value', [0x186A0]), 0x10);
      returns('nested_br_value_0', () => m.$('nested-br-value', [0]), 8);
      returns('nested_br_value_1', () => m.$('nested-br-value', [1]), 9);
      returns('nested_br_value_2', () => m.$('nested-br-value', [2]), 0x11);
      returns('nested_br_value_3', () => m.$('nested-br-value', [0xB]), 0x11);
      returns('nested_br_value_4',
          () => m.$('nested-br-value', [$i32('FFFFFFFC')]), 0x11);
      returns('nested_br_value_5',
          () => m.$('nested-br-value', [$i32('9BD75A')]), 0x11);
      returns(
          'nested_br_if_value_0', () => m.$('nested-br_if-value', [0]), 0x11);
      returns('nested_br_if_value_1', () => m.$('nested-br_if-value', [1]), 9);
      returns('nested_br_if_value_2', () => m.$('nested-br_if-value', [2]), 8);
      returns('nested_br_if_value_3', () => m.$('nested-br_if-value', [9]), 8);
      returns('nested_br_if_value_4',
          () => m.$('nested-br_if-value', [$i32('FFFFFFF7')]), 8);
      returns('nested_br_if_value_5',
          () => m.$('nested-br_if-value', [0xF423F]), 8);
      returns('nested_br_if_value_cond_0',
          () => m.$('nested-br_if-value-cond', [0]), 9);
      returns('nested_br_if_value_cond_1',
          () => m.$('nested-br_if-value-cond', [1]), 8);
      returns('nested_br_if_value_cond_2',
          () => m.$('nested-br_if-value-cond', [2]), 9);
      returns('nested_br_if_value_cond_3',
          () => m.$('nested-br_if-value-cond', [3]), 9);
      returns('nested_br_if_value_cond_4',
          () => m.$('nested-br_if-value-cond', [$i32('FFF0BDC0')]), 9);
      returns('nested_br_if_value_cond_5',
          () => m.$('nested-br_if-value-cond', [$i32('8FCC67')]), 9);
      returns('nested_br_table_value_0',
          () => m.$('nested-br_table-value', [0]), 0x11);
      returns('nested_br_table_value_1',
          () => m.$('nested-br_table-value', [1]), 9);
      returns('nested_br_table_value_2',
          () => m.$('nested-br_table-value', [2]), 8);
      returns('nested_br_table_value_3',
          () => m.$('nested-br_table-value', [9]), 8);
      returns('nested_br_table_value_4',
          () => m.$('nested-br_table-value', [$i32('FFFFFFF7')]), 8);
      returns('nested_br_table_value_5',
          () => m.$('nested-br_table-value', [0xF423F]), 8);
      returns('nested_br_table_value_index_0',
          () => m.$('nested-br_table-value-index', [0]), 9);
      returns('nested_br_table_value_index_1',
          () => m.$('nested-br_table-value-index', [1]), 8);
      returns('nested_br_table_value_index_2',
          () => m.$('nested-br_table-value-index', [2]), 9);
      returns('nested_br_table_value_index_3',
          () => m.$('nested-br_table-value-index', [3]), 9);
      returns('nested_br_table_value_index_4',
          () => m.$('nested-br_table-value-index', [$i32('FFF0BDC0')]), 9);
      returns('nested_br_table_value_index_5',
          () => m.$('nested-br_table-value-index', [$i32('8FCC67')]), 9);
      returns('nested_br_table_loop_block_0',
          () => m.$('nested-br_table-loop-block', [1]), 3);
      returns('meet_externref_0',
          () => m.$('meet-externref', [0, $externref(1)]), $externref(1));
      returns('meet_externref_1',
          () => m.$('meet-externref', [1, $externref(1)]), $externref(1));
      returns('meet_externref_2',
          () => m.$('meet-externref', [2, $externref(1)]), $externref(1));
    });

    // assertInvalid('invalid br_table.1.wasm', 'br_table/br_table.1.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.2.wasm', 'br_table/br_table.2.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.3.wasm', 'br_table/br_table.3.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.4.wasm', 'br_table/br_table.4.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.5.wasm', 'br_table/br_table.5.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.6.wasm', 'br_table/br_table.6.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.7.wasm', 'br_table/br_table.7.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.8.wasm', 'br_table/br_table.8.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.9.wasm', 'br_table/br_table.9.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.10.wasm', 'br_table/br_table.10.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.11.wasm', 'br_table/br_table.11.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.12.wasm', 'br_table/br_table.12.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.13.wasm', 'br_table/br_table.13.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.14.wasm', 'br_table/br_table.14.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.15.wasm', 'br_table/br_table.15.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.16.wasm', 'br_table/br_table.16.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.17.wasm', 'br_table/br_table.17.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.18.wasm', 'br_table/br_table.18.wasm', 'type mismatch', registered);
    // assertInvalid('invalid br_table.19.wasm', 'br_table/br_table.19.wasm', 'unknown label', registered);
    // assertInvalid('invalid br_table.20.wasm', 'br_table/br_table.20.wasm', 'unknown label', registered);
    // assertInvalid('invalid br_table.21.wasm', 'br_table/br_table.21.wasm', 'unknown label', registered);
    // assertInvalid('invalid br_table.22.wasm', 'br_table/br_table.22.wasm', 'unknown label', registered);
    // assertInvalid('invalid br_table.23.wasm', 'br_table/br_table.23.wasm', 'unknown label', registered);
    // assertInvalid('invalid br_table.24.wasm', 'br_table/br_table.24.wasm', 'unknown label', registered);
  });
}
