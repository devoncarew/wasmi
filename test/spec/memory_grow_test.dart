// Generated from spec/test/core/memory_grow.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('memory_grow.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_grow/memory_grow.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('size_0', () => m.$('size', []), 0);
    traps('store_at_zero_0', () => m.$('store_at_zero', []),
        'out of bounds memory access');
    traps('load_at_zero_0', () => m.$('load_at_zero', []),
        'out of bounds memory access');
    traps('store_at_page_size_0', () => m.$('store_at_page_size', []),
        'out of bounds memory access');
    traps('load_at_page_size_0', () => m.$('load_at_page_size', []),
        'out of bounds memory access');
    returns('grow_0', () => m.$('grow', [1]), 0);
    returns('size_1', () => m.$('size', []), 1);
    returns('load_at_zero_1', () => m.$('load_at_zero', []), 0);
    returns('store_at_zero_1', () => m.$('store_at_zero', []), null /*void*/);
    returns('load_at_zero_2', () => m.$('load_at_zero', []), 2);
    traps('store_at_page_size_1', () => m.$('store_at_page_size', []),
        'out of bounds memory access');
    traps('load_at_page_size_1', () => m.$('load_at_page_size', []),
        'out of bounds memory access');
    returns('grow_1', () => m.$('grow', [4]), 1);
    returns('size_2', () => m.$('size', []), 5);
    returns('load_at_zero_3', () => m.$('load_at_zero', []), 2);
    returns('store_at_zero_2', () => m.$('store_at_zero', []), null /*void*/);
    returns('load_at_zero_4', () => m.$('load_at_zero', []), 2);
    returns('load_at_page_size_2', () => m.$('load_at_page_size', []), 0);
    returns('store_at_page_size_2', () => m.$('store_at_page_size', []),
        null /*void*/);
    returns('load_at_page_size_3', () => m.$('load_at_page_size', []), 3);
  });

  group('memory_grow.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_grow/memory_grow.1.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('grow_0', () => m.$('grow', [0]), 0);
    returns('grow_1', () => m.$('grow', [1]), 0);
    returns('grow_2', () => m.$('grow', [0]), 1);
    returns('grow_3', () => m.$('grow', [2]), 1);
    returns('grow_4', () => m.$('grow', [0x320]), 3);
    returns('grow_5', () => m.$('grow', [0x10000]), $i32('FFFFFFFF'));
    returns('grow_6', () => m.$('grow', [0xFCE0]), $i32('FFFFFFFF'));
    returns('grow_7', () => m.$('grow', [1]), 0x323);
  });

  group('memory_grow.2.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_grow/memory_grow.2.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('grow_0', () => m.$('grow', [0]), 0);
    returns('grow_1', () => m.$('grow', [1]), 0);
    returns('grow_2', () => m.$('grow', [1]), 1);
    returns('grow_3', () => m.$('grow', [2]), 2);
    returns('grow_4', () => m.$('grow', [6]), 4);
    returns('grow_5', () => m.$('grow', [0]), 0xA);
    returns('grow_6', () => m.$('grow', [1]), $i32('FFFFFFFF'));
    returns('grow_7', () => m.$('grow', [0x10000]), $i32('FFFFFFFF'));
  });

  group('memory_grow.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_grow/memory_grow.3.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns(
        'check_memory_zero_0', () => m.$('check-memory-zero', [0, 0xFFFF]), 0);
    returns('grow_0', () => m.$('grow', [1]), 1);
    returns('check_memory_zero_1',
        () => m.$('check-memory-zero', [0x10000, 0x1FFFF]), 0);
    returns('grow_1', () => m.$('grow', [1]), 2);
    returns('check_memory_zero_2',
        () => m.$('check-memory-zero', [0x20000, 0x2FFFF]), 0);
    returns('grow_2', () => m.$('grow', [1]), 3);
    returns('check_memory_zero_3',
        () => m.$('check-memory-zero', [0x30000, 0x3FFFF]), 0);
    returns('grow_3', () => m.$('grow', [1]), 4);
    returns('check_memory_zero_4',
        () => m.$('check-memory-zero', [0x40000, 0x4FFFF]), 0);
    returns('grow_4', () => m.$('grow', [1]), 5);
    returns('check_memory_zero_5',
        () => m.$('check-memory-zero', [0x50000, 0x5FFFF]), 0);
  });

  group('memory_grow.4.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_grow/memory_grow.4.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('as_br_value_0', () => m.$('as-br-value', []), 1);
    returns('as_br_if_cond_0', () => m.$('as-br_if-cond', []), null /*void*/);
    returns('as_br_if_value_0', () => m.$('as-br_if-value', []), 1);
    returns('as_br_if_value_cond_0', () => m.$('as-br_if-value-cond', []), 6);
    returns('as_br_table_index_0', () => m.$('as-br_table-index', []),
        null /*void*/);
    returns('as_br_table_value_0', () => m.$('as-br_table-value', []), 1);
    returns('as_br_table_value_index_0',
        () => m.$('as-br_table-value-index', []), 6);
    returns('as_return_value_0', () => m.$('as-return-value', []), 1);
    returns('as_if_cond_0', () => m.$('as-if-cond', []), 0);
    returns('as_if_then_0', () => m.$('as-if-then', []), 1);
    returns('as_if_else_0', () => m.$('as-if-else', []), 1);
    returns('as_select_first_0', () => m.$('as-select-first', [0, 1]), 1);
    returns('as_select_second_0', () => m.$('as-select-second', [0, 0]), 1);
    returns('as_select_cond_0', () => m.$('as-select-cond', []), 0);
    returns(
        'as_call_first_0', () => m.$('as-call-first', []), $i32('FFFFFFFF'));
    returns('as_call_mid_0', () => m.$('as-call-mid', []), $i32('FFFFFFFF'));
    returns('as_call_last_0', () => m.$('as-call-last', []), $i32('FFFFFFFF'));
    returns('as_call_indirect_first_0', () => m.$('as-call_indirect-first', []),
        $i32('FFFFFFFF'));
    returns('as_call_indirect_mid_0', () => m.$('as-call_indirect-mid', []),
        $i32('FFFFFFFF'));
    returns('as_call_indirect_last_0', () => m.$('as-call_indirect-last', []),
        $i32('FFFFFFFF'));
    traps(
      'as_call_indirect_index_0',
      () => m.$('as-call_indirect-index', []),
      'undefined element',
      skip: 'failed',
    );
    returns('as_local_set_value_0', () => m.$('as-local.set-value', []),
        null /*void*/);
    returns('as_local_tee_value_0', () => m.$('as-local.tee-value', []), 1);
    returns('as_global_set_value_0', () => m.$('as-global.set-value', []),
        null /*void*/);
    returns('as_load_address_0', () => m.$('as-load-address', []), 0);
    returns('as_loadN_address_0', () => m.$('as-loadN-address', []), 0);
    returns(
        'as_store_address_0', () => m.$('as-store-address', []), null /*void*/);
    returns('as_store_value_0', () => m.$('as-store-value', []), null /*void*/);
    returns('as_storeN_address_0', () => m.$('as-storeN-address', []),
        null /*void*/);
    returns(
        'as_storeN_value_0', () => m.$('as-storeN-value', []), null /*void*/);
    returns('as_unary_operand_0', () => m.$('as-unary-operand', []), 0x1F);
    returns('as_binary_left_0', () => m.$('as-binary-left', []), 0xB);
    returns('as_binary_right_0', () => m.$('as-binary-right', []), 9);
    returns('as_test_operand_0', () => m.$('as-test-operand', []), 0);
    returns('as_compare_left_0', () => m.$('as-compare-left', []), 1);
    returns('as_compare_right_0', () => m.$('as-compare-right', []), 1);
    returns('as_memory_grow_size_0', () => m.$('as-memory.grow-size', []), 1);
  });

  // assertInvalid('invalid memory_grow.5.wasm', 'memory_grow/memory_grow.5.wasm', 'type mismatch');
  // assertInvalid('invalid memory_grow.6.wasm', 'memory_grow/memory_grow.6.wasm', 'type mismatch');
  // assertInvalid('invalid memory_grow.7.wasm', 'memory_grow/memory_grow.7.wasm', 'type mismatch');
  // assertInvalid('invalid memory_grow.8.wasm', 'memory_grow/memory_grow.8.wasm', 'type mismatch');
  // assertInvalid('invalid memory_grow.9.wasm', 'memory_grow/memory_grow.9.wasm', 'type mismatch');
  // assertInvalid('invalid memory_grow.10.wasm', 'memory_grow/memory_grow.10.wasm', 'type mismatch');
  // assertInvalid('invalid memory_grow.11.wasm', 'memory_grow/memory_grow.11.wasm', 'type mismatch');
}
