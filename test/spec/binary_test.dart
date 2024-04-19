// Generated from spec/test/core/binary.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('binary', () {
    group('binary.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary.2.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.2.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
        named[r'$M1'] = m;
      });
    });

    group('binary.3.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.3.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
        named[r'$M2'] = m;
      });
    });

    // assertMalformed('malformed binary.4.wasm');
    // assertMalformed('malformed binary.5.wasm');
    // assertMalformed('malformed binary.6.wasm');
    // assertMalformed('malformed binary.7.wasm');
    // assertMalformed('malformed binary.8.wasm');
    // assertMalformed('malformed binary.9.wasm');
    // assertMalformed('malformed binary.10.wasm');
    // assertMalformed('malformed binary.11.wasm');
    // assertMalformed('malformed binary.12.wasm');
    // assertMalformed('malformed binary.13.wasm');
    // assertMalformed('malformed binary.14.wasm');
    // assertMalformed('malformed binary.15.wasm');
    // assertMalformed('malformed binary.16.wasm');
    // assertMalformed('malformed binary.17.wasm');
    // assertMalformed('malformed binary.18.wasm');
    // assertMalformed('malformed binary.19.wasm');
    // assertMalformed('malformed binary.20.wasm');
    // assertMalformed('malformed binary.21.wasm');
    // assertMalformed('malformed binary.22.wasm');
    // assertMalformed('malformed binary.23.wasm');
    // assertMalformed('malformed binary.24.wasm');
    // assertMalformed('malformed binary.25.wasm');
    // assertMalformed('malformed binary.26.wasm');
    // assertMalformed('malformed binary.27.wasm');
    // assertMalformed('malformed binary.28.wasm');
    // assertMalformed('malformed binary.29.wasm');
    // assertMalformed('malformed binary.30.wasm');
    // assertMalformed('malformed binary.31.wasm');
    // assertMalformed('malformed binary.32.wasm');
    // assertMalformed('malformed binary.33.wasm');
    // assertMalformed('malformed binary.34.wasm');
    // assertMalformed('malformed binary.35.wasm');
    // assertMalformed('malformed binary.36.wasm');
    // assertMalformed('malformed binary.37.wasm');
    // assertMalformed('malformed binary.38.wasm');
    // assertMalformed('malformed binary.39.wasm');
    // assertMalformed('malformed binary.40.wasm');
    // assertMalformed('malformed binary.41.wasm');
    // assertMalformed('malformed binary.42.wasm');
    // assertMalformed('malformed binary.43.wasm');
    // assertMalformed('malformed binary.44.wasm');
    // assertMalformed('malformed binary.45.wasm');
    // assertMalformed('malformed binary.46.wasm');
    // assertMalformed('malformed binary.47.wasm');
    // assertMalformed('malformed binary.48.wasm');
    // assertMalformed('malformed binary.49.wasm');
    // assertMalformed('malformed binary.50.wasm');
    // assertMalformed('malformed binary.51.wasm');
    // assertMalformed('malformed binary.52.wasm');
    // assertMalformed('malformed binary.53.wasm');
    // assertMalformed('malformed binary.54.wasm');

    group('binary.55.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.55.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary.56.wasm');
    // assertMalformed('malformed binary.57.wasm');
    // assertMalformed('malformed binary.58.wasm');
    // assertMalformed('malformed binary.59.wasm');

    group('binary.60.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.60.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary.61.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.61.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary.62.wasm');
    // assertMalformed('malformed binary.63.wasm');
    // assertMalformed('malformed binary.64.wasm');
    // assertMalformed('malformed binary.65.wasm');
    // assertMalformed('malformed binary.66.wasm');
    // assertMalformed('malformed binary.67.wasm');

    group('binary.68.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.68.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary.69.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.69.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('binary.70.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.70.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary.71.wasm');
    // assertMalformed('malformed binary.72.wasm');

    group('binary.73.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.73.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary.74.wasm');
    // assertMalformed('malformed binary.75.wasm');
    // assertMalformed('malformed binary.76.wasm');
    // assertMalformed('malformed binary.77.wasm');
    // assertMalformed('malformed binary.78.wasm');
    // assertMalformed('malformed binary.79.wasm');
    // assertMalformed('malformed binary.80.wasm');
    // assertMalformed('malformed binary.81.wasm');

    group('binary.82.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.82.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary.83.wasm');
    // assertMalformed('malformed binary.84.wasm');
    // assertMalformed('malformed binary.85.wasm');
    // assertMalformed('malformed binary.86.wasm');

    group('binary.87.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.87.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary.88.wasm');
    // assertMalformed('malformed binary.89.wasm');
    // assertMalformed('malformed binary.90.wasm');
    // assertMalformed('malformed binary.91.wasm');
    // assertMalformed('malformed binary.92.wasm');

    group('binary.93.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.93.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary.94.wasm');
    // assertMalformed('malformed binary.95.wasm');

    group('binary.96.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.96.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary.97.wasm');
    // assertMalformed('malformed binary.98.wasm');

    group('binary.99.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.99.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary.100.wasm');
    // assertMalformed('malformed binary.101.wasm');
    // assertMalformed('malformed binary.102.wasm');

    group('binary.103.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.103.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary.104.wasm');
    // assertMalformed('malformed binary.105.wasm');
    // assertMalformed('malformed binary.106.wasm');
    // assertMalformed('malformed binary.107.wasm');

    group('binary.108.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.108.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary.109.wasm');

    group('binary.110.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/binary/binary.110.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed binary.111.wasm');
  });
}
