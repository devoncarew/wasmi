// Generated from spec/test/core/call.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('call.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/call/call.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('type_i32_0', () => m.$('type-i32', []), 0x132);
    returns('type_i64_0', () => m.$('type-i64', []), 0x164);
    returns('type_f32_0', () => m.$('type-f32', []), $f32('45732000'));
    returns('type_f64_0', () => m.$('type-f64', []), $f64('40AEC80000000000'));
    returns('type_i32_i64_0', () => m.$('type-i32-i64', []), [0x132, 0x164]);
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
    returns('type_all_i32_f64_0', () => m.$('type-all-i32-f64', []),
        [0x20, $f64('3FFA3D70A3D70A3D')]);
    returns('type_all_i32_i32_0', () => m.$('type-all-i32-i32', []), [2, 1]);
    returns('type_all_f32_f64_0', () => m.$('type-all-f32-f64', []),
        [$f64('4000000000000000'), $f32('3F800000')]);
    returns('type_all_f64_i32_0', () => m.$('type-all-f64-i32', []),
        [2, $f64('3FF0000000000000')]);
    returns(
        'as_binary_all_operands_0', () => m.$('as-binary-all-operands', []), 7);
    returns('as_mixed_operands_0', () => m.$('as-mixed-operands', []), 0x20);
    returns('as_call_all_operands_0', () => m.$('as-call-all-operands', []),
        [3, 4]);
    returns('fac_0', () => m.$('fac', [0]), 1);
    returns('fac_1', () => m.$('fac', [1]), 1);
    returns('fac_2', () => m.$('fac', [5]), 0x78);
    returns('fac_3', () => m.$('fac', [0x19]), $i64('619FB0907BC00000'));
    returns('fac_acc_0', () => m.$('fac-acc', [0, 1]), 1);
    returns('fac_acc_1', () => m.$('fac-acc', [1, 1]), 1);
    returns('fac_acc_2', () => m.$('fac-acc', [5, 1]), 0x78);
    returns(
        'fac_acc_3', () => m.$('fac-acc', [0x19, 1]), $i64('619FB0907BC00000'));
    returns('fib_0', () => m.$('fib', [0]), 1);
    returns('fib_1', () => m.$('fib', [1]), 1);
    returns('fib_2', () => m.$('fib', [2]), 2);
    returns('fib_3', () => m.$('fib', [5]), 8);
    returns('fib_4', () => m.$('fib', [0x14]), 0x2AC2);
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
    returns('as_br_if_first_0', () => m.$('as-br_if-first', []), 0x132);
    returns('as_br_if_last_0', () => m.$('as-br_if-last', []), 2);
    returns('as_br_table_first_0', () => m.$('as-br_table-first', []), 0x132);
    returns('as_br_table_last_0', () => m.$('as-br_table-last', []), 2);
    returns('as_call_indirect_first_0', () => m.$('as-call_indirect-first', []),
        0x132);
    returns('as_call_indirect_mid_0', () => m.$('as-call_indirect-mid', []), 2);
    traps(
      'as_call_indirect_last_0',
      () => m.$('as-call_indirect-last', []),
      'undefined element',
      skip: 'failed',
    );
    returns('as_store_first_0', () => m.$('as-store-first', []), null /*void*/);
    returns('as_store_last_0', () => m.$('as-store-last', []), null /*void*/);
    returns('as_memory_grow_value_0', () => m.$('as-memory.grow-value', []), 1);
    returns('as_return_value_0', () => m.$('as-return-value', []), 0x132);
    returns(
        'as_drop_operand_0', () => m.$('as-drop-operand', []), null /*void*/);
    returns('as_br_value_0', () => m.$('as-br-value', []), 0x132);
    returns('as_local_set_value_0', () => m.$('as-local.set-value', []), 0x132);
    returns('as_local_tee_value_0', () => m.$('as-local.tee-value', []), 0x132);
    returns(
        'as_global_set_value_0', () => m.$('as-global.set-value', []), 0x132);
    returns('as_load_operand_0', () => m.$('as-load-operand', []), 1);
    returns('as_unary_operand_0', () => m.$('as-unary-operand', []), $f32('0'));
    returns('as_binary_left_0', () => m.$('as-binary-left', []), 0xB);
    returns('as_binary_right_0', () => m.$('as-binary-right', []), 9);
    returns('as_test_operand_0', () => m.$('as-test-operand', []), 0);
    returns('as_compare_left_0', () => m.$('as-compare-left', []), 1);
    returns('as_compare_right_0', () => m.$('as-compare-right', []), 1);
    returns('as_convert_operand_0', () => m.$('as-convert-operand', []), 1);
    returns('return_from_long_argument_list_0',
        () => m.$('return-from-long-argument-list', [0x2A]), 0x2A);
  });

  // assertInvalid('invalid call.1.wasm', 'call/call.1.wasm', 'type mismatch');
  // assertInvalid('invalid call.2.wasm', 'call/call.2.wasm', 'type mismatch');
  // assertInvalid('invalid call.3.wasm', 'call/call.3.wasm', 'type mismatch');
  // assertInvalid('invalid call.4.wasm', 'call/call.4.wasm', 'type mismatch');
  // assertInvalid('invalid call.5.wasm', 'call/call.5.wasm', 'type mismatch');
  // assertInvalid('invalid call.6.wasm', 'call/call.6.wasm', 'type mismatch');
  // assertInvalid('invalid call.7.wasm', 'call/call.7.wasm', 'type mismatch');
  // assertInvalid('invalid call.8.wasm', 'call/call.8.wasm', 'type mismatch');
  // assertInvalid('invalid call.9.wasm', 'call/call.9.wasm', 'type mismatch');
  // assertInvalid('invalid call.10.wasm', 'call/call.10.wasm', 'type mismatch');
  // assertInvalid('invalid call.11.wasm', 'call/call.11.wasm', 'type mismatch');
  // assertInvalid('invalid call.12.wasm', 'call/call.12.wasm', 'type mismatch');
  // assertInvalid('invalid call.13.wasm', 'call/call.13.wasm', 'type mismatch');
  // assertInvalid('invalid call.14.wasm', 'call/call.14.wasm', 'type mismatch');
  // assertInvalid('invalid call.15.wasm', 'call/call.15.wasm', 'type mismatch');
  // assertInvalid('invalid call.16.wasm', 'call/call.16.wasm', 'type mismatch');
  // assertInvalid('invalid call.17.wasm', 'call/call.17.wasm', 'unknown function');
  // assertInvalid('invalid call.18.wasm', 'call/call.18.wasm', 'unknown function');
}
