// Generated from spec/test/core/align.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('align', () {
    group('align.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.2.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.2.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.3.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.3.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.4.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.4.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.5.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.5.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.6.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.6.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.7.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.7.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.8.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.8.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.9.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.9.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.10.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.10.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.11.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.11.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.12.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.12.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.13.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.13.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.14.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.14.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.15.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.15.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.16.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.16.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.17.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.17.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.18.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.18.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.19.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.19.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.20.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.20.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.21.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.21.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('align.22.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.22.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertMalformed('malformed align.23.wat');
    // assertMalformed('malformed align.24.wat');
    // assertMalformed('malformed align.25.wat');
    // assertMalformed('malformed align.26.wat');
    // assertMalformed('malformed align.27.wat');
    // assertMalformed('malformed align.28.wat');
    // assertMalformed('malformed align.29.wat');
    // assertMalformed('malformed align.30.wat');
    // assertMalformed('malformed align.31.wat');
    // assertMalformed('malformed align.32.wat');
    // assertMalformed('malformed align.33.wat');
    // assertMalformed('malformed align.34.wat');
    // assertMalformed('malformed align.35.wat');
    // assertMalformed('malformed align.36.wat');
    // assertMalformed('malformed align.37.wat');
    // assertMalformed('malformed align.38.wat');
    // assertMalformed('malformed align.39.wat');
    // assertMalformed('malformed align.40.wat');
    // assertMalformed('malformed align.41.wat');
    // assertMalformed('malformed align.42.wat');
    // assertMalformed('malformed align.43.wat');
    // assertMalformed('malformed align.44.wat');
    // assertMalformed('malformed align.45.wat');
    // assertMalformed('malformed align.46.wat');
    // assertMalformed('malformed align.47.wat');
    // assertMalformed('malformed align.48.wat');
    // assertMalformed('malformed align.49.wat');
    // assertMalformed('malformed align.50.wat');
    // assertMalformed('malformed align.51.wat');
    // assertMalformed('malformed align.52.wat');
    // assertMalformed('malformed align.53.wat');
    // assertMalformed('malformed align.54.wat');
    // assertMalformed('malformed align.55.wat');
    // assertMalformed('malformed align.56.wat');
    // assertMalformed('malformed align.57.wat');
    // assertMalformed('malformed align.58.wat');
    // assertMalformed('malformed align.59.wat');
    // assertMalformed('malformed align.60.wat');
    // assertMalformed('malformed align.61.wat');
    // assertMalformed('malformed align.62.wat');
    // assertMalformed('malformed align.63.wat');
    // assertMalformed('malformed align.64.wat');
    // assertMalformed('malformed align.65.wat');
    // assertMalformed('malformed align.66.wat');
    // assertMalformed('malformed align.67.wat');
    // assertMalformed('malformed align.68.wat');
    // assertInvalid('invalid align.69.wasm', 'align/align.69.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.70.wasm', 'align/align.70.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.71.wasm', 'align/align.71.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.72.wasm', 'align/align.72.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.73.wasm', 'align/align.73.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.74.wasm', 'align/align.74.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.75.wasm', 'align/align.75.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.76.wasm', 'align/align.76.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.77.wasm', 'align/align.77.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.78.wasm', 'align/align.78.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.79.wasm', 'align/align.79.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.80.wasm', 'align/align.80.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.81.wasm', 'align/align.81.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.82.wasm', 'align/align.82.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.83.wasm', 'align/align.83.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.84.wasm', 'align/align.84.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.85.wasm', 'align/align.85.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.86.wasm', 'align/align.86.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.87.wasm', 'align/align.87.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.88.wasm', 'align/align.88.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.89.wasm', 'align/align.89.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.90.wasm', 'align/align.90.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.91.wasm', 'align/align.91.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.92.wasm', 'align/align.92.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.93.wasm', 'align/align.93.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.94.wasm', 'align/align.94.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.95.wasm', 'align/align.95.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.96.wasm', 'align/align.96.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.97.wasm', 'align/align.97.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.98.wasm', 'align/align.98.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.99.wasm', 'align/align.99.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.100.wasm', 'align/align.100.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.101.wasm', 'align/align.101.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.102.wasm', 'align/align.102.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.103.wasm', 'align/align.103.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.104.wasm', 'align/align.104.wasm', 'alignment must not be larger than natural', registered);
    // assertInvalid('invalid align.105.wasm', 'align/align.105.wasm', 'alignment must not be larger than natural', registered);

    group('align.106.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.106.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_align_switch_0', () => m.$('f32_align_switch', [0]),
          $f32('41200000'));
      returns('f32_align_switch_1', () => m.$('f32_align_switch', [1]),
          $f32('41200000'));
      returns('f32_align_switch_2', () => m.$('f32_align_switch', [2]),
          $f32('41200000'));
      returns('f32_align_switch_3', () => m.$('f32_align_switch', [3]),
          $f32('41200000'));
      returns('f64_align_switch_0', () => m.$('f64_align_switch', [0]),
          $f64('4024000000000000'));
      returns('f64_align_switch_1', () => m.$('f64_align_switch', [1]),
          $f64('4024000000000000'));
      returns('f64_align_switch_2', () => m.$('f64_align_switch', [2]),
          $f64('4024000000000000'));
      returns('f64_align_switch_3', () => m.$('f64_align_switch', [3]),
          $f64('4024000000000000'));
      returns('f64_align_switch_4', () => m.$('f64_align_switch', [4]),
          $f64('4024000000000000'));
      returns('i32_align_switch_0', () => m.$('i32_align_switch', [0, 0]), 0xA);
      returns('i32_align_switch_1', () => m.$('i32_align_switch', [0, 1]), 0xA);
      returns('i32_align_switch_2', () => m.$('i32_align_switch', [1, 0]), 0xA);
      returns('i32_align_switch_3', () => m.$('i32_align_switch', [1, 1]), 0xA);
      returns('i32_align_switch_4', () => m.$('i32_align_switch', [2, 0]), 0xA);
      returns('i32_align_switch_5', () => m.$('i32_align_switch', [2, 1]), 0xA);
      returns('i32_align_switch_6', () => m.$('i32_align_switch', [2, 2]), 0xA);
      returns('i32_align_switch_7', () => m.$('i32_align_switch', [3, 0]), 0xA);
      returns('i32_align_switch_8', () => m.$('i32_align_switch', [3, 1]), 0xA);
      returns('i32_align_switch_9', () => m.$('i32_align_switch', [3, 2]), 0xA);
      returns(
          'i32_align_switch_10', () => m.$('i32_align_switch', [4, 0]), 0xA);
      returns(
          'i32_align_switch_11', () => m.$('i32_align_switch', [4, 1]), 0xA);
      returns(
          'i32_align_switch_12', () => m.$('i32_align_switch', [4, 2]), 0xA);
      returns(
          'i32_align_switch_13', () => m.$('i32_align_switch', [4, 4]), 0xA);
      returns('i64_align_switch_0', () => m.$('i64_align_switch', [0, 0]), 0xA);
      returns('i64_align_switch_1', () => m.$('i64_align_switch', [0, 1]), 0xA);
      returns('i64_align_switch_2', () => m.$('i64_align_switch', [1, 0]), 0xA);
      returns('i64_align_switch_3', () => m.$('i64_align_switch', [1, 1]), 0xA);
      returns('i64_align_switch_4', () => m.$('i64_align_switch', [2, 0]), 0xA);
      returns('i64_align_switch_5', () => m.$('i64_align_switch', [2, 1]), 0xA);
      returns('i64_align_switch_6', () => m.$('i64_align_switch', [2, 2]), 0xA);
      returns('i64_align_switch_7', () => m.$('i64_align_switch', [3, 0]), 0xA);
      returns('i64_align_switch_8', () => m.$('i64_align_switch', [3, 1]), 0xA);
      returns('i64_align_switch_9', () => m.$('i64_align_switch', [3, 2]), 0xA);
      returns(
          'i64_align_switch_10', () => m.$('i64_align_switch', [4, 0]), 0xA);
      returns(
          'i64_align_switch_11', () => m.$('i64_align_switch', [4, 1]), 0xA);
      returns(
          'i64_align_switch_12', () => m.$('i64_align_switch', [4, 2]), 0xA);
      returns(
          'i64_align_switch_13', () => m.$('i64_align_switch', [4, 4]), 0xA);
      returns(
          'i64_align_switch_14', () => m.$('i64_align_switch', [5, 0]), 0xA);
      returns(
          'i64_align_switch_15', () => m.$('i64_align_switch', [5, 1]), 0xA);
      returns(
          'i64_align_switch_16', () => m.$('i64_align_switch', [5, 2]), 0xA);
      returns(
          'i64_align_switch_17', () => m.$('i64_align_switch', [5, 4]), 0xA);
      returns(
          'i64_align_switch_18', () => m.$('i64_align_switch', [6, 0]), 0xA);
      returns(
          'i64_align_switch_19', () => m.$('i64_align_switch', [6, 1]), 0xA);
      returns(
          'i64_align_switch_20', () => m.$('i64_align_switch', [6, 2]), 0xA);
      returns(
          'i64_align_switch_21', () => m.$('i64_align_switch', [6, 4]), 0xA);
      returns(
          'i64_align_switch_22', () => m.$('i64_align_switch', [6, 8]), 0xA);
    });

    group('align.107.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/align/align.107.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      traps('store_0', () => m.$('store', [0xFFFC, $i64('FFFFFFFFFFFFFFFF')]),
          'out of bounds memory access');
      returns('load_0', () => m.$('load', [0xFFFC]), 0);
    });
  });
}
