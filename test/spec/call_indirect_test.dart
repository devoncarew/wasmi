// Generated from spec/test/core/call_indirect.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('call_indirect.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/call_indirect/call_indirect.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('type_i32_0', () => m.$('type-i32', []), 0x132);
    returns('type_i64_0', () => m.$('type-i64', []), 0x164);
    returns('type_f32_0', () => m.$('type-f32', []), $f32('45732000'));
    returns('type_f64_0', () => m.$('type-f64', []), $f64('40AEC80000000000'));
    returns('type_f64_i32_0', () => m.$('type-f64-i32', []),
        [$f64('40AEC80000000000'), 0x20]);
    returns('type_index_0', () => m.$('type-index', []), 0x64);
    returns('type_first_i32_0', () => m.$('type-first-i32', []), 0x20);
    returns('type_first_i64_0', () => m.$('type-first-i64', []), 0x40);
    returns(
        'type_first_f32_0', () => m.$('type-first-f32', []), $f32('3FA8F5C3'));
    returns('type_first_f64_0', () => m.$('type-first-f64', []),
        $f64('3FFA3D70A3D70A3D'));
    returns('type_second_i32_0', () => m.$('type-second-i32', []), 0x20);
    returns('type_second_i64_0', () => m.$('type-second-i64', []), 0x40);
    returns('type_second_f32_0', () => m.$('type-second-f32', []),
        $f32('42000000'));
    returns('type_second_f64_0', () => m.$('type-second-f64', []),
        $f64('4050066666666666'));
    returns('type_all_f64_i32_0', () => m.$('type-all-f64-i32', []),
        [$f64('40AEC80000000000'), 0x20]);
    returns('type_all_i32_f64_0', () => m.$('type-all-i32-f64', []),
        [1, $f64('4000000000000000')]);
    returns('type_all_i32_i64_0', () => m.$('type-all-i32-i64', []), [2, 1]);
    returns('dispatch_0', () => m.$('dispatch', [5, 2]), 2);
    returns('dispatch_1', () => m.$('dispatch', [5, 5]), 5);
    returns('dispatch_2', () => m.$('dispatch', [0xC, 5]), 0x78);
    returns('dispatch_3', () => m.$('dispatch', [0xD, 5]), 8);
    returns('dispatch_4', () => m.$('dispatch', [0x14, 2]), 2);
    traps('dispatch_5', () => m.$('dispatch', [0, 2]),
        'indirect call type mismatch');
    traps('dispatch_6', () => m.$('dispatch', [0xF, 2]),
        'indirect call type mismatch');
    traps(
      'dispatch_7',
      () => m.$('dispatch', [0x20, 2]),
      'undefined element',
      skip: 'failed',
    );
    traps(
      'dispatch_8',
      () => m.$('dispatch', [$i32('FFFFFFFF'), 2]),
      'undefined element',
      skip: 'failed',
    );
    traps(
      'dispatch_9',
      () => m.$('dispatch', [$i32('48538267'), 2]),
      'undefined element',
      skip: 'failed',
    );
    returns('dispatch_structural_i64_0',
        () => m.$('dispatch-structural-i64', [5]), 9);
    returns('dispatch_structural_i64_1',
        () => m.$('dispatch-structural-i64', [0xC]), 0x58980);
    returns('dispatch_structural_i64_2',
        () => m.$('dispatch-structural-i64', [0xD]), 0x37);
    returns('dispatch_structural_i64_3',
        () => m.$('dispatch-structural-i64', [0x14]), 9);
    traps(
        'dispatch_structural_i64_4',
        () => m.$('dispatch-structural-i64', [0xB]),
        'indirect call type mismatch');
    traps(
        'dispatch_structural_i64_5',
        () => m.$('dispatch-structural-i64', [0x16]),
        'indirect call type mismatch');
    returns('dispatch_structural_i32_0',
        () => m.$('dispatch-structural-i32', [4]), 9);
    returns('dispatch_structural_i32_1',
        () => m.$('dispatch-structural-i32', [0x17]), 0x58980);
    returns('dispatch_structural_i32_2',
        () => m.$('dispatch-structural-i32', [0x1A]), 0x37);
    returns('dispatch_structural_i32_3',
        () => m.$('dispatch-structural-i32', [0x13]), 9);
    traps(
        'dispatch_structural_i32_4',
        () => m.$('dispatch-structural-i32', [9]),
        'indirect call type mismatch');
    traps(
        'dispatch_structural_i32_5',
        () => m.$('dispatch-structural-i32', [0x15]),
        'indirect call type mismatch');
    returns('dispatch_structural_f32_0',
        () => m.$('dispatch-structural-f32', [6]), $f32('41100000'));
    returns('dispatch_structural_f32_1',
        () => m.$('dispatch-structural-f32', [0x18]), $f32('48B13000'));
    returns('dispatch_structural_f32_2',
        () => m.$('dispatch-structural-f32', [0x1B]), $f32('425C0000'));
    returns('dispatch_structural_f32_3',
        () => m.$('dispatch-structural-f32', [0x15]), $f32('41100000'));
    traps(
        'dispatch_structural_f32_4',
        () => m.$('dispatch-structural-f32', [8]),
        'indirect call type mismatch');
    traps(
        'dispatch_structural_f32_5',
        () => m.$('dispatch-structural-f32', [0x13]),
        'indirect call type mismatch');
    returns('dispatch_structural_f64_0',
        () => m.$('dispatch-structural-f64', [7]), $f64('4022000000000000'));
    returns('dispatch_structural_f64_1',
        () => m.$('dispatch-structural-f64', [0x19]), $f64('4116260000000000'));
    returns('dispatch_structural_f64_2',
        () => m.$('dispatch-structural-f64', [0x1C]), $f64('404B800000000000'));
    returns('dispatch_structural_f64_3',
        () => m.$('dispatch-structural-f64', [0x16]), $f64('4022000000000000'));
    traps(
        'dispatch_structural_f64_4',
        () => m.$('dispatch-structural-f64', [0xA]),
        'indirect call type mismatch');
    traps(
        'dispatch_structural_f64_5',
        () => m.$('dispatch-structural-f64', [0x12]),
        'indirect call type mismatch');
    returns('fac_i64_0', () => m.$('fac-i64', [0]), 1);
    returns('fac_i64_1', () => m.$('fac-i64', [1]), 1);
    returns('fac_i64_2', () => m.$('fac-i64', [5]), 0x78);
    returns(
        'fac_i64_3', () => m.$('fac-i64', [0x19]), $i64('619FB0907BC00000'));
    returns('fac_i32_0', () => m.$('fac-i32', [0]), 1);
    returns('fac_i32_1', () => m.$('fac-i32', [1]), 1);
    returns('fac_i32_2', () => m.$('fac-i32', [5]), 0x78);
    returns('fac_i32_3', () => m.$('fac-i32', [0xA]), $i32('375F00'));
    returns('fac_f32_0', () => m.$('fac-f32', [$f32('0')]), $f32('3F800000'));
    returns('fac_f32_1', () => m.$('fac-f32', [$f32('3F800000')]),
        $f32('3F800000'));
    returns('fac_f32_2', () => m.$('fac-f32', [$f32('40A00000')]),
        $f32('42F00000'));
    returns('fac_f32_3', () => m.$('fac-f32', [$f32('41200000')]),
        $f32('4A5D7C00'));
    returns('fac_f64_0', () => m.$('fac-f64', [$f64('0')]),
        $f64('3FF0000000000000'));
    returns('fac_f64_1', () => m.$('fac-f64', [$f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns('fac_f64_2', () => m.$('fac-f64', [$f64('4014000000000000')]),
        $f64('405E000000000000'));
    returns('fac_f64_3', () => m.$('fac-f64', [$f64('4024000000000000')]),
        $f64('414BAF8000000000'));
    returns('fib_i64_0', () => m.$('fib-i64', [0]), 1);
    returns('fib_i64_1', () => m.$('fib-i64', [1]), 1);
    returns('fib_i64_2', () => m.$('fib-i64', [2]), 2);
    returns('fib_i64_3', () => m.$('fib-i64', [5]), 8);
    returns('fib_i64_4', () => m.$('fib-i64', [0x14]), 0x2AC2);
    returns('fib_i32_0', () => m.$('fib-i32', [0]), 1);
    returns('fib_i32_1', () => m.$('fib-i32', [1]), 1);
    returns('fib_i32_2', () => m.$('fib-i32', [2]), 2);
    returns('fib_i32_3', () => m.$('fib-i32', [5]), 8);
    returns('fib_i32_4', () => m.$('fib-i32', [0x14]), 0x2AC2);
    returns('fib_f32_0', () => m.$('fib-f32', [$f32('0')]), $f32('3F800000'));
    returns('fib_f32_1', () => m.$('fib-f32', [$f32('3F800000')]),
        $f32('3F800000'));
    returns('fib_f32_2', () => m.$('fib-f32', [$f32('40000000')]),
        $f32('40000000'));
    returns('fib_f32_3', () => m.$('fib-f32', [$f32('40A00000')]),
        $f32('41000000'));
    returns('fib_f32_4', () => m.$('fib-f32', [$f32('41A00000')]),
        $f32('462B0800'));
    returns('fib_f64_0', () => m.$('fib-f64', [$f64('0')]),
        $f64('3FF0000000000000'));
    returns('fib_f64_1', () => m.$('fib-f64', [$f64('3FF0000000000000')]),
        $f64('3FF0000000000000'));
    returns('fib_f64_2', () => m.$('fib-f64', [$f64('4000000000000000')]),
        $f64('4000000000000000'));
    returns('fib_f64_3', () => m.$('fib-f64', [$f64('4014000000000000')]),
        $f64('4020000000000000'));
    returns('fib_f64_4', () => m.$('fib-f64', [$f64('4034000000000000')]),
        $f64('40C5610000000000'));
    returns('even_0', () => m.$('even', [0]), 0x2C);
    returns('even_1', () => m.$('even', [1]), 0x63);
    returns('even_2', () => m.$('even', [0x64]), 0x2C);
    returns('even_3', () => m.$('even', [0x4D]), 0x63);
    returns('odd_0', () => m.$('odd', [0]), 0x63);
    returns('odd_1', () => m.$('odd', [1]), 0x2C);
    returns('odd_2', () => m.$('odd', [0xC8]), 0x63);
    returns('odd_3', () => m.$('odd', [0x4D]), 0x2C);
    returns('as_select_first_0', () => m.$('as-select-first', []), 0x132);
    returns('as_select_mid_0', () => m.$('as-select-mid', []), 2);
    returns('as_select_last_0', () => m.$('as-select-last', []), 2);
    returns('as_if_condition_0', () => m.$('as-if-condition', []), 1);
    returns('as_br_if_first_0', () => m.$('as-br_if-first', []), 0x164);
    returns('as_br_if_last_0', () => m.$('as-br_if-last', []), 2);
    returns('as_br_table_first_0', () => m.$('as-br_table-first', []),
        $f32('45732000'));
    returns('as_br_table_last_0', () => m.$('as-br_table-last', []), 2);
    returns('as_store_first_0', () => m.$('as-store-first', []), null /*void*/);
    returns('as_store_last_0', () => m.$('as-store-last', []), null /*void*/);
    returns('as_memory_grow_value_0', () => m.$('as-memory.grow-value', []), 1);
    returns('as_return_value_0', () => m.$('as-return-value', []), 1);
    returns(
        'as_drop_operand_0', () => m.$('as-drop-operand', []), null /*void*/);
    returns('as_br_value_0', () => m.$('as-br-value', []), $f32('3F800000'));
    returns('as_local_set_value_0', () => m.$('as-local.set-value', []),
        $f64('3FF0000000000000'));
    returns('as_local_tee_value_0', () => m.$('as-local.tee-value', []),
        $f64('3FF0000000000000'));
    returns('as_global_set_value_0', () => m.$('as-global.set-value', []),
        $f64('3FF0000000000000'));
    returns('as_load_operand_0', () => m.$('as-load-operand', []), 1);
    returns('as_unary_operand_0', () => m.$('as-unary-operand', []), $f32('0'));
    returns('as_binary_left_0', () => m.$('as-binary-left', []), 0xB);
    returns('as_binary_right_0', () => m.$('as-binary-right', []), 9);
    returns('as_test_operand_0', () => m.$('as-test-operand', []), 0);
    returns('as_compare_left_0', () => m.$('as-compare-left', []), 1);
    returns('as_compare_right_0', () => m.$('as-compare-right', []), 1);
    returns('as_convert_operand_0', () => m.$('as-convert-operand', []), 1);
  });

  group('call_indirect.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/call_indirect/call_indirect.1.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('call_1_0', () => m.$('call-1', [2, 3, 0]), 5);
    returns('call_1_1', () => m.$('call-1', [2, 3, 1]), $i32('FFFFFFFF'));
    traps(
      'call_1_2',
      () => m.$('call-1', [2, 3, 2]),
      'undefined element',
      skip: 'failed',
    );
    returns('call_2_0', () => m.$('call-2', [2, 3, 0]), 6);
    returns('call_2_1', () => m.$('call-2', [2, 3, 1]), 0);
    returns('call_2_2', () => m.$('call-2', [2, 3, 2]), 2);
    traps(
      'call_2_3',
      () => m.$('call-2', [2, 3, 3]),
      'undefined element',
      skip: 'failed',
    );
    returns('call_3_0', () => m.$('call-3', [2, 3, 0]), $i32('FFFFFFFF'));
    returns('call_3_1', () => m.$('call-3', [2, 3, 1]), 6);
    traps('call_3_2', () => m.$('call-3', [2, 3, 2]), 'uninitialized element');
    traps('call_3_3', () => m.$('call-3', [2, 3, 3]),
        'indirect call type mismatch');
    traps(
      'call_3_4',
      () => m.$('call-3', [2, 3, 4]),
      'undefined element',
      skip: 'failed',
    );
  });

  // assertMalformed('malformed call_indirect.2.wat');
  // assertMalformed('malformed call_indirect.3.wat');
  // assertMalformed('malformed call_indirect.4.wat');
  // assertMalformed('malformed call_indirect.5.wat');
  // assertMalformed('malformed call_indirect.6.wat');
  // assertMalformed('malformed call_indirect.7.wat');
  // assertMalformed('malformed call_indirect.8.wat');
  // assertMalformed('malformed call_indirect.9.wat');
  // assertMalformed('malformed call_indirect.10.wat');
  // assertMalformed('malformed call_indirect.11.wat');
  // assertMalformed('malformed call_indirect.12.wat');
  // assertInvalid('invalid call_indirect.13.wasm', 'call_indirect/call_indirect.13.wasm', 'unknown table');
  // assertInvalid('invalid call_indirect.14.wasm', 'call_indirect/call_indirect.14.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.15.wasm', 'call_indirect/call_indirect.15.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.16.wasm', 'call_indirect/call_indirect.16.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.17.wasm', 'call_indirect/call_indirect.17.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.18.wasm', 'call_indirect/call_indirect.18.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.19.wasm', 'call_indirect/call_indirect.19.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.20.wasm', 'call_indirect/call_indirect.20.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.21.wasm', 'call_indirect/call_indirect.21.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.22.wasm', 'call_indirect/call_indirect.22.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.23.wasm', 'call_indirect/call_indirect.23.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.24.wasm', 'call_indirect/call_indirect.24.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.25.wasm', 'call_indirect/call_indirect.25.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.26.wasm', 'call_indirect/call_indirect.26.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.27.wasm', 'call_indirect/call_indirect.27.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.28.wasm', 'call_indirect/call_indirect.28.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.29.wasm', 'call_indirect/call_indirect.29.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.30.wasm', 'call_indirect/call_indirect.30.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.31.wasm', 'call_indirect/call_indirect.31.wasm', 'type mismatch');
  // assertInvalid('invalid call_indirect.32.wasm', 'call_indirect/call_indirect.32.wasm', 'unknown type');
  // assertInvalid('invalid call_indirect.33.wasm', 'call_indirect/call_indirect.33.wasm', 'unknown type');
  // assertInvalid('invalid call_indirect.34.wasm', 'call_indirect/call_indirect.34.wasm', 'unknown function');

  group('call_indirect.35.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/call_indirect/call_indirect.35.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });
}
