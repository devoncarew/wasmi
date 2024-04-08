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

    returns('as-func-first_0', () => m.$('as-func-first', []), 1);
    returns('as-func-mid_0', () => m.$('as-func-mid', []), 2);
    returns('as-func-last_0', () => m.$('as-func-last', []), 3);
    returns('as-func-everywhere_0', () => m.$('as-func-everywhere', []), 4);
    returns('as-drop-first_0', () => m.$('as-drop-first', [0]), null /*void*/);
    returns('as-drop-last_0', () => m.$('as-drop-last', [0]), null /*void*/);
    returns('as-drop-everywhere_0', () => m.$('as-drop-everywhere', [0]),
        null /*void*/);
    returns('as-select-first_0', () => m.$('as-select-first', [3]), 3);
    returns('as-select-mid1_0', () => m.$('as-select-mid1', [3]), 3);
    returns('as-select-mid2_0', () => m.$('as-select-mid2', [3]), 3);
    returns('as-select-last_0', () => m.$('as-select-last', [3]), 3);
    returns(
        'as-select-everywhere_0', () => m.$('as-select-everywhere', [3]), 3);
    returns('as-block-first_0', () => m.$('as-block-first', []), 2);
    returns('as-block-mid_0', () => m.$('as-block-mid', []), 2);
    returns('as-block-last_0', () => m.$('as-block-last', []), 3);
    returns('as-block-everywhere_0', () => m.$('as-block-everywhere', []), 4);
    returns('as-loop-first_0', () => m.$('as-loop-first', []), 2);
    returns('as-loop-mid_0', () => m.$('as-loop-mid', []), 2);
    returns('as-loop-last_0', () => m.$('as-loop-last', []), 3);
    returns('as-loop-everywhere_0', () => m.$('as-loop-everywhere', []), 4);
    returns(
        'as-if-condition_0', () => m.$('as-if-condition', [0]), null /*void*/);
    returns('as-if-condition_1',
        () => m.$('as-if-condition', [$i32('FFFFFFFF')]), null /*void*/);
    returns('as-if-then_0', () => m.$('as-if-then', [0]), null /*void*/);
    returns('as-if-then_1', () => m.$('as-if-then', [4]), null /*void*/);
    returns('as-if-else_0', () => m.$('as-if-else', [0]), null /*void*/);
    returns('as-if-else_1', () => m.$('as-if-else', [3]), null /*void*/);
    returns('as-br-first_0', () => m.$('as-br-first', [5]), 5);
    returns('as-br-last_0', () => m.$('as-br-last', [6]), 6);
    returns('as-br-everywhere_0', () => m.$('as-br-everywhere', [7]), 7);
    returns('as-br_if-first_0', () => m.$('as-br_if-first', [4]), 4);
    returns('as-br_if-mid_0', () => m.$('as-br_if-mid', [5]), 5);
    returns('as-br_if-last_0', () => m.$('as-br_if-last', [6]), 6);
    returns('as-br_if-everywhere_0', () => m.$('as-br_if-everywhere', [7]), 7);
    returns('as-br_table-first_0', () => m.$('as-br_table-first', [4]), 4);
    returns('as-br_table-mid_0', () => m.$('as-br_table-mid', [5]), 5);
    returns('as-br_table-last_0', () => m.$('as-br_table-last', [6]), 6);
    returns('as-br_table-everywhere_0',
        () => m.$('as-br_table-everywhere', [7]), 7);
    returns('as-return-first_0', () => m.$('as-return-first', [5]), 5);
    returns('as-return-last_0', () => m.$('as-return-last', [6]), 6);
    returns(
        'as-return-everywhere_0', () => m.$('as-return-everywhere', [7]), 7);
    returns('as-call-first_0', () => m.$('as-call-first', [3, 1, 2]), 2);
    returns('as-call-mid1_0', () => m.$('as-call-mid1', [3, 1, 2]), 2);
    returns('as-call-mid2_0', () => m.$('as-call-mid2', [0, 3, 1]), 2);
    returns('as-call-last_0',
        () => m.$('as-call-last', [0xA, 9, $i32('FFFFFFFF')]), 0x14);
    returns('as-call-everywhere_0', () => m.$('as-call-everywhere', [2, 1, 5]),
        $i32('FFFFFFFE'));
    returns('as-unary-first_0', () => m.$('as-unary-first', [0x1E]), 1);
    returns('as-unary-last_0', () => m.$('as-unary-last', [0x1E]), 1);
    returns(
        'as-unary-everywhere_0', () => m.$('as-unary-everywhere', [0xC]), 2);
    returns('as-binary-first_0', () => m.$('as-binary-first', [3]), 6);
    returns('as-binary-mid_0', () => m.$('as-binary-mid', [3]), 6);
    returns('as-binary-last_0', () => m.$('as-binary-last', [3]), 6);
    returns(
        'as-binary-everywhere_0', () => m.$('as-binary-everywhere', [3]), 6);
    returns('as-test-first_0', () => m.$('as-test-first', [0]), 1);
    returns('as-test-last_0', () => m.$('as-test-last', [0]), 1);
    returns('as-test-everywhere_0', () => m.$('as-test-everywhere', [0]), 1);
    returns('as-compare-first_0', () => m.$('as-compare-first', [3]), 0);
    returns('as-compare-mid_0', () => m.$('as-compare-mid', [3]), 0);
    returns('as-compare-last_0', () => m.$('as-compare-last', [3]), 0);
    returns(
        'as-compare-everywhere_0', () => m.$('as-compare-everywhere', [3]), 1);
    returns(
        'as-memory_grow-first_0', () => m.$('as-memory.grow-first', [0]), 1);
    returns('as-memory_grow-last_0', () => m.$('as-memory.grow-last', [2]), 1);
    returns('as-memory_grow-everywhere_0',
        () => m.$('as-memory.grow-everywhere', [0xC]), 3);
    returns(
        'as-call_indirect-first_0', () => m.$('as-call_indirect-first', []), 1);
    returns(
        'as-call_indirect-mid1_0', () => m.$('as-call_indirect-mid1', []), 1);
    returns(
        'as-call_indirect-mid2_0', () => m.$('as-call_indirect-mid2', []), 1);
    returns(
        'as-call_indirect-last_0', () => m.$('as-call_indirect-last', []), 1);
    returns('as-call_indirect-everywhere_0',
        () => m.$('as-call_indirect-everywhere', []), 1);
    returns('as-local_set-first_0', () => m.$('as-local.set-first', [1]), 2);
    returns('as-local_set-last_0', () => m.$('as-local.set-last', [1]), 2);
    returns('as-local_set-everywhere_0',
        () => m.$('as-local.set-everywhere', [1]), 2);
    returns('as-local_tee-first_0', () => m.$('as-local.tee-first', [1]), 2);
    returns('as-local_tee-last_0', () => m.$('as-local.tee-last', [1]), 2);
    returns('as-local_tee-everywhere_0',
        () => m.$('as-local.tee-everywhere', [1]), 2);
    returns('as-global_set-first_0', () => m.$('as-global.set-first', []), 2);
    returns('as-global_set-last_0', () => m.$('as-global.set-last', []), 2);
    returns('as-global_set-everywhere_0',
        () => m.$('as-global.set-everywhere', []), 2);
    returns('as-load-first_0', () => m.$('as-load-first', [0x64]), 0);
    returns('as-load-last_0', () => m.$('as-load-last', [0x64]), 0);
    returns('as-load-everywhere_0', () => m.$('as-load-everywhere', [0x64]), 0);
    returns(
        'as-store-first_0', () => m.$('as-store-first', [0, 1]), null /*void*/);
    returns('as-store-mid_0', () => m.$('as-store-mid', [0, 2]), null /*void*/);
    returns(
        'as-store-last_0', () => m.$('as-store-last', [0, 3]), null /*void*/);
    returns('as-store-everywhere_0', () => m.$('as-store-everywhere', [0, 4]),
        null /*void*/);
  });

  // assertInvalid('invalid nop.1.wasm', 'nop/nop.1.wasm', 'type mismatch');
  // assertInvalid('invalid nop.2.wasm', 'nop/nop.2.wasm', 'type mismatch');
  // assertInvalid('invalid nop.3.wasm', 'nop/nop.3.wasm', 'type mismatch');
  // assertInvalid('invalid nop.4.wasm', 'nop/nop.4.wasm', 'type mismatch');
}
