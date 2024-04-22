// Generated from spec/test/core/memory_redundancy.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('memory_redundancy', () {
    group('memory_redundancy.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/memory_redundancy/memory_redundancy.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'test_store_to_load_0', () => m.$('test_store_to_load', []), 0x80);
      action('zero_everything_0', () => m.$('zero_everything', []));
      returns(
          'test_redundant_load_0', () => m.$('test_redundant_load', []), 0x80);
      action('zero_everything_1', () => m.$('zero_everything', []));
      returns(
          'test_dead_store_0', () => m.$('test_dead_store', []), $f32('23'));
      action('zero_everything_2', () => m.$('zero_everything', []));
      returns('malloc_aliasing_0', () => m.$('malloc_aliasing', []), 0x2B);
    });
  });
}
