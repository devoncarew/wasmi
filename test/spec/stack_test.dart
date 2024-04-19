// Generated from spec/test/core/stack.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('stack.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/stack/stack.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns(
        'fac_expr_0', () => m.$('fac-expr', [0x19]), $i64('619FB0907BC00000'));
    returns('fac_stack_0', () => m.$('fac-stack', [0x19]),
        $i64('619FB0907BC00000'));
    returns('fac_mixed_0', () => m.$('fac-mixed', [0x19]),
        $i64('619FB0907BC00000'));
    returns('not_quite_a_tree_0', () => m.$('not-quite-a-tree', []), 3);
    returns('not_quite_a_tree_1', () => m.$('not-quite-a-tree', []), 9);
  });

  group('stack.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/stack/stack.1.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });
}
