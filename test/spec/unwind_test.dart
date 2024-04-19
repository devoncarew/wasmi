// Generated from spec/test/core/unwind.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('unwind.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/unwind/unwind.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('func_unwind_by_unreachable_0',
        () => m.$('func-unwind-by-unreachable', []), 'unreachable');
    returns('func_unwind_by_br_0', () => m.$('func-unwind-by-br', []),
        null /*void*/);
    returns('func_unwind_by_br_value_0',
        () => m.$('func-unwind-by-br-value', []), 9);
    returns('func_unwind_by_br_if_0', () => m.$('func-unwind-by-br_if', []),
        null /*void*/);
    returns('func_unwind_by_br_if_value_0',
        () => m.$('func-unwind-by-br_if-value', []), 9);
    returns('func_unwind_by_br_table_0',
        () => m.$('func-unwind-by-br_table', []), null /*void*/);
    returns('func_unwind_by_br_table_value_0',
        () => m.$('func-unwind-by-br_table-value', []), 9);
    returns(
        'func_unwind_by_return_0', () => m.$('func-unwind-by-return', []), 9);
    traps('block_unwind_by_unreachable_0',
        () => m.$('block-unwind-by-unreachable', []), 'unreachable');
    returns('block_unwind_by_br_0', () => m.$('block-unwind-by-br', []), 9);
    returns('block_unwind_by_br_value_0',
        () => m.$('block-unwind-by-br-value', []), 9);
    returns(
        'block_unwind_by_br_if_0', () => m.$('block-unwind-by-br_if', []), 9);
    returns('block_unwind_by_br_if_value_0',
        () => m.$('block-unwind-by-br_if-value', []), 9);
    returns('block_unwind_by_br_table_0',
        () => m.$('block-unwind-by-br_table', []), 9);
    returns('block_unwind_by_br_table_value_0',
        () => m.$('block-unwind-by-br_table-value', []), 9);
    returns(
        'block_unwind_by_return_0', () => m.$('block-unwind-by-return', []), 9);
    traps('block_nested_unwind_by_unreachable_0',
        () => m.$('block-nested-unwind-by-unreachable', []), 'unreachable');
    returns('block_nested_unwind_by_br_0',
        () => m.$('block-nested-unwind-by-br', []), 9);
    returns('block_nested_unwind_by_br_value_0',
        () => m.$('block-nested-unwind-by-br-value', []), 9);
    returns('block_nested_unwind_by_br_if_0',
        () => m.$('block-nested-unwind-by-br_if', []), 9);
    returns('block_nested_unwind_by_br_if_value_0',
        () => m.$('block-nested-unwind-by-br_if-value', []), 9);
    returns('block_nested_unwind_by_br_table_0',
        () => m.$('block-nested-unwind-by-br_table', []), 9);
    returns('block_nested_unwind_by_br_table_value_0',
        () => m.$('block-nested-unwind-by-br_table-value', []), 9);
    returns('block_nested_unwind_by_return_0',
        () => m.$('block-nested-unwind-by-return', []), 9);
    traps('unary_after_unreachable_0', () => m.$('unary-after-unreachable', []),
        'unreachable');
    returns('unary_after_br_0', () => m.$('unary-after-br', []), 9);
    returns('unary_after_br_if_0', () => m.$('unary-after-br_if', []), 9);
    returns('unary_after_br_table_0', () => m.$('unary-after-br_table', []), 9);
    returns('unary_after_return_0', () => m.$('unary-after-return', []), 9);
    traps('binary_after_unreachable_0',
        () => m.$('binary-after-unreachable', []), 'unreachable');
    returns('binary_after_br_0', () => m.$('binary-after-br', []), 9);
    returns('binary_after_br_if_0', () => m.$('binary-after-br_if', []), 9);
    returns(
        'binary_after_br_table_0', () => m.$('binary-after-br_table', []), 9);
    returns('binary_after_return_0', () => m.$('binary-after-return', []), 9);
    traps('select_after_unreachable_0',
        () => m.$('select-after-unreachable', []), 'unreachable');
    returns('select_after_br_0', () => m.$('select-after-br', []), 9);
    returns('select_after_br_if_0', () => m.$('select-after-br_if', []), 9);
    returns(
        'select_after_br_table_0', () => m.$('select-after-br_table', []), 9);
    returns('select_after_return_0', () => m.$('select-after-return', []), 9);
    traps('block_value_after_unreachable_0',
        () => m.$('block-value-after-unreachable', []), 'unreachable');
    returns('block_value_after_br_0', () => m.$('block-value-after-br', []), 9);
    returns('block_value_after_br_if_0',
        () => m.$('block-value-after-br_if', []), 9);
    returns('block_value_after_br_table_0',
        () => m.$('block-value-after-br_table', []), 9);
    returns('block_value_after_return_0',
        () => m.$('block-value-after-return', []), 9);
    traps('loop_value_after_unreachable_0',
        () => m.$('loop-value-after-unreachable', []), 'unreachable');
    returns('loop_value_after_br_0', () => m.$('loop-value-after-br', []), 9);
    returns(
        'loop_value_after_br_if_0', () => m.$('loop-value-after-br_if', []), 9);
    returns('loop_value_after_br_table_0',
        () => m.$('loop-value-after-br_table', []), 9);
    returns('loop_value_after_return_0',
        () => m.$('loop-value-after-return', []), 9);
  });
}
