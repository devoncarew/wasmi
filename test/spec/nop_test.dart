// Generated from spec/test/core/nop.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('nop.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/nop/nop.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('as_func_first_0', () => m.$('as-func-first', []), 1);
    returns('as_func_mid_0', () => m.$('as-func-mid', []), 2);
    returns('as_func_last_0', () => m.$('as-func-last', []), 3);
    returns('as_func_everywhere_0', () => m.$('as-func-everywhere', []), 4);
    returns('as_drop_first_0', () => m.$('as-drop-first', [0]), null /*void*/);
    returns('as_drop_last_0', () => m.$('as-drop-last', [0]), null /*void*/);
    returns('as_drop_everywhere_0', () => m.$('as-drop-everywhere', [0]),
        null /*void*/);
    returns('as_select_first_0', () => m.$('as-select-first', [3]), 3);
    returns('as_select_mid1_0', () => m.$('as-select-mid1', [3]), 3);
    returns('as_select_mid2_0', () => m.$('as-select-mid2', [3]), 3);
    returns('as_select_last_0', () => m.$('as-select-last', [3]), 3);
    returns(
        'as_select_everywhere_0', () => m.$('as-select-everywhere', [3]), 3);
    returns('as_block_first_0', () => m.$('as-block-first', []), 2);
    returns('as_block_mid_0', () => m.$('as-block-mid', []), 2);
    returns('as_block_last_0', () => m.$('as-block-last', []), 3);
    returns('as_block_everywhere_0', () => m.$('as-block-everywhere', []), 4);
    returns('as_loop_first_0', () => m.$('as-loop-first', []), 2);
    returns('as_loop_mid_0', () => m.$('as-loop-mid', []), 2);
    returns('as_loop_last_0', () => m.$('as-loop-last', []), 3);
    returns('as_loop_everywhere_0', () => m.$('as-loop-everywhere', []), 4);
    returns(
        'as_if_condition_0', () => m.$('as-if-condition', [0]), null /*void*/);
    returns('as_if_condition_1',
        () => m.$('as-if-condition', [$i32('FFFFFFFF')]), null /*void*/);
    returns('as_if_then_0', () => m.$('as-if-then', [0]), null /*void*/);
    returns('as_if_then_1', () => m.$('as-if-then', [4]), null /*void*/);
    returns('as_if_else_0', () => m.$('as-if-else', [0]), null /*void*/);
    returns('as_if_else_1', () => m.$('as-if-else', [3]), null /*void*/);
    returns('as_br_first_0', () => m.$('as-br-first', [5]), 5);
    returns('as_br_last_0', () => m.$('as-br-last', [6]), 6);
    returns('as_br_everywhere_0', () => m.$('as-br-everywhere', [7]), 7);
    returns('as_br_if_first_0', () => m.$('as-br_if-first', [4]), 4);
    returns('as_br_if_mid_0', () => m.$('as-br_if-mid', [5]), 5);
    returns('as_br_if_last_0', () => m.$('as-br_if-last', [6]), 6);
    returns('as_br_if_everywhere_0', () => m.$('as-br_if-everywhere', [7]), 7);
    returns('as_br_table_first_0', () => m.$('as-br_table-first', [4]), 4);
    returns('as_br_table_mid_0', () => m.$('as-br_table-mid', [5]), 5);
    returns('as_br_table_last_0', () => m.$('as-br_table-last', [6]), 6);
    returns('as_br_table_everywhere_0',
        () => m.$('as-br_table-everywhere', [7]), 7);
    returns('as_return_first_0', () => m.$('as-return-first', [5]), 5);
    returns('as_return_last_0', () => m.$('as-return-last', [6]), 6);
    returns(
        'as_return_everywhere_0', () => m.$('as-return-everywhere', [7]), 7);
    returns('as_call_first_0', () => m.$('as-call-first', [3, 1, 2]), 2);
    returns('as_call_mid1_0', () => m.$('as-call-mid1', [3, 1, 2]), 2);
    returns('as_call_mid2_0', () => m.$('as-call-mid2', [0, 3, 1]), 2);
    returns('as_call_last_0',
        () => m.$('as-call-last', [0xA, 9, $i32('FFFFFFFF')]), 0x14);
    returns('as_call_everywhere_0', () => m.$('as-call-everywhere', [2, 1, 5]),
        $i32('FFFFFFFE'));
    returns('as_unary_first_0', () => m.$('as-unary-first', [0x1E]), 1);
    returns('as_unary_last_0', () => m.$('as-unary-last', [0x1E]), 1);
    returns(
        'as_unary_everywhere_0', () => m.$('as-unary-everywhere', [0xC]), 2);
    returns('as_binary_first_0', () => m.$('as-binary-first', [3]), 6);
    returns('as_binary_mid_0', () => m.$('as-binary-mid', [3]), 6);
    returns('as_binary_last_0', () => m.$('as-binary-last', [3]), 6);
    returns(
        'as_binary_everywhere_0', () => m.$('as-binary-everywhere', [3]), 6);
    returns('as_test_first_0', () => m.$('as-test-first', [0]), 1);
    returns('as_test_last_0', () => m.$('as-test-last', [0]), 1);
    returns('as_test_everywhere_0', () => m.$('as-test-everywhere', [0]), 1);
    returns('as_compare_first_0', () => m.$('as-compare-first', [3]), 0);
    returns('as_compare_mid_0', () => m.$('as-compare-mid', [3]), 0);
    returns('as_compare_last_0', () => m.$('as-compare-last', [3]), 0);
    returns(
        'as_compare_everywhere_0', () => m.$('as-compare-everywhere', [3]), 1);
    returns(
        'as_memory_grow_first_0', () => m.$('as-memory.grow-first', [0]), 1);
    returns('as_memory_grow_last_0', () => m.$('as-memory.grow-last', [2]), 1);
    returns('as_memory_grow_everywhere_0',
        () => m.$('as-memory.grow-everywhere', [0xC]), 3);
    returns(
        'as_call_indirect_first_0', () => m.$('as-call_indirect-first', []), 1);
    returns(
        'as_call_indirect_mid1_0', () => m.$('as-call_indirect-mid1', []), 1);
    returns(
        'as_call_indirect_mid2_0', () => m.$('as-call_indirect-mid2', []), 1);
    returns(
        'as_call_indirect_last_0', () => m.$('as-call_indirect-last', []), 1);
    returns('as_call_indirect_everywhere_0',
        () => m.$('as-call_indirect-everywhere', []), 1);
    returns('as_local_set_first_0', () => m.$('as-local.set-first', [1]), 2);
    returns('as_local_set_last_0', () => m.$('as-local.set-last', [1]), 2);
    returns('as_local_set_everywhere_0',
        () => m.$('as-local.set-everywhere', [1]), 2);
    returns('as_local_tee_first_0', () => m.$('as-local.tee-first', [1]), 2);
    returns('as_local_tee_last_0', () => m.$('as-local.tee-last', [1]), 2);
    returns('as_local_tee_everywhere_0',
        () => m.$('as-local.tee-everywhere', [1]), 2);
    returns('as_global_set_first_0', () => m.$('as-global.set-first', []), 2);
    returns('as_global_set_last_0', () => m.$('as-global.set-last', []), 2);
    returns('as_global_set_everywhere_0',
        () => m.$('as-global.set-everywhere', []), 2);
    returns('as_load_first_0', () => m.$('as-load-first', [0x64]), 0);
    returns('as_load_last_0', () => m.$('as-load-last', [0x64]), 0);
    returns('as_load_everywhere_0', () => m.$('as-load-everywhere', [0x64]), 0);
    returns(
        'as_store_first_0', () => m.$('as-store-first', [0, 1]), null /*void*/);
    returns('as_store_mid_0', () => m.$('as-store-mid', [0, 2]), null /*void*/);
    returns(
        'as_store_last_0', () => m.$('as-store-last', [0, 3]), null /*void*/);
    returns('as_store_everywhere_0', () => m.$('as-store-everywhere', [0, 4]),
        null /*void*/);
  });

  // assertInvalid('invalid nop.1.wasm', 'nop/nop.1.wasm', 'type mismatch');
  // assertInvalid('invalid nop.2.wasm', 'nop/nop.2.wasm', 'type mismatch');
  // assertInvalid('invalid nop.3.wasm', 'nop/nop.3.wasm', 'type mismatch');
  // assertInvalid('invalid nop.4.wasm', 'nop/nop.4.wasm', 'type mismatch');
}
