// Generated from spec/test/core/local_tee.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('local_tee', () {
    group('local_tee.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/local_tee/local_tee.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('type_local_i32_0', () => m.$('type-local-i32', []), 0);
      returns('type_local_i64_0', () => m.$('type-local-i64', []), 0);
      returns('type_local_f32_0', () => m.$('type-local-f32', []), $f32('0'));
      returns('type_local_f64_0', () => m.$('type-local-f64', []), $f64('0'));
      returns('type_param_i32_0', () => m.$('type-param-i32', [2]), 0xA);
      returns('type_param_i64_0', () => m.$('type-param-i64', [3]), 0xB);
      returns('type_param_f32_0',
          () => m.$('type-param-f32', [$f32('408CCCCD')]), $f32('4131999A'));
      returns(
          'type_param_f64_0',
          () => m.$('type-param-f64', [$f64('4016000000000000')]),
          $f64('4028666666666666'));
      returns('as_block_first_0', () => m.$('as-block-first', [0]), 1);
      returns('as_block_mid_0', () => m.$('as-block-mid', [0]), 1);
      returns('as_block_last_0', () => m.$('as-block-last', [0]), 1);
      returns('as_loop_first_0', () => m.$('as-loop-first', [0]), 3);
      returns('as_loop_mid_0', () => m.$('as-loop-mid', [0]), 4);
      returns('as_loop_last_0', () => m.$('as-loop-last', [0]), 5);
      returns('as_br_value_0', () => m.$('as-br-value', [0]), 9);
      returns(
          'as_br_if_cond_0', () => m.$('as-br_if-cond', [0]), null /*void*/);
      returns('as_br_if_value_0', () => m.$('as-br_if-value', [0]), 8);
      returns(
          'as_br_if_value_cond_0', () => m.$('as-br_if-value-cond', [0]), 6);
      returns('as_br_table_index_0', () => m.$('as-br_table-index', [0]),
          null /*void*/);
      returns('as_br_table_value_0', () => m.$('as-br_table-value', [0]), 0xA);
      returns('as_br_table_value_index_0',
          () => m.$('as-br_table-value-index', [0]), 6);
      returns('as_return_value_0', () => m.$('as-return-value', [0]), 7);
      returns('as_if_cond_0', () => m.$('as-if-cond', [0]), 0);
      returns('as_if_then_0', () => m.$('as-if-then', [1]), 3);
      returns('as_if_else_0', () => m.$('as-if-else', [0]), 4);
      returns('as_select_first_0', () => m.$('as-select-first', [0, 1]), 5);
      returns('as_select_second_0', () => m.$('as-select-second', [0, 0]), 6);
      returns('as_select_cond_0', () => m.$('as-select-cond', [0]), 0);
      returns(
          'as_call_first_0', () => m.$('as-call-first', [0]), $i32('FFFFFFFF'));
      returns('as_call_mid_0', () => m.$('as-call-mid', [0]), $i32('FFFFFFFF'));
      returns(
          'as_call_last_0', () => m.$('as-call-last', [0]), $i32('FFFFFFFF'));
      returns('as_call_indirect_first_0',
          () => m.$('as-call_indirect-first', [0]), $i32('FFFFFFFF'));
      returns('as_call_indirect_mid_0', () => m.$('as-call_indirect-mid', [0]),
          $i32('FFFFFFFF'));
      returns('as_call_indirect_last_0',
          () => m.$('as-call_indirect-last', [0]), $i32('FFFFFFFF'));
      returns('as_call_indirect_index_0',
          () => m.$('as-call_indirect-index', [0]), $i32('FFFFFFFF'));
      returns('as_local_set_value_0', () => m.$('as-local.set-value', []),
          null /*void*/);
      returns('as_local_tee_value_0', () => m.$('as-local.tee-value', [0]), 1);
      returns('as_global_set_value_0', () => m.$('as-global.set-value', []),
          null /*void*/);
      returns('as_load_address_0', () => m.$('as-load-address', [0]), 0);
      returns('as_loadN_address_0', () => m.$('as-loadN-address', [0]), 0);
      returns('as_store_address_0', () => m.$('as-store-address', [0]),
          null /*void*/);
      returns(
          'as_store_value_0', () => m.$('as-store-value', [0]), null /*void*/);
      returns('as_storeN_address_0', () => m.$('as-storeN-address', [0]),
          null /*void*/);
      returns('as_storeN_value_0', () => m.$('as-storeN-value', [0]),
          null /*void*/);
      returns('as_unary_operand_0', () => m.$('as-unary-operand', [$f32('0')]),
          $f32('FF80F1E2'));
      returns('as_binary_left_0', () => m.$('as-binary-left', [0]), 0xD);
      returns('as_binary_right_0', () => m.$('as-binary-right', [0]), 6);
      returns('as_test_operand_0', () => m.$('as-test-operand', [0]), 1);
      returns('as_compare_left_0', () => m.$('as-compare-left', [0]), 0);
      returns('as_compare_right_0', () => m.$('as-compare-right', [0]), 1);
      returns(
          'as_convert_operand_0', () => m.$('as-convert-operand', [0]), 0x29);
      returns(
          'as_memory_grow_size_0', () => m.$('as-memory.grow-size', [0]), 1);
      returns(
          'type_mixed_0',
          () => m.$('type-mixed',
              [1, $f32('400CCCCD'), $f64('400A666666666666'), 4, 5]),
          null /*void*/);
      returns(
          'write_0',
          () => m.$(
              'write', [1, $f32('40000000'), $f64('400A666666666666'), 4, 5]),
          0x38);
      returns(
          'result_0',
          () => m.$('result', [
                $i64('FFFFFFFFFFFFFFFF'),
                $f32('C0000000'),
                $f64('C00A666666666666'),
                $i32('FFFFFFFC'),
                $i32('FFFFFFFB')
              ]),
          $f64('4041666666666666'));
    });

    // assertInvalid('invalid local_tee.1.wasm', 'local_tee/local_tee.1.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.2.wasm', 'local_tee/local_tee.2.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.3.wasm', 'local_tee/local_tee.3.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.4.wasm', 'local_tee/local_tee.4.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.5.wasm', 'local_tee/local_tee.5.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.6.wasm', 'local_tee/local_tee.6.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.7.wasm', 'local_tee/local_tee.7.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.8.wasm', 'local_tee/local_tee.8.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.9.wasm', 'local_tee/local_tee.9.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.10.wasm', 'local_tee/local_tee.10.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.11.wasm', 'local_tee/local_tee.11.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.12.wasm', 'local_tee/local_tee.12.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.13.wasm', 'local_tee/local_tee.13.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.14.wasm', 'local_tee/local_tee.14.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.15.wasm', 'local_tee/local_tee.15.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.16.wasm', 'local_tee/local_tee.16.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.17.wasm', 'local_tee/local_tee.17.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.18.wasm', 'local_tee/local_tee.18.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.19.wasm', 'local_tee/local_tee.19.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.20.wasm', 'local_tee/local_tee.20.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.21.wasm', 'local_tee/local_tee.21.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.22.wasm', 'local_tee/local_tee.22.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.23.wasm', 'local_tee/local_tee.23.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.24.wasm', 'local_tee/local_tee.24.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.25.wasm', 'local_tee/local_tee.25.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.26.wasm', 'local_tee/local_tee.26.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.27.wasm', 'local_tee/local_tee.27.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.28.wasm', 'local_tee/local_tee.28.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.29.wasm', 'local_tee/local_tee.29.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.30.wasm', 'local_tee/local_tee.30.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.31.wasm', 'local_tee/local_tee.31.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.32.wasm', 'local_tee/local_tee.32.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.33.wasm', 'local_tee/local_tee.33.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.34.wasm', 'local_tee/local_tee.34.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.35.wasm', 'local_tee/local_tee.35.wasm', 'type mismatch');
    // assertInvalid('invalid local_tee.36.wasm', 'local_tee/local_tee.36.wasm', 'unknown local');
    // assertInvalid('invalid local_tee.37.wasm', 'local_tee/local_tee.37.wasm', 'unknown local');
    // assertInvalid('invalid local_tee.38.wasm', 'local_tee/local_tee.38.wasm', 'unknown local');
    // assertInvalid('invalid local_tee.39.wasm', 'local_tee/local_tee.39.wasm', 'unknown local');
    // assertInvalid('invalid local_tee.40.wasm', 'local_tee/local_tee.40.wasm', 'unknown local');
    // assertInvalid('invalid local_tee.41.wasm', 'local_tee/local_tee.41.wasm', 'unknown local');
  });
}
