// Generated from spec/test/core/token.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('token', () {
    // assertMalformed('malformed token.0.wat');
    // assertMalformed('malformed token.1.wat');

    group('token.2.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.2.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.3.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.3.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.4.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.4.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.5.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.5.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.6.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.6.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.7.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.7.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.8.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.8.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.9.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.9.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.10.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.10.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.11.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.11.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.12.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.12.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.13.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.13.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.14.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.14.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.15.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.15.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.16.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.16.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.17.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.17.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.18.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.18.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.19.wat');

    group('token.20.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.20.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.21.wat');

    group('token.22.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.22.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.23.wat');

    group('token.24.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.24.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.25.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.25.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('token.26.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.26.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.27.wat');

    group('token.28.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.28.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.29.wat');

    group('token.30.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.30.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.31.wat');

    group('token.32.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.32.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.33.wat');

    group('token.34.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.34.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.35.wat');

    group('token.36.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.36.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.37.wat');

    group('token.38.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.38.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.39.wat');

    group('token.40.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.40.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.41.wat');

    group('token.42.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.42.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.43.wat');

    group('token.44.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.44.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.45.wat');

    group('token.46.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.46.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.47.wat');

    group('token.48.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.48.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.49.wat');

    group('token.50.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.50.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.51.wat');

    group('token.52.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/token/token.52.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed token.53.wat');
    // assertMalformed('malformed token.54.wat');
    // assertMalformed('malformed token.55.wat');
    // assertMalformed('malformed token.56.wat');
    // assertMalformed('malformed token.57.wat');
  });
}
