// Generated from spec/test/core/binary-leb128.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('binary-leb128', () {
    group('binary-leb128.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.2.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.2.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.3.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.3.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.4.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.4.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.5.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.5.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.6.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.6.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.7.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.7.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.8.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.8.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.9.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.9.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.10.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.10.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.11.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.11.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.12.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.12.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.13.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.13.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.14.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.14.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.15.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.15.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.16.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.16.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.17.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.17.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.18.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.18.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.19.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.19.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.20.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.20.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.21.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.21.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.22.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.22.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.23.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.23.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.24.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.24.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary-leb128.25.wasm');
    // assertMalformed('malformed binary-leb128.26.wasm');
    // assertMalformed('malformed binary-leb128.27.wasm');
    // assertMalformed('malformed binary-leb128.28.wasm');
    // assertMalformed('malformed binary-leb128.29.wasm');
    // assertMalformed('malformed binary-leb128.30.wasm');
    // assertMalformed('malformed binary-leb128.31.wasm');
    // assertMalformed('malformed binary-leb128.32.wasm');
    // assertMalformed('malformed binary-leb128.33.wasm');
    // assertMalformed('malformed binary-leb128.34.wasm');
    // assertMalformed('malformed binary-leb128.35.wasm');
    // assertMalformed('malformed binary-leb128.36.wasm');
    // assertMalformed('malformed binary-leb128.37.wasm');
    // assertMalformed('malformed binary-leb128.38.wasm');
    // assertMalformed('malformed binary-leb128.39.wasm');
    // assertMalformed('malformed binary-leb128.40.wasm');
    // assertMalformed('malformed binary-leb128.41.wasm');
    // assertMalformed('malformed binary-leb128.42.wasm');
    // assertMalformed('malformed binary-leb128.43.wasm');
    // assertMalformed('malformed binary-leb128.44.wasm');
    // assertMalformed('malformed binary-leb128.45.wasm');
    // assertMalformed('malformed binary-leb128.46.wasm');
    // assertMalformed('malformed binary-leb128.47.wasm');
    // assertMalformed('malformed binary-leb128.48.wasm');
    // assertMalformed('malformed binary-leb128.49.wasm');
    // assertMalformed('malformed binary-leb128.50.wasm');
    // assertMalformed('malformed binary-leb128.51.wasm');
    // assertMalformed('malformed binary-leb128.52.wasm');
    // assertMalformed('malformed binary-leb128.53.wasm');
    // assertMalformed('malformed binary-leb128.54.wasm');
    // assertMalformed('malformed binary-leb128.55.wasm');
    // assertMalformed('malformed binary-leb128.56.wasm');
    // assertMalformed('malformed binary-leb128.57.wasm');
    // assertMalformed('malformed binary-leb128.58.wasm');
    // assertMalformed('malformed binary-leb128.59.wasm');
    // assertMalformed('malformed binary-leb128.60.wasm');
    // assertMalformed('malformed binary-leb128.61.wasm');
    // assertMalformed('malformed binary-leb128.62.wasm');
    // assertMalformed('malformed binary-leb128.63.wasm');
    // assertMalformed('malformed binary-leb128.64.wasm');
    // assertMalformed('malformed binary-leb128.65.wasm');
    // assertMalformed('malformed binary-leb128.66.wasm');
    // assertMalformed('malformed binary-leb128.67.wasm');
    // assertMalformed('malformed binary-leb128.68.wasm');
    // assertMalformed('malformed binary-leb128.69.wasm');
    // assertMalformed('malformed binary-leb128.70.wasm');
    // assertMalformed('malformed binary-leb128.71.wasm');
    // assertMalformed('malformed binary-leb128.72.wasm');
    // assertMalformed('malformed binary-leb128.73.wasm');
    // assertMalformed('malformed binary-leb128.74.wasm');
    // assertMalformed('malformed binary-leb128.75.wasm');
    // assertMalformed('malformed binary-leb128.76.wasm');
    // assertMalformed('malformed binary-leb128.77.wasm');
    // assertMalformed('malformed binary-leb128.78.wasm');
    // assertMalformed('malformed binary-leb128.79.wasm');
    // assertMalformed('malformed binary-leb128.80.wasm');

    group('binary-leb128.81.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.81.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary-leb128.82.wasm');

    group('binary-leb128.83.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.83.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.84.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.84.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.85.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.85.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.86.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.86.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.87.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.87.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.88.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.88.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary-leb128.89.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/binary-leb128/binary-leb128.89.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary-leb128.90.wasm');
  });
}
