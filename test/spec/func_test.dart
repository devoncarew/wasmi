// Generated from spec/test/core/func.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('func.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/func/func.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('type_use_1_0', () => m.$('type-use-1', []), null /*void*/);
    returns('type_use_2_0', () => m.$('type-use-2', []), 0);
    returns('type_use_3_0', () => m.$('type-use-3', [1]), null /*void*/);
    returns('type_use_4_0',
        () => m.$('type-use-4', [1, $f64('3FF0000000000000'), 1]), 0);
    returns('type_use_5_0', () => m.$('type-use-5', []), 0);
    returns('type_use_6_0', () => m.$('type-use-6', [1]), null /*void*/);
    returns('type_use_7_0',
        () => m.$('type-use-7', [1, $f64('3FF0000000000000'), 1]), 0);
    returns('local_first_i32_0', () => m.$('local-first-i32', []), 0);
    returns('local_first_i64_0', () => m.$('local-first-i64', []), 0);
    returns('local_first_f32_0', () => m.$('local-first-f32', []), $f32('0'));
    returns('local_first_f64_0', () => m.$('local-first-f64', []), $f64('0'));
    returns('local_second_i32_0', () => m.$('local-second-i32', []), 0);
    returns('local_second_i64_0', () => m.$('local-second-i64', []), 0);
    returns('local_second_f32_0', () => m.$('local-second-f32', []), $f32('0'));
    returns('local_second_f64_0', () => m.$('local-second-f64', []), $f64('0'));
    returns('local_mixed_0', () => m.$('local-mixed', []), $f64('0'));
    returns('param_first_i32_0', () => m.$('param-first-i32', [2, 3]), 2);
    returns('param_first_i64_0', () => m.$('param-first-i64', [2, 3]), 2);
    returns(
        'param_first_f32_0',
        () => m.$('param-first-f32', [$f32('40000000'), $f32('40400000')]),
        $f32('40000000'));
    returns(
        'param_first_f64_0',
        () => m.$('param-first-f64',
            [$f64('4000000000000000'), $f64('4008000000000000')]),
        $f64('4000000000000000'));
    returns('param_second_i32_0', () => m.$('param-second-i32', [2, 3]), 3);
    returns('param_second_i64_0', () => m.$('param-second-i64', [2, 3]), 3);
    returns(
        'param_second_f32_0',
        () => m.$('param-second-f32', [$f32('40000000'), $f32('40400000')]),
        $f32('40400000'));
    returns(
        'param_second_f64_0',
        () => m.$('param-second-f64',
            [$f64('4000000000000000'), $f64('4008000000000000')]),
        $f64('4008000000000000'));
    returns(
        'param_mixed_0',
        () => m.$('param-mixed',
            [$f32('3F800000'), 2, 3, 4, $f64('4016000000000000'), 6]),
        $f64('4016000000000000'));
    returns('empty_0', () => m.$('empty', []), null /*void*/);
    returns('value_void_0', () => m.$('value-void', []), null /*void*/);
    returns('value_i32_0', () => m.$('value-i32', []), 0x4D);
    returns('value_i64_0', () => m.$('value-i64', []), 0x1E61);
    returns('value_f32_0', () => m.$('value-f32', []), $f32('429B6666'));
    returns(
        'value_f64_0', () => m.$('value-f64', []), $f64('40537147AE147AE1'));
    returns('value_i32_f64_0', () => m.$('value-i32-f64', []),
        [0x4D, $f64('401C000000000000')]);
    returns(
        'value_i32_i32_i32_0', () => m.$('value-i32-i32-i32', []), [1, 2, 3]);
    returns(
        'value_block_void_0', () => m.$('value-block-void', []), null /*void*/);
    returns('value_block_i32_0', () => m.$('value-block-i32', []), 0x4D);
    returns(
        'value_block_i32_i64_0', () => m.$('value-block-i32-i64', []), [1, 2]);
    returns('return_empty_0', () => m.$('return-empty', []), null /*void*/);
    returns('return_i32_0', () => m.$('return-i32', []), 0x4E);
    returns('return_i64_0', () => m.$('return-i64', []), 0x1EC6);
    returns('return_f32_0', () => m.$('return-f32', []), $f32('429D6666'));
    returns(
        'return_f64_0', () => m.$('return-f64', []), $f64('4053B1EB851EB852'));
    returns('return_i32_f64_0', () => m.$('return-i32-f64', []),
        [0x4E, $f64('4053B1EB851EB852')]);
    returns(
        'return_i32_i32_i32_0', () => m.$('return-i32-i32-i32', []), [1, 2, 3]);
    returns('return_block_i32_0', () => m.$('return-block-i32', []), 0x4D);
    returns('return_block_i32_i64_0', () => m.$('return-block-i32-i64', []),
        [1, 2]);
    returns('break_empty_0', () => m.$('break-empty', []), null /*void*/);
    returns('break_i32_0', () => m.$('break-i32', []), 0x4F);
    returns('break_i64_0', () => m.$('break-i64', []), 0x1F2B);
    returns('break_f32_0', () => m.$('break-f32', []), $f32('429FCCCD'));
    returns(
        'break_f64_0', () => m.$('break-f64', []), $f64('4053F28F5C28F5C3'));
    returns('break_i32_f64_0', () => m.$('break-i32-f64', []),
        [0x4F, $f64('4053F28F5C28F5C3')]);
    returns(
        'break_i32_i32_i32_0', () => m.$('break-i32-i32-i32', []), [1, 2, 3]);
    returns('break_block_i32_0', () => m.$('break-block-i32', []), 0x4D);
    returns(
        'break_block_i32_i64_0', () => m.$('break-block-i32-i64', []), [1, 2]);
    returns('break_br_if_empty_0', () => m.$('break-br_if-empty', [0]),
        null /*void*/);
    returns('break_br_if_empty_1', () => m.$('break-br_if-empty', [2]),
        null /*void*/);
    returns('break_br_if_num_0', () => m.$('break-br_if-num', [0]), 0x33);
    returns('break_br_if_num_1', () => m.$('break-br_if-num', [1]), 0x32);
    returns('break_br_if_num_num_0', () => m.$('break-br_if-num-num', [0]),
        [0x33, 0x34]);
    returns('break_br_if_num_num_1', () => m.$('break-br_if-num-num', [1]),
        [0x32, 0x33]);
    returns('break_br_table_empty_0', () => m.$('break-br_table-empty', [0]),
        null /*void*/);
    returns('break_br_table_empty_1', () => m.$('break-br_table-empty', [1]),
        null /*void*/);
    returns('break_br_table_empty_2', () => m.$('break-br_table-empty', [5]),
        null /*void*/);
    returns('break_br_table_empty_3',
        () => m.$('break-br_table-empty', [$i32('FFFFFFFF')]), null /*void*/);
    returns('break_br_table_num_0', () => m.$('break-br_table-num', [0]), 0x32);
    returns('break_br_table_num_1', () => m.$('break-br_table-num', [1]), 0x32);
    returns(
        'break_br_table_num_2', () => m.$('break-br_table-num', [0xA]), 0x32);
    returns('break_br_table_num_3',
        () => m.$('break-br_table-num', [$i32('FFFFFF9C')]), 0x32);
    returns('break_br_table_num_num_0',
        () => m.$('break-br_table-num-num', [0]), [0x32, 0x33]);
    returns('break_br_table_num_num_1',
        () => m.$('break-br_table-num-num', [1]), [0x32, 0x33]);
    returns('break_br_table_num_num_2',
        () => m.$('break-br_table-num-num', [0xA]), [0x32, 0x33]);
    returns('break_br_table_num_num_3',
        () => m.$('break-br_table-num-num', [$i32('FFFFFF9C')]), [0x32, 0x33]);
    returns('break_br_table_nested_empty_0',
        () => m.$('break-br_table-nested-empty', [0]), null /*void*/);
    returns('break_br_table_nested_empty_1',
        () => m.$('break-br_table-nested-empty', [1]), null /*void*/);
    returns('break_br_table_nested_empty_2',
        () => m.$('break-br_table-nested-empty', [3]), null /*void*/);
    returns(
        'break_br_table_nested_empty_3',
        () => m.$('break-br_table-nested-empty', [$i32('FFFFFFFE')]),
        null /*void*/);
    returns('break_br_table_nested_num_0',
        () => m.$('break-br_table-nested-num', [0]), 0x34);
    returns('break_br_table_nested_num_1',
        () => m.$('break-br_table-nested-num', [1]), 0x32);
    returns('break_br_table_nested_num_2',
        () => m.$('break-br_table-nested-num', [2]), 0x34);
    returns('break_br_table_nested_num_3',
        () => m.$('break-br_table-nested-num', [$i32('FFFFFFFD')]), 0x34);
    returns('break_br_table_nested_num_num_0',
        () => m.$('break-br_table-nested-num-num', [0]), [0x65, 0x34]);
    returns('break_br_table_nested_num_num_1',
        () => m.$('break-br_table-nested-num-num', [1]), [0x32, 0x33]);
    returns('break_br_table_nested_num_num_2',
        () => m.$('break-br_table-nested-num-num', [2]), [0x65, 0x34]);
    returns(
        'break_br_table_nested_num_num_3',
        () => m.$('break-br_table-nested-num-num', [$i32('FFFFFFFD')]),
        [0x65, 0x34]);
    returns(
        'large_sig_0',
        () => m.$('large-sig', [
              0,
              1,
              $f32('40000000'),
              $f32('40400000'),
              4,
              $f64('4014000000000000'),
              $f32('40C00000'),
              7,
              8,
              9,
              $f32('41200000'),
              $f64('4026000000000000'),
              $f64('4028000000000000'),
              $f64('402A000000000000'),
              0xE,
              0xF,
              $f32('41800000')
            ]),
        [
          $f64('4014000000000000'),
          $f32('40000000'),
          0,
          8,
          7,
          1,
          $f32('40400000'),
          9,
          4,
          $f32('40C00000'),
          $f64('402A000000000000'),
          $f64('4026000000000000'),
          0xF,
          $f32('41800000'),
          0xE,
          $f64('4028000000000000')
        ]);
    returns('init_local_i32_0', () => m.$('init-local-i32', []), 0);
    returns('init_local_i64_0', () => m.$('init-local-i64', []), 0);
    returns('init_local_f32_0', () => m.$('init-local-f32', []), $f32('0'));
    returns('init_local_f64_0', () => m.$('init-local-f64', []), $f64('0'));
  });

  group('func.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/func/func.1.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  // assertInvalid('invalid func.2.wasm', 'func/func.2.wasm', 'unknown type');

  group('func.4.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/func/func.4.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('f_0', () => m.$('f', [0x2A]), 0);
    returns('g_0', () => m.$('g', [0x2A]), 0);
    returns('p_0', () => m.$('p', []), 0x2A);
  });

  group('func.5.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/func/func.5.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('signature_explicit_reused_0',
        () => m.$('signature-explicit-reused', []), null /*void*/);
    returns('signature_implicit_reused_0',
        () => m.$('signature-implicit-reused', []), null /*void*/);
    returns('signature_explicit_duplicate_0',
        () => m.$('signature-explicit-duplicate', []), null /*void*/);
    returns('signature_implicit_duplicate_0',
        () => m.$('signature-implicit-duplicate', []), null /*void*/);
  });

  // assertInvalid('invalid func.16.wasm', 'func/func.16.wasm', 'type mismatch');
  // assertInvalid('invalid func.17.wasm', 'func/func.17.wasm', 'type mismatch');
  // assertInvalid('invalid func.18.wasm', 'func/func.18.wasm', 'type mismatch');
  // assertInvalid('invalid func.19.wasm', 'func/func.19.wasm', 'type mismatch');
  // assertInvalid('invalid func.20.wasm', 'func/func.20.wasm', 'type mismatch');
  // assertInvalid('invalid func.21.wasm', 'func/func.21.wasm', 'type mismatch');
  // assertInvalid('invalid func.22.wasm', 'func/func.22.wasm', 'type mismatch');
  // assertInvalid('invalid func.23.wasm', 'func/func.23.wasm', 'type mismatch');
  // assertInvalid('invalid func.24.wasm', 'func/func.24.wasm', 'type mismatch');
  // assertInvalid('invalid func.25.wasm', 'func/func.25.wasm', 'type mismatch');
  // assertInvalid('invalid func.26.wasm', 'func/func.26.wasm', 'type mismatch');
  // assertInvalid('invalid func.27.wasm', 'func/func.27.wasm', 'type mismatch');
  // assertInvalid('invalid func.28.wasm', 'func/func.28.wasm', 'type mismatch');
  // assertInvalid('invalid func.29.wasm', 'func/func.29.wasm', 'type mismatch');
  // assertInvalid('invalid func.30.wasm', 'func/func.30.wasm', 'type mismatch');
  // assertInvalid('invalid func.31.wasm', 'func/func.31.wasm', 'type mismatch');
  // assertInvalid('invalid func.32.wasm', 'func/func.32.wasm', 'type mismatch');
  // assertInvalid('invalid func.33.wasm', 'func/func.33.wasm', 'type mismatch');
  // assertInvalid('invalid func.34.wasm', 'func/func.34.wasm', 'type mismatch');
  // assertInvalid('invalid func.35.wasm', 'func/func.35.wasm', 'type mismatch');
  // assertInvalid('invalid func.36.wasm', 'func/func.36.wasm', 'type mismatch');
  // assertInvalid('invalid func.37.wasm', 'func/func.37.wasm', 'type mismatch');
  // assertInvalid('invalid func.38.wasm', 'func/func.38.wasm', 'type mismatch');
  // assertInvalid('invalid func.39.wasm', 'func/func.39.wasm', 'type mismatch');
  // assertInvalid('invalid func.40.wasm', 'func/func.40.wasm', 'type mismatch');
  // assertInvalid('invalid func.41.wasm', 'func/func.41.wasm', 'type mismatch');
  // assertInvalid('invalid func.42.wasm', 'func/func.42.wasm', 'type mismatch');
  // assertInvalid('invalid func.43.wasm', 'func/func.43.wasm', 'type mismatch');
  // assertInvalid('invalid func.44.wasm', 'func/func.44.wasm', 'type mismatch');
  // assertInvalid('invalid func.45.wasm', 'func/func.45.wasm', 'type mismatch');
  // assertInvalid('invalid func.46.wasm', 'func/func.46.wasm', 'type mismatch');
  // assertInvalid('invalid func.47.wasm', 'func/func.47.wasm', 'type mismatch');
  // assertInvalid('invalid func.48.wasm', 'func/func.48.wasm', 'type mismatch');
  // assertInvalid('invalid func.49.wasm', 'func/func.49.wasm', 'type mismatch');
  // assertInvalid('invalid func.50.wasm', 'func/func.50.wasm', 'type mismatch');
  // assertInvalid('invalid func.51.wasm', 'func/func.51.wasm', 'type mismatch');
  // assertInvalid('invalid func.52.wasm', 'func/func.52.wasm', 'type mismatch');
  // assertInvalid('invalid func.53.wasm', 'func/func.53.wasm', 'type mismatch');
  // assertInvalid('invalid func.54.wasm', 'func/func.54.wasm', 'type mismatch');
  // assertInvalid('invalid func.55.wasm', 'func/func.55.wasm', 'type mismatch');
  // assertInvalid('invalid func.56.wasm', 'func/func.56.wasm', 'type mismatch');
  // assertInvalid('invalid func.57.wasm', 'func/func.57.wasm', 'type mismatch');
  // assertInvalid('invalid func.58.wasm', 'func/func.58.wasm', 'type mismatch');
  // assertInvalid('invalid func.59.wasm', 'func/func.59.wasm', 'type mismatch');
  // assertInvalid('invalid func.60.wasm', 'func/func.60.wasm', 'type mismatch');
  // assertInvalid('invalid func.61.wasm', 'func/func.61.wasm', 'type mismatch');
  // assertInvalid('invalid func.62.wasm', 'func/func.62.wasm', 'type mismatch');
  // assertInvalid('invalid func.63.wasm', 'func/func.63.wasm', 'type mismatch');
}
