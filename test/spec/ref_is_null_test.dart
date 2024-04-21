// Generated from spec/test/core/ref_is_null.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('ref_is_null', () {
    group('ref_is_null.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/ref_is_null/ref_is_null.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('funcref_0', () => m.$('funcref', [null]), 1);
      returns('externref_0', () => m.$('externref', [null]), 1);
      returns('externref_1', () => m.$('externref', [$externref(1)]), 0);
      action('init_0', () => m.$('init', [$externref(0)]));
      returns('funcref_elem_0', () => m.$('funcref-elem', [0]), 1);
      returns('externref_elem_0', () => m.$('externref-elem', [0]), 1);
      returns('funcref_elem_1', () => m.$('funcref-elem', [1]), 0);
      returns('externref_elem_1', () => m.$('externref-elem', [1]), 0);
      action('deinit_0', () => m.$('deinit', []));
      returns('funcref_elem_2', () => m.$('funcref-elem', [0]), 1);
      returns('externref_elem_2', () => m.$('externref-elem', [0]), 1);
      returns('funcref_elem_3', () => m.$('funcref-elem', [1]), 1);
      returns('externref_elem_3', () => m.$('externref-elem', [1]), 1);
    });

    // assertInvalid('invalid ref_is_null.1.wasm', 'ref_is_null/ref_is_null.1.wasm', 'type mismatch', registered);
    // assertInvalid('invalid ref_is_null.2.wasm', 'ref_is_null/ref_is_null.2.wasm', 'type mismatch', registered);
  });
}
