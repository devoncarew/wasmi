// Generated from spec/test/core/start.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('start', () {
    // assertInvalid('invalid start.0.wasm', 'start/start.0.wasm', 'unknown function', registered);
    // assertInvalid('invalid start.1.wasm', 'start/start.1.wasm', 'start function', registered);
    // assertInvalid('invalid start.2.wasm', 'start/start.2.wasm', 'start function', registered);

    group('start.3.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/start/start.3.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('get_0', () => m.$('get', []), 0x44);
      action('inc_0', () => m.$('inc', []));
      returns('get_1', () => m.$('get', []), 0x45);
      action('inc_1', () => m.$('inc', []));
      returns('get_2', () => m.$('get', []), 0x46);
    });

    group('start.4.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/start/start.4.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('get_0', () => m.$('get', []), 0x44);
      action('inc_0', () => m.$('inc', []));
      returns('get_1', () => m.$('get', []), 0x45);
      action('inc_1', () => m.$('inc', []));
      returns('get_2', () => m.$('get', []), 0x46);
    });

    group('start.5.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/start/start.5.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('start.6.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/start/start.6.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('start.7.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/start/start.7.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertUninstantiable('uninstantiable start.8.wasm', 'start/start.8.wasm', 'unreachable', registered);
    // assertMalformed('malformed start.9.wat');
  });
}
