// Generated from spec/test/core/custom.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('custom', () {
    group('custom.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/custom/custom.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('custom.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/custom/custom.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('custom.2.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/custom/custom.2.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed custom.3.wasm');
    // assertMalformed('malformed custom.4.wasm');
    // assertMalformed('malformed custom.5.wasm');
    // assertMalformed('malformed custom.6.wasm');
    // assertMalformed('malformed custom.7.wasm');
    // assertMalformed('malformed custom.8.wasm');
    // assertMalformed('malformed custom.9.wasm');
    // assertMalformed('malformed custom.10.wasm');
  });
}
