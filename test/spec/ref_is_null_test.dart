// Generated from spec/test/core/ref_is_null.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  group('ref_is_null.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/ref_is_null/ref_is_null.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    returns('funcref_0', () => m.$('funcref', [null]), 1);
    returns('externref_0', () => m.$('externref', [null]), 1);
    returns('externref_1', () => m.$('externref', [$externref('1')]), 0);
    action('init_0', () => m.$('init', [$externref('0')]));
    returns('funcref-elem_0', () => m.$('funcref-elem', [0]), 1);
    returns('externref-elem_0', () => m.$('externref-elem', [0]), 1);
    returns('funcref-elem_1', () => m.$('funcref-elem', [1]), 0);
    returns('externref-elem_1', () => m.$('externref-elem', [1]), 0);
    action('deinit_0', () => m.$('deinit', []));
    returns('funcref-elem_2', () => m.$('funcref-elem', [0]), 1);
    returns('externref-elem_2', () => m.$('externref-elem', [0]), 1);
    returns('funcref-elem_3', () => m.$('funcref-elem', [1]), 1);
    returns('externref-elem_3', () => m.$('externref-elem', [1]), 1);
  });

  // assertInvalid('invalid ref_is_null.1.wasm', 'ref_is_null/ref_is_null.1.wasm', 'type mismatch');
  // assertInvalid('invalid ref_is_null.2.wasm', 'ref_is_null/ref_is_null.2.wasm', 'type mismatch');
}
