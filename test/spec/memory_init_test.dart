// Generated from spec/test/core/memory_init.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  group('memory_init.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    action('test_0', () => m.$('test', []));
    returns('load8_u_0', () => m.$('load8_u', [0]), 0);
    returns('load8_u_1', () => m.$('load8_u', [1]), 0);
    returns('load8_u_2', () => m.$('load8_u', [2]), 3);
    returns('load8_u_3', () => m.$('load8_u', [3]), 1);
    returns('load8_u_4', () => m.$('load8_u', [4]), 4);
    returns('load8_u_5', () => m.$('load8_u', [5]), 1);
    returns('load8_u_6', () => m.$('load8_u', [6]), 0);
    returns('load8_u_7', () => m.$('load8_u', [7]), 0);
    returns('load8_u_8', () => m.$('load8_u', [8]), 0);
    returns('load8_u_9', () => m.$('load8_u', [9]), 0);
    returns('load8_u_10', () => m.$('load8_u', [0xA]), 0);
    returns('load8_u_11', () => m.$('load8_u', [0xB]), 0);
    returns('load8_u_12', () => m.$('load8_u', [0xC]), 7);
    returns('load8_u_13', () => m.$('load8_u', [0xD]), 5);
    returns('load8_u_14', () => m.$('load8_u', [0xE]), 2);
    returns('load8_u_15', () => m.$('load8_u', [0xF]), 3);
    returns('load8_u_16', () => m.$('load8_u', [0x10]), 6);
    returns('load8_u_17', () => m.$('load8_u', [0x11]), 0);
    returns('load8_u_18', () => m.$('load8_u', [0x12]), 0);
    returns('load8_u_19', () => m.$('load8_u', [0x13]), 0);
    returns('load8_u_20', () => m.$('load8_u', [0x14]), 0);
    returns('load8_u_21', () => m.$('load8_u', [0x15]), 0);
    returns('load8_u_22', () => m.$('load8_u', [0x16]), 0);
    returns('load8_u_23', () => m.$('load8_u', [0x17]), 0);
    returns('load8_u_24', () => m.$('load8_u', [0x18]), 0);
    returns('load8_u_25', () => m.$('load8_u', [0x19]), 0);
    returns('load8_u_26', () => m.$('load8_u', [0x1A]), 0);
    returns('load8_u_27', () => m.$('load8_u', [0x1B]), 0);
    returns('load8_u_28', () => m.$('load8_u', [0x1C]), 0);
    returns('load8_u_29', () => m.$('load8_u', [0x1D]), 0);
  });

  group('memory_init.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.1.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    action('test_0', () => m.$('test', []));
    returns('load8_u_0', () => m.$('load8_u', [0]), 0);
    returns('load8_u_1', () => m.$('load8_u', [1]), 0);
    returns('load8_u_2', () => m.$('load8_u', [2]), 3);
    returns('load8_u_3', () => m.$('load8_u', [3]), 1);
    returns('load8_u_4', () => m.$('load8_u', [4]), 4);
    returns('load8_u_5', () => m.$('load8_u', [5]), 1);
    returns('load8_u_6', () => m.$('load8_u', [6]), 0);
    returns('load8_u_7', () => m.$('load8_u', [7]), 2);
    returns('load8_u_8', () => m.$('load8_u', [8]), 7);
    returns('load8_u_9', () => m.$('load8_u', [9]), 1);
    returns('load8_u_10', () => m.$('load8_u', [0xA]), 8);
    returns('load8_u_11', () => m.$('load8_u', [0xB]), 0);
    returns('load8_u_12', () => m.$('load8_u', [0xC]), 7);
    returns('load8_u_13', () => m.$('load8_u', [0xD]), 5);
    returns('load8_u_14', () => m.$('load8_u', [0xE]), 2);
    returns('load8_u_15', () => m.$('load8_u', [0xF]), 3);
    returns('load8_u_16', () => m.$('load8_u', [0x10]), 6);
    returns('load8_u_17', () => m.$('load8_u', [0x11]), 0);
    returns('load8_u_18', () => m.$('load8_u', [0x12]), 0);
    returns('load8_u_19', () => m.$('load8_u', [0x13]), 0);
    returns('load8_u_20', () => m.$('load8_u', [0x14]), 0);
    returns('load8_u_21', () => m.$('load8_u', [0x15]), 0);
    returns('load8_u_22', () => m.$('load8_u', [0x16]), 0);
    returns('load8_u_23', () => m.$('load8_u', [0x17]), 0);
    returns('load8_u_24', () => m.$('load8_u', [0x18]), 0);
    returns('load8_u_25', () => m.$('load8_u', [0x19]), 0);
    returns('load8_u_26', () => m.$('load8_u', [0x1A]), 0);
    returns('load8_u_27', () => m.$('load8_u', [0x1B]), 0);
    returns('load8_u_28', () => m.$('load8_u', [0x1C]), 0);
    returns('load8_u_29', () => m.$('load8_u', [0x1D]), 0);
  });

  group('memory_init.2.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.2.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    action('test_0', () => m.$('test', []));
    returns('load8_u_0', () => m.$('load8_u', [0]), 0);
    returns('load8_u_1', () => m.$('load8_u', [1]), 0);
    returns('load8_u_2', () => m.$('load8_u', [2]), 3);
    returns('load8_u_3', () => m.$('load8_u', [3]), 1);
    returns('load8_u_4', () => m.$('load8_u', [4]), 4);
    returns('load8_u_5', () => m.$('load8_u', [5]), 1);
    returns('load8_u_6', () => m.$('load8_u', [6]), 0);
    returns('load8_u_7', () => m.$('load8_u', [7]), 0);
    returns('load8_u_8', () => m.$('load8_u', [8]), 0);
    returns('load8_u_9', () => m.$('load8_u', [9]), 0);
    returns('load8_u_10', () => m.$('load8_u', [0xA]), 0);
    returns('load8_u_11', () => m.$('load8_u', [0xB]), 0);
    returns('load8_u_12', () => m.$('load8_u', [0xC]), 7);
    returns('load8_u_13', () => m.$('load8_u', [0xD]), 5);
    returns('load8_u_14', () => m.$('load8_u', [0xE]), 2);
    returns('load8_u_15', () => m.$('load8_u', [0xF]), 9);
    returns('load8_u_16', () => m.$('load8_u', [0x10]), 2);
    returns('load8_u_17', () => m.$('load8_u', [0x11]), 7);
    returns('load8_u_18', () => m.$('load8_u', [0x12]), 0);
    returns('load8_u_19', () => m.$('load8_u', [0x13]), 0);
    returns('load8_u_20', () => m.$('load8_u', [0x14]), 0);
    returns('load8_u_21', () => m.$('load8_u', [0x15]), 0);
    returns('load8_u_22', () => m.$('load8_u', [0x16]), 0);
    returns('load8_u_23', () => m.$('load8_u', [0x17]), 0);
    returns('load8_u_24', () => m.$('load8_u', [0x18]), 0);
    returns('load8_u_25', () => m.$('load8_u', [0x19]), 0);
    returns('load8_u_26', () => m.$('load8_u', [0x1A]), 0);
    returns('load8_u_27', () => m.$('load8_u', [0x1B]), 0);
    returns('load8_u_28', () => m.$('load8_u', [0x1C]), 0);
    returns('load8_u_29', () => m.$('load8_u', [0x1D]), 0);
  });

  group('memory_init.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.3.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    action('test_0', () => m.$('test', []));
    returns('load8_u_0', () => m.$('load8_u', [0]), 0);
    returns('load8_u_1', () => m.$('load8_u', [1]), 0);
    returns('load8_u_2', () => m.$('load8_u', [2]), 3);
    returns('load8_u_3', () => m.$('load8_u', [3]), 1);
    returns('load8_u_4', () => m.$('load8_u', [4]), 4);
    returns('load8_u_5', () => m.$('load8_u', [5]), 1);
    returns('load8_u_6', () => m.$('load8_u', [6]), 0);
    returns('load8_u_7', () => m.$('load8_u', [7]), 2);
    returns('load8_u_8', () => m.$('load8_u', [8]), 7);
    returns('load8_u_9', () => m.$('load8_u', [9]), 1);
    returns('load8_u_10', () => m.$('load8_u', [0xA]), 8);
    returns('load8_u_11', () => m.$('load8_u', [0xB]), 0);
    returns('load8_u_12', () => m.$('load8_u', [0xC]), 7);
    returns('load8_u_13', () => m.$('load8_u', [0xD]), 0);
    returns('load8_u_14', () => m.$('load8_u', [0xE]), 7);
    returns('load8_u_15', () => m.$('load8_u', [0xF]), 5);
    returns('load8_u_16', () => m.$('load8_u', [0x10]), 2);
    returns('load8_u_17', () => m.$('load8_u', [0x11]), 7);
    returns('load8_u_18', () => m.$('load8_u', [0x12]), 0);
    returns('load8_u_19', () => m.$('load8_u', [0x13]), 9);
    returns('load8_u_20', () => m.$('load8_u', [0x14]), 0);
    returns('load8_u_21', () => m.$('load8_u', [0x15]), 7);
    returns('load8_u_22', () => m.$('load8_u', [0x16]), 0);
    returns('load8_u_23', () => m.$('load8_u', [0x17]), 8);
    returns('load8_u_24', () => m.$('load8_u', [0x18]), 8);
    returns('load8_u_25', () => m.$('load8_u', [0x19]), 0);
    returns('load8_u_26', () => m.$('load8_u', [0x1A]), 0);
    returns('load8_u_27', () => m.$('load8_u', [0x1B]), 0);
    returns('load8_u_28', () => m.$('load8_u', [0x1C]), 0);
    returns('load8_u_29', () => m.$('load8_u', [0x1D]), 0);
  });

  // assertInvalid('invalid memory_init.4.wasm', 'memory_init/memory_init.4.wasm', 'unknown data segment');
  // assertInvalid('invalid memory_init.5.wasm', 'memory_init/memory_init.5.wasm', 'unknown data segment');

  group('memory_init.6.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.6.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    action('test_0', () => m.$('test', []));
  });

  group('memory_init.7.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.7.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds memory access');
  });

  group('memory_init.8.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.8.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds memory access');
  });

  // assertInvalid('invalid memory_init.9.wasm', 'memory_init/memory_init.9.wasm', 'unknown memory 0');
  // assertInvalid('invalid memory_init.10.wasm', 'memory_init/memory_init.10.wasm', 'unknown data segment 1');

  group('memory_init.11.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.11.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    action('test_0', () => m.$('test', []));
  });

  group('memory_init.12.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.12.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds memory access');
  });

  group('memory_init.13.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.13.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds memory access');
  });

  group('memory_init.14.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.14.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds memory access');
  });

  group('memory_init.15.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.15.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds memory access');
  });

  group('memory_init.16.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.16.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    action('test_0', () => m.$('test', []));
  });

  group('memory_init.17.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.17.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds memory access');
  });

  group('memory_init.18.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.18.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    action('test_0', () => m.$('test', []));
  });

  group('memory_init.19.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.19.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    action('test_0', () => m.$('test', []));
  });

  group('memory_init.20.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.20.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds memory access');
  });

  // assertInvalid('invalid memory_init.21.wasm', 'memory_init/memory_init.21.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.22.wasm', 'memory_init/memory_init.22.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.23.wasm', 'memory_init/memory_init.23.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.24.wasm', 'memory_init/memory_init.24.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.25.wasm', 'memory_init/memory_init.25.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.26.wasm', 'memory_init/memory_init.26.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.27.wasm', 'memory_init/memory_init.27.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.28.wasm', 'memory_init/memory_init.28.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.29.wasm', 'memory_init/memory_init.29.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.30.wasm', 'memory_init/memory_init.30.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.31.wasm', 'memory_init/memory_init.31.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.32.wasm', 'memory_init/memory_init.32.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.33.wasm', 'memory_init/memory_init.33.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.34.wasm', 'memory_init/memory_init.34.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.35.wasm', 'memory_init/memory_init.35.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.36.wasm', 'memory_init/memory_init.36.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.37.wasm', 'memory_init/memory_init.37.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.38.wasm', 'memory_init/memory_init.38.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.39.wasm', 'memory_init/memory_init.39.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.40.wasm', 'memory_init/memory_init.40.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.41.wasm', 'memory_init/memory_init.41.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.42.wasm', 'memory_init/memory_init.42.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.43.wasm', 'memory_init/memory_init.43.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.44.wasm', 'memory_init/memory_init.44.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.45.wasm', 'memory_init/memory_init.45.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.46.wasm', 'memory_init/memory_init.46.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.47.wasm', 'memory_init/memory_init.47.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.48.wasm', 'memory_init/memory_init.48.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.49.wasm', 'memory_init/memory_init.49.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.50.wasm', 'memory_init/memory_init.50.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.51.wasm', 'memory_init/memory_init.51.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.52.wasm', 'memory_init/memory_init.52.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.53.wasm', 'memory_init/memory_init.53.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.54.wasm', 'memory_init/memory_init.54.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.55.wasm', 'memory_init/memory_init.55.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.56.wasm', 'memory_init/memory_init.56.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.57.wasm', 'memory_init/memory_init.57.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.58.wasm', 'memory_init/memory_init.58.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.59.wasm', 'memory_init/memory_init.59.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.60.wasm', 'memory_init/memory_init.60.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.61.wasm', 'memory_init/memory_init.61.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.62.wasm', 'memory_init/memory_init.62.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.63.wasm', 'memory_init/memory_init.63.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.64.wasm', 'memory_init/memory_init.64.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.65.wasm', 'memory_init/memory_init.65.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.66.wasm', 'memory_init/memory_init.66.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.67.wasm', 'memory_init/memory_init.67.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.68.wasm', 'memory_init/memory_init.68.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.69.wasm', 'memory_init/memory_init.69.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.70.wasm', 'memory_init/memory_init.70.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.71.wasm', 'memory_init/memory_init.71.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.72.wasm', 'memory_init/memory_init.72.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.73.wasm', 'memory_init/memory_init.73.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.74.wasm', 'memory_init/memory_init.74.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.75.wasm', 'memory_init/memory_init.75.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.76.wasm', 'memory_init/memory_init.76.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.77.wasm', 'memory_init/memory_init.77.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.78.wasm', 'memory_init/memory_init.78.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.79.wasm', 'memory_init/memory_init.79.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.80.wasm', 'memory_init/memory_init.80.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.81.wasm', 'memory_init/memory_init.81.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.82.wasm', 'memory_init/memory_init.82.wasm', 'type mismatch');
  // assertInvalid('invalid memory_init.83.wasm', 'memory_init/memory_init.83.wasm', 'type mismatch');

  group('memory_init.84.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.84.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('run_0', () => m.$('run', [0xFFF8, 0x10]),
        'out of bounds memory access');
    returns(
        'checkRange_0', () => m.$('checkRange', [0, 1, 0]), $i32('FFFFFFFF'));
  });

  group('memory_init.85.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.85.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('run_0', () => m.$('run', [0xFFF7, 0x10]),
        'out of bounds memory access');
    returns(
        'checkRange_0', () => m.$('checkRange', [0, 1, 0]), $i32('FFFFFFFF'));
  });

  group('memory_init.86.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.86.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('run_0', () => m.$('run', [0xFFC0, 0x1E]),
        'out of bounds memory access');
    returns(
        'checkRange_0', () => m.$('checkRange', [0, 1, 0]), $i32('FFFFFFFF'));
  });

  group('memory_init.87.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.87.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('run_0', () => m.$('run', [0xFFC1, 0x1F]),
        'out of bounds memory access');
    returns(
        'checkRange_0', () => m.$('checkRange', [0, 1, 0]), $i32('FFFFFFFF'));
  });

  group('memory_init.88.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.88.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('run_0', () => m.$('run', [0xFFF8, $i32('FFFFFF00')]),
        'out of bounds memory access');
    returns(
        'checkRange_0', () => m.$('checkRange', [0, 1, 0]), $i32('FFFFFFFF'));
  });

  group('memory_init.89.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.89.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });

    traps('run_0', () => m.$('run', [0, $i32('FFFFFFFC')]),
        'out of bounds memory access');
    returns(
        'checkRange_0', () => m.$('checkRange', [0, 1, 0]), $i32('FFFFFFFF'));
  });

  group('memory_init.90.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_init/memory_init.90.wasm'));
      m = Module(def, imports: {'spectest': specTestModule()});
    });
  });
}
