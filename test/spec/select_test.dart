// Generated from spec/test/core/select.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('select.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/select/select.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('select-i32_0', () => m.$('select-i32', [1, 2, 1]), 1);
    returns('select-i64_0', () => m.$('select-i64', [2, 1, 1]), 2);
    returns(
        'select-f32_0',
        () => m.$('select-f32', [$f32('3F800000'), $f32('40000000'), 1]),
        $f32('3F800000'));
    returns(
        'select-f64_0',
        () => m.$('select-f64',
            [$f64('3FF0000000000000'), $f64('4000000000000000'), 1]),
        $f64('3FF0000000000000'));
    returns('select-i32_1', () => m.$('select-i32', [1, 2, 0]), 2);
    returns('select-i32_2', () => m.$('select-i32', [2, 1, 0]), 1);
    returns(
        'select-i64_1', () => m.$('select-i64', [2, 1, $i32('FFFFFFFF')]), 2);
    returns(
        'select-i64_2', () => m.$('select-i64', [2, 1, $i32('F0F0F0F0')]), 2);
    returns(
        'select-f32_1',
        () => m.$('select-f32', [$f32('7FC00000'), $f32('3F800000'), 1]),
        $f32('7FC00000'));
    returns(
        'select-f32_2',
        () => m.$('select-f32', [$f32('7F820304'), $f32('3F800000'), 1]),
        $f32('7F820304'));
    returns(
        'select-f32_3',
        () => m.$('select-f32', [$f32('7FC00000'), $f32('3F800000'), 0]),
        $f32('3F800000'));
    returns(
        'select-f32_4',
        () => m.$('select-f32', [$f32('7F820304'), $f32('3F800000'), 0]),
        $f32('3F800000'));
    returns(
        'select-f32_5',
        () => m.$('select-f32', [$f32('40000000'), $f32('7FC00000'), 1]),
        $f32('40000000'));
    returns(
        'select-f32_6',
        () => m.$('select-f32', [$f32('40000000'), $f32('7F820304'), 1]),
        $f32('40000000'));
    returns(
        'select-f32_7',
        () => m.$('select-f32', [$f32('40000000'), $f32('7FC00000'), 0]),
        $f32('7FC00000'));
    returns(
        'select-f32_8',
        () => m.$('select-f32', [$f32('40000000'), $f32('7F820304'), 0]),
        $f32('7F820304'));
    returns(
        'select-f64_1',
        () => m.$('select-f64',
            [$f64('7FF8000000000000'), $f64('3FF0000000000000'), 1]),
        $f64('7FF8000000000000'));
    returns(
        'select-f64_2',
        () => m.$('select-f64',
            [$f64('7FF0000000020304'), $f64('3FF0000000000000'), 1]),
        $f64('7FF0000000020304'));
    returns(
        'select-f64_3',
        () => m.$('select-f64',
            [$f64('7FF8000000000000'), $f64('3FF0000000000000'), 0]),
        $f64('3FF0000000000000'));
    returns(
        'select-f64_4',
        () => m.$('select-f64',
            [$f64('7FF0000000020304'), $f64('3FF0000000000000'), 0]),
        $f64('3FF0000000000000'));
    returns(
        'select-f64_5',
        () => m.$('select-f64',
            [$f64('4000000000000000'), $f64('7FF8000000000000'), 1]),
        $f64('4000000000000000'));
    returns(
        'select-f64_6',
        () => m.$('select-f64',
            [$f64('4000000000000000'), $f64('7FF0000000020304'), 1]),
        $f64('4000000000000000'));
    returns(
        'select-f64_7',
        () => m.$('select-f64',
            [$f64('4000000000000000'), $f64('7FF8000000000000'), 0]),
        $f64('7FF8000000000000'));
    returns(
        'select-f64_8',
        () => m.$('select-f64',
            [$f64('4000000000000000'), $f64('7FF0000000020304'), 0]),
        $f64('7FF0000000020304'));
    returns('select-i32-t_0', () => m.$('select-i32-t', [1, 2, 1]), 1);
    returns('select-i64-t_0', () => m.$('select-i64-t', [2, 1, 1]), 2);
    returns(
        'select-f32-t_0',
        () => m.$('select-f32-t', [$f32('3F800000'), $f32('40000000'), 1]),
        $f32('3F800000'));
    returns(
        'select-f64-t_0',
        () => m.$('select-f64-t',
            [$f64('3FF0000000000000'), $f64('4000000000000000'), 1]),
        $f64('3FF0000000000000'));
    returns(
        'select-funcref_0', () => m.$('select-funcref', [null, null, 1]), null);
    returns(
        'select-externref_0',
        () => m.$('select-externref', [$externref('1'), $externref('2'), 1]),
        $externref('1'));
    returns('select-i32-t_1', () => m.$('select-i32-t', [1, 2, 0]), 2);
    returns('select-i32-t_2', () => m.$('select-i32-t', [2, 1, 0]), 1);
    returns('select-i64-t_1',
        () => m.$('select-i64-t', [2, 1, $i32('FFFFFFFF')]), 2);
    returns('select-i64-t_2',
        () => m.$('select-i64-t', [2, 1, $i32('F0F0F0F0')]), 2);
    returns(
        'select-externref_1',
        () => m.$('select-externref', [$externref('1'), $externref('2'), 0]),
        $externref('2'));
    returns(
        'select-externref_2',
        () => m.$('select-externref', [$externref('2'), $externref('1'), 0]),
        $externref('1'));
    returns(
        'select-f32-t_1',
        () => m.$('select-f32-t', [$f32('7FC00000'), $f32('3F800000'), 1]),
        $f32('7FC00000'));
    returns(
        'select-f32-t_2',
        () => m.$('select-f32-t', [$f32('7F820304'), $f32('3F800000'), 1]),
        $f32('7F820304'));
    returns(
        'select-f32-t_3',
        () => m.$('select-f32-t', [$f32('7FC00000'), $f32('3F800000'), 0]),
        $f32('3F800000'));
    returns(
        'select-f32-t_4',
        () => m.$('select-f32-t', [$f32('7F820304'), $f32('3F800000'), 0]),
        $f32('3F800000'));
    returns(
        'select-f32-t_5',
        () => m.$('select-f32-t', [$f32('40000000'), $f32('7FC00000'), 1]),
        $f32('40000000'));
    returns(
        'select-f32-t_6',
        () => m.$('select-f32-t', [$f32('40000000'), $f32('7F820304'), 1]),
        $f32('40000000'));
    returns(
        'select-f32-t_7',
        () => m.$('select-f32-t', [$f32('40000000'), $f32('7FC00000'), 0]),
        $f32('7FC00000'));
    returns(
        'select-f32-t_8',
        () => m.$('select-f32-t', [$f32('40000000'), $f32('7F820304'), 0]),
        $f32('7F820304'));
    returns(
        'select-f64-t_1',
        () => m.$('select-f64-t',
            [$f64('7FF8000000000000'), $f64('3FF0000000000000'), 1]),
        $f64('7FF8000000000000'));
    returns(
        'select-f64-t_2',
        () => m.$('select-f64-t',
            [$f64('7FF0000000020304'), $f64('3FF0000000000000'), 1]),
        $f64('7FF0000000020304'));
    returns(
        'select-f64-t_3',
        () => m.$('select-f64-t',
            [$f64('7FF8000000000000'), $f64('3FF0000000000000'), 0]),
        $f64('3FF0000000000000'));
    returns(
        'select-f64-t_4',
        () => m.$('select-f64-t',
            [$f64('7FF0000000020304'), $f64('3FF0000000000000'), 0]),
        $f64('3FF0000000000000'));
    returns(
        'select-f64-t_5',
        () => m.$('select-f64-t',
            [$f64('4000000000000000'), $f64('7FF8000000000000'), 1]),
        $f64('4000000000000000'));
    returns(
        'select-f64-t_6',
        () => m.$('select-f64-t',
            [$f64('4000000000000000'), $f64('7FF0000000020304'), 1]),
        $f64('4000000000000000'));
    returns(
        'select-f64-t_7',
        () => m.$('select-f64-t',
            [$f64('4000000000000000'), $f64('7FF8000000000000'), 0]),
        $f64('7FF8000000000000'));
    returns(
        'select-f64-t_8',
        () => m.$('select-f64-t',
            [$f64('4000000000000000'), $f64('7FF0000000020304'), 0]),
        $f64('7FF0000000020304'));
    returns('as-select-first_0', () => m.$('as-select-first', [0]), 1);
    returns('as-select-first_1', () => m.$('as-select-first', [1]), 0);
    returns('as-select-mid_0', () => m.$('as-select-mid', [0]), 2);
    returns('as-select-mid_1', () => m.$('as-select-mid', [1]), 2);
    returns('as-select-last_0', () => m.$('as-select-last', [0]), 2);
    returns('as-select-last_1', () => m.$('as-select-last', [1]), 3);
    returns('as-loop-first_0', () => m.$('as-loop-first', [0]), 3);
    returns('as-loop-first_1', () => m.$('as-loop-first', [1]), 2);
    returns('as-loop-mid_0', () => m.$('as-loop-mid', [0]), 3);
    returns('as-loop-mid_1', () => m.$('as-loop-mid', [1]), 2);
    returns('as-loop-last_0', () => m.$('as-loop-last', [0]), 3);
    returns('as-loop-last_1', () => m.$('as-loop-last', [1]), 2);
    returns(
        'as-if-condition_0', () => m.$('as-if-condition', [0]), null /*void*/);
    returns(
        'as-if-condition_1', () => m.$('as-if-condition', [1]), null /*void*/);
    returns('as-if-then_0', () => m.$('as-if-then', [0]), 3);
    returns('as-if-then_1', () => m.$('as-if-then', [1]), 2);
    returns('as-if-else_0', () => m.$('as-if-else', [0]), 3);
    returns('as-if-else_1', () => m.$('as-if-else', [1]), 2);
    returns('as-br_if-first_0', () => m.$('as-br_if-first', [0]), 3);
    returns('as-br_if-first_1', () => m.$('as-br_if-first', [1]), 2);
    returns('as-br_if-last_0', () => m.$('as-br_if-last', [0]), 2);
    returns('as-br_if-last_1', () => m.$('as-br_if-last', [1]), 2);
    returns('as-br_table-first_0', () => m.$('as-br_table-first', [0]), 3);
    returns('as-br_table-first_1', () => m.$('as-br_table-first', [1]), 2);
    returns('as-br_table-last_0', () => m.$('as-br_table-last', [0]), 2);
    returns('as-br_table-last_1', () => m.$('as-br_table-last', [1]), 2);
    returns('as-call_indirect-first_0',
        () => m.$('as-call_indirect-first', [0]), 3);
    returns('as-call_indirect-first_1',
        () => m.$('as-call_indirect-first', [1]), 2);
    returns(
        'as-call_indirect-mid_0', () => m.$('as-call_indirect-mid', [0]), 1);
    returns(
        'as-call_indirect-mid_1', () => m.$('as-call_indirect-mid', [1]), 1);
    traps('as-call_indirect-last_0', () => m.$('as-call_indirect-last', [0]),
        'undefined element');
    traps('as-call_indirect-last_1', () => m.$('as-call_indirect-last', [1]),
        'undefined element');
    returns(
        'as-store-first_0', () => m.$('as-store-first', [0]), null /*void*/);
    returns(
        'as-store-first_1', () => m.$('as-store-first', [1]), null /*void*/);
    returns('as-store-last_0', () => m.$('as-store-last', [0]), null /*void*/);
    returns('as-store-last_1', () => m.$('as-store-last', [1]), null /*void*/);
    returns(
        'as-memory_grow-value_0', () => m.$('as-memory.grow-value', [0]), 1);
    returns(
        'as-memory_grow-value_1', () => m.$('as-memory.grow-value', [1]), 3);
    returns('as-call-value_0', () => m.$('as-call-value', [0]), 2);
    returns('as-call-value_1', () => m.$('as-call-value', [1]), 1);
    returns('as-return-value_0', () => m.$('as-return-value', [0]), 2);
    returns('as-return-value_1', () => m.$('as-return-value', [1]), 1);
    returns(
        'as-drop-operand_0', () => m.$('as-drop-operand', [0]), null /*void*/);
    returns(
        'as-drop-operand_1', () => m.$('as-drop-operand', [1]), null /*void*/);
    returns('as-br-value_0', () => m.$('as-br-value', [0]), 2);
    returns('as-br-value_1', () => m.$('as-br-value', [1]), 1);
    returns('as-local_set-value_0', () => m.$('as-local.set-value', [0]), 2);
    returns('as-local_set-value_1', () => m.$('as-local.set-value', [1]), 1);
    returns('as-local_tee-value_0', () => m.$('as-local.tee-value', [0]), 2);
    returns('as-local_tee-value_1', () => m.$('as-local.tee-value', [1]), 1);
    returns('as-global_set-value_0', () => m.$('as-global.set-value', [0]), 2);
    returns('as-global_set-value_1', () => m.$('as-global.set-value', [1]), 1);
    returns('as-load-operand_0', () => m.$('as-load-operand', [0]), 1);
    returns('as-load-operand_1', () => m.$('as-load-operand', [1]), 1);
    returns('as-unary-operand_0', () => m.$('as-unary-operand', [0]), 0);
    returns('as-unary-operand_1', () => m.$('as-unary-operand', [1]), 1);
    returns('as-binary-operand_0', () => m.$('as-binary-operand', [0]), 4);
    returns('as-binary-operand_1', () => m.$('as-binary-operand', [1]), 1);
    returns('as-test-operand_0', () => m.$('as-test-operand', [0]), 0);
    returns('as-test-operand_1', () => m.$('as-test-operand', [1]), 1);
    returns('as-compare-left_0', () => m.$('as-compare-left', [0]), 0);
    returns('as-compare-left_1', () => m.$('as-compare-left', [1]), 1);
    returns('as-compare-right_0', () => m.$('as-compare-right', [0]), 0);
    returns('as-compare-right_1', () => m.$('as-compare-right', [1]), 1);
    returns('as-convert-operand_0', () => m.$('as-convert-operand', [0]), 0);
    returns('as-convert-operand_1', () => m.$('as-convert-operand', [1]), 1);
  });

  // assertInvalid('invalid select.1.wasm', 'select/select.1.wasm', 'type mismatch');
  // assertInvalid('invalid select.2.wasm', 'select/select.2.wasm', 'invalid result arity');
  // assertInvalid('invalid select.3.wasm', 'select/select.3.wasm', 'invalid result arity');
  // assertInvalid('invalid select.4.wasm', 'select/select.4.wasm', 'type mismatch');
  // assertInvalid('invalid select.5.wasm', 'select/select.5.wasm', 'type mismatch');
  // assertInvalid('invalid select.6.wasm', 'select/select.6.wasm', 'type mismatch');
  // assertInvalid('invalid select.7.wasm', 'select/select.7.wasm', 'type mismatch');
  // assertInvalid('invalid select.8.wasm', 'select/select.8.wasm', 'type mismatch');
  // assertInvalid('invalid select.9.wasm', 'select/select.9.wasm', 'type mismatch');
  // assertInvalid('invalid select.10.wasm', 'select/select.10.wasm', 'type mismatch');
  // assertInvalid('invalid select.11.wasm', 'select/select.11.wasm', 'type mismatch');
  // assertInvalid('invalid select.12.wasm', 'select/select.12.wasm', 'type mismatch');
  // assertInvalid('invalid select.13.wasm', 'select/select.13.wasm', 'type mismatch');
  // assertInvalid('invalid select.14.wasm', 'select/select.14.wasm', 'type mismatch');
  // assertInvalid('invalid select.15.wasm', 'select/select.15.wasm', 'type mismatch');
  // assertInvalid('invalid select.16.wasm', 'select/select.16.wasm', 'type mismatch');
  // assertInvalid('invalid select.17.wasm', 'select/select.17.wasm', 'type mismatch');
  // assertInvalid('invalid select.18.wasm', 'select/select.18.wasm', 'type mismatch');
  // assertInvalid('invalid select.19.wasm', 'select/select.19.wasm', 'type mismatch');
  // assertInvalid('invalid select.20.wasm', 'select/select.20.wasm', 'type mismatch');
  // assertInvalid('invalid select.21.wasm', 'select/select.21.wasm', 'type mismatch');
  // assertInvalid('invalid select.22.wasm', 'select/select.22.wasm', 'type mismatch');
  // assertInvalid('invalid select.23.wasm', 'select/select.23.wasm', 'type mismatch');
  // assertInvalid('invalid select.24.wasm', 'select/select.24.wasm', 'type mismatch');
  // assertInvalid('invalid select.25.wasm', 'select/select.25.wasm', 'type mismatch');
  // assertInvalid('invalid select.26.wasm', 'select/select.26.wasm', 'type mismatch');
  // assertInvalid('invalid select.27.wasm', 'select/select.27.wasm', 'type mismatch');
  // assertInvalid('invalid select.28.wasm', 'select/select.28.wasm', 'type mismatch');

  group('select.29.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/select/select.29.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });
}
