// Generated from spec/test/core/data.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('data', () {
    group('data.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.2.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.2.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.3.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.3.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.4.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.4.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.5.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.5.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.6.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.6.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.7.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.7.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.8.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.8.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertInvalid('invalid data.9.wasm', 'data/data.9.wasm', 'unknown global', registered);
    // assertInvalid('invalid data.10.wasm', 'data/data.10.wasm', 'unknown global', registered);

    group('data.11.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.11.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.12.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.12.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.13.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.13.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.14.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.14.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.15.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.15.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.16.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.16.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.17.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.17.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.18.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.18.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.19.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.19.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.20.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.20.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.21.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.21.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.22.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.22.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.23.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.23.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.24.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.24.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.25.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.25.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('data.26.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/data/data.26.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertUninstantiable('uninstantiable data.27.wasm', 'data/data.27.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.28.wasm', 'data/data.28.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.29.wasm', 'data/data.29.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.30.wasm', 'data/data.30.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.31.wasm', 'data/data.31.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.32.wasm', 'data/data.32.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.33.wasm', 'data/data.33.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.34.wasm', 'data/data.34.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.35.wasm', 'data/data.35.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.36.wasm', 'data/data.36.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.37.wasm', 'data/data.37.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.38.wasm', 'data/data.38.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.39.wasm', 'data/data.39.wasm', 'out of bounds memory access', registered);
    // assertUninstantiable('uninstantiable data.40.wasm', 'data/data.40.wasm', 'out of bounds memory access', registered);
    // assertInvalid('invalid data.41.wasm', 'data/data.41.wasm', 'unknown memory', registered);
    // assertInvalid('invalid data.42.wasm', 'data/data.42.wasm', 'unknown memory 1', registered);
    // assertInvalid('invalid data.43.wasm', 'data/data.43.wasm', 'unknown memory 0', registered);
    // assertInvalid('invalid data.44.wasm', 'data/data.44.wasm', 'unknown memory 1', registered);
    // assertInvalid('invalid data.45.wasm', 'data/data.45.wasm', 'unknown memory 1', registered);
    // assertInvalid('invalid data.46.wasm', 'data/data.46.wasm', 'unknown memory 1', registered);
    // assertInvalid('invalid data.47.wasm', 'data/data.47.wasm', 'type mismatch', registered);
    // assertInvalid('invalid data.48.wasm', 'data/data.48.wasm', 'type mismatch', registered);
    // assertInvalid('invalid data.49.wasm', 'data/data.49.wasm', 'type mismatch', registered);
    // assertInvalid('invalid data.50.wasm', 'data/data.50.wasm', 'type mismatch', registered);
    // assertInvalid('invalid data.51.wasm', 'data/data.51.wasm', 'type mismatch', registered);
    // assertInvalid('invalid data.52.wasm', 'data/data.52.wasm', 'type mismatch', registered);
    // assertInvalid('invalid data.53.wasm', 'data/data.53.wasm', 'constant expression required', registered);
    // assertInvalid('invalid data.54.wasm', 'data/data.54.wasm', 'constant expression required', registered);
    // assertInvalid('invalid data.55.wasm', 'data/data.55.wasm', 'constant expression required', registered);
    // assertInvalid('invalid data.56.wasm', 'data/data.56.wasm', 'constant expression required', registered);
    // assertInvalid('invalid data.57.wasm', 'data/data.57.wasm', 'constant expression required', registered);
    // assertInvalid('invalid data.58.wasm', 'data/data.58.wasm', 'unknown global 0', registered);
    // assertInvalid('invalid data.59.wasm', 'data/data.59.wasm', 'unknown global 1', registered);
    // assertInvalid('invalid data.60.wasm', 'data/data.60.wasm', 'constant expression required', registered);
  });
}
