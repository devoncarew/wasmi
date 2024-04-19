// Generated from spec/test/core/global.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('global.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/global/global.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('get_a_0', () => m.$('get-a', []), $i32('FFFFFFFE'));
    returns('get_b_0', () => m.$('get-b', []), $i64('FFFFFFFFFFFFFFFB'));
    returns('get_r_0', () => m.$('get-r', []), null);
    returns('get_mr_0', () => m.$('get-mr', []), null);
    returns('get_x_0', () => m.$('get-x', []), $i32('FFFFFFF4'));
    returns('get_y_0', () => m.$('get-y', []), $i64('FFFFFFFFFFFFFFF1'));
    returns('get_z1_0', () => m.$('get-z1', []), 0x29A);
    returns('get_z2_0', () => m.$('get-z2', []), 0x29A);
    returns('get_3_0', () => m.$('get-3', []), $f32('C0400000'));
    returns('get_4_0', () => m.$('get-4', []), $f64('C010000000000000'));
    returns('get_7_0', () => m.$('get-7', []), $f32('C1500000'));
    returns('get_8_0', () => m.$('get-8', []), $f64('C02C000000000000'));
    returns('set_x_0', () => m.$('set-x', [6]), null /*void*/);
    returns('set_y_0', () => m.$('set-y', [7]), null /*void*/);
    returns('set_7_0', () => m.$('set-7', [$f32('41000000')]), null /*void*/);
    returns('set_8_0', () => m.$('set-8', [$f64('4022000000000000')]),
        null /*void*/);
    returns('get_x_1', () => m.$('get-x', []), 6);
    returns('get_y_1', () => m.$('get-y', []), 7);
    returns('get_7_1', () => m.$('get-7', []), $f32('41000000'));
    returns('get_8_1', () => m.$('get-8', []), $f64('4022000000000000'));
    returns('set_7_1', () => m.$('set-7', [$f32('41000000')]), null /*void*/);
    returns('set_8_1', () => m.$('set-8', [$f64('4022000000000000')]),
        null /*void*/);
    returns('set_mr_0', () => m.$('set-mr', [$externref(10)]), null /*void*/);
    returns('get_x_2', () => m.$('get-x', []), 6);
    returns('get_y_2', () => m.$('get-y', []), 7);
    returns('get_7_2', () => m.$('get-7', []), $f32('41000000'));
    returns('get_8_2', () => m.$('get-8', []), $f64('4022000000000000'));
    returns('get_mr_1', () => m.$('get-mr', []), $externref(10));
    returns('as_select_first_0', () => m.$('as-select-first', []), 6);
    returns('as_select_mid_0', () => m.$('as-select-mid', []), 2);
    returns('as_select_last_0', () => m.$('as-select-last', []), 2);
    returns('as_loop_first_0', () => m.$('as-loop-first', []), 6);
    returns('as_loop_mid_0', () => m.$('as-loop-mid', []), 6);
    returns('as_loop_last_0', () => m.$('as-loop-last', []), 6);
    returns('as_if_condition_0', () => m.$('as-if-condition', []), 2);
    returns('as_if_then_0', () => m.$('as-if-then', []), 6);
    returns('as_if_else_0', () => m.$('as-if-else', []), 6);
    returns('as_br_if_first_0', () => m.$('as-br_if-first', []), 6);
    returns('as_br_if_last_0', () => m.$('as-br_if-last', []), 2);
    returns('as_br_table_first_0', () => m.$('as-br_table-first', []), 6);
    returns('as_br_table_last_0', () => m.$('as-br_table-last', []), 2);
    returns(
        'as_call_indirect_first_0', () => m.$('as-call_indirect-first', []), 6);
    returns('as_call_indirect_mid_0', () => m.$('as-call_indirect-mid', []), 2);
    traps(
      'as_call_indirect_last_0',
      () => m.$('as-call_indirect-last', []),
      'undefined element',
      skip: 'failed',
    );
    returns('as_store_first_0', () => m.$('as-store-first', []), null /*void*/);
    returns('as_store_last_0', () => m.$('as-store-last', []), null /*void*/);
    returns('as_load_operand_0', () => m.$('as-load-operand', []), 1);
    returns('as_memory_grow_value_0', () => m.$('as-memory.grow-value', []), 1);
    returns('as_call_value_0', () => m.$('as-call-value', []), 6);
    returns('as_return_value_0', () => m.$('as-return-value', []), 6);
    returns(
        'as_drop_operand_0', () => m.$('as-drop-operand', []), null /*void*/);
    returns('as_br_value_0', () => m.$('as-br-value', []), 6);
    returns('as_local_set_value_0', () => m.$('as-local.set-value', [1]), 6);
    returns('as_local_tee_value_0', () => m.$('as-local.tee-value', [1]), 6);
    returns('as_global_set_value_0', () => m.$('as-global.set-value', []), 6);
    returns('as_unary_operand_0', () => m.$('as-unary-operand', []), 0);
    returns('as_binary_operand_0', () => m.$('as-binary-operand', []), 0x24);
    returns('as_compare_operand_0', () => m.$('as-compare-operand', []), 1);
  });

  // assertInvalid('invalid global.1.wasm', 'global/global.1.wasm', 'global is immutable');
  // assertInvalid('invalid global.2.wasm', 'global/global.2.wasm', 'global is immutable');

  group('global.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/global/global.3.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('global.4.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/global/global.4.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  // assertInvalid('invalid global.5.wasm', 'global/global.5.wasm', 'constant expression required');
  // assertInvalid('invalid global.6.wasm', 'global/global.6.wasm', 'constant expression required');
  // assertInvalid('invalid global.7.wasm', 'global/global.7.wasm', 'constant expression required');
  // assertInvalid('invalid global.8.wasm', 'global/global.8.wasm', 'constant expression required');
  // assertInvalid('invalid global.9.wasm', 'global/global.9.wasm', 'constant expression required');
  // assertInvalid('invalid global.10.wasm', 'global/global.10.wasm', 'constant expression required');
  // assertInvalid('invalid global.11.wasm', 'global/global.11.wasm', 'type mismatch');
  // assertInvalid('invalid global.12.wasm', 'global/global.12.wasm', 'type mismatch');
  // assertInvalid('invalid global.13.wasm', 'global/global.13.wasm', 'type mismatch');
  // assertInvalid('invalid global.14.wasm', 'global/global.14.wasm', 'type mismatch');
  // assertInvalid('invalid global.15.wasm', 'global/global.15.wasm', 'type mismatch');
  // assertInvalid('invalid global.16.wasm', 'global/global.16.wasm', 'type mismatch');
  // assertInvalid('invalid global.17.wasm', 'global/global.17.wasm', 'unknown global');
  // assertInvalid('invalid global.18.wasm', 'global/global.18.wasm', 'unknown global');
  // assertInvalid('invalid global.19.wasm', 'global/global.19.wasm', 'unknown global');
  // assertInvalid('invalid global.20.wasm', 'global/global.20.wasm', 'unknown global');
  // assertInvalid('invalid global.21.wasm', 'global/global.21.wasm', 'unknown global');
  // assertInvalid('invalid global.22.wasm', 'global/global.22.wasm', 'constant expression required');

  group('global.23.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/global/global.23.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  // assertMalformed('malformed global.24.wasm');
  // assertMalformed('malformed global.25.wasm');

  group('global.26.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/global/global.26.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  // assertMalformed('malformed global.27.wasm');
  // assertMalformed('malformed global.28.wasm');
  // assertInvalid('invalid global.29.wasm', 'global/global.29.wasm', 'unknown global');
  // assertInvalid('invalid global.30.wasm', 'global/global.30.wasm', 'unknown global');
  // assertInvalid('invalid global.31.wasm', 'global/global.31.wasm', 'unknown global');
  // assertInvalid('invalid global.32.wasm', 'global/global.32.wasm', 'unknown global');
  // assertInvalid('invalid global.33.wasm', 'global/global.33.wasm', 'unknown global');
  // assertInvalid('invalid global.34.wasm', 'global/global.34.wasm', 'unknown global');
  // assertInvalid('invalid global.35.wasm', 'global/global.35.wasm', 'unknown global');
  // assertInvalid('invalid global.36.wasm', 'global/global.36.wasm', 'unknown global');
  // assertInvalid('invalid global.37.wasm', 'global/global.37.wasm', 'type mismatch');
  // assertInvalid('invalid global.38.wasm', 'global/global.38.wasm', 'type mismatch');
  // assertInvalid('invalid global.39.wasm', 'global/global.39.wasm', 'type mismatch');
  // assertInvalid('invalid global.40.wasm', 'global/global.40.wasm', 'type mismatch');
  // assertInvalid('invalid global.41.wasm', 'global/global.41.wasm', 'type mismatch');
  // assertInvalid('invalid global.42.wasm', 'global/global.42.wasm', 'type mismatch');
  // assertInvalid('invalid global.43.wasm', 'global/global.43.wasm', 'type mismatch');
  // assertInvalid('invalid global.44.wasm', 'global/global.44.wasm', 'type mismatch');
  // assertInvalid('invalid global.45.wasm', 'global/global.45.wasm', 'type mismatch');
  // assertInvalid('invalid global.46.wasm', 'global/global.46.wasm', 'type mismatch');
  // assertInvalid('invalid global.47.wasm', 'global/global.47.wasm', 'type mismatch');
  // assertInvalid('invalid global.48.wasm', 'global/global.48.wasm', 'type mismatch');
  // assertMalformed('malformed global.49.wat');
  // assertMalformed('malformed global.50.wat');
  // assertMalformed('malformed global.51.wat');
}
