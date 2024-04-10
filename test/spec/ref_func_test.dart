// Generated from spec/test/core/ref_func.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('ref_func.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/ref_func/ref_func.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('register-M', () => registered['M'] = importModuleFrom(m));
  });

  group('ref_func.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/ref_func/ref_func.1.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('is_null_f_0', () => m.$('is_null-f', []), 0);
    returns('is_null_g_0', () => m.$('is_null-g', []), 0);
    returns('is_null_v_0', () => m.$('is_null-v', []), 0);
    returns('call_f_0', () => m.$('call-f', [4]), 4);
    returns('call_g_0', () => m.$('call-g', [4]), 5);
    returns('call_v_0', () => m.$('call-v', [4]), 4);
    action('set_g_0', () => m.$('set-g', []));
    returns('call_v_1', () => m.$('call-v', [4]), 5);
    action('set_f_0', () => m.$('set-f', []));
    returns('call_v_2', () => m.$('call-v', [4]), 4);
  });

  // assertInvalid('invalid ref_func.2.wasm', 'ref_func/ref_func.2.wasm', 'unknown function 7');

  group('ref_func.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/ref_func/ref_func.3.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  // assertInvalid('invalid ref_func.4.wasm', 'ref_func/ref_func.4.wasm', 'undeclared function reference');
  // assertInvalid('invalid ref_func.5.wasm', 'ref_func/ref_func.5.wasm', 'undeclared function reference');
}
