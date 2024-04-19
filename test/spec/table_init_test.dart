// Generated from spec/test/core/table_init.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('table_init.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('register-a', () => registered['a'] = importModuleFrom(m));
  });

  group('table_init.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.1.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_0', () => m.$('check', [0]), 'uninitialized element');
    traps('check_1', () => m.$('check', [1]), 'uninitialized element');
    returns('check_2', () => m.$('check', [2]), 3);
    returns('check_3', () => m.$('check', [3]), 1);
    returns('check_4', () => m.$('check', [4]), 4);
    returns('check_5', () => m.$('check', [5]), 1);
    traps('check_6', () => m.$('check', [6]), 'uninitialized element');
    returns('check_7', () => m.$('check', [7]), 2);
    returns('check_8', () => m.$('check', [8]), 7);
    returns('check_9', () => m.$('check', [9]), 1);
    returns('check_10', () => m.$('check', [0xA]), 8);
    traps('check_11', () => m.$('check', [0xB]), 'uninitialized element');
    returns('check_12', () => m.$('check', [0xC]), 7);
    returns('check_13', () => m.$('check', [0xD]), 5);
    returns('check_14', () => m.$('check', [0xE]), 2);
    returns('check_15', () => m.$('check', [0xF]), 3);
    returns('check_16', () => m.$('check', [0x10]), 6);
    traps('check_17', () => m.$('check', [0x11]), 'uninitialized element');
    traps('check_18', () => m.$('check', [0x12]), 'uninitialized element');
    traps('check_19', () => m.$('check', [0x13]), 'uninitialized element');
    traps('check_20', () => m.$('check', [0x14]), 'uninitialized element');
    traps('check_21', () => m.$('check', [0x15]), 'uninitialized element');
    traps('check_22', () => m.$('check', [0x16]), 'uninitialized element');
    traps('check_23', () => m.$('check', [0x17]), 'uninitialized element');
    traps('check_24', () => m.$('check', [0x18]), 'uninitialized element');
    traps('check_25', () => m.$('check', [0x19]), 'uninitialized element');
    traps('check_26', () => m.$('check', [0x1A]), 'uninitialized element');
    traps('check_27', () => m.$('check', [0x1B]), 'uninitialized element');
    traps('check_28', () => m.$('check', [0x1C]), 'uninitialized element');
    traps('check_29', () => m.$('check', [0x1D]), 'uninitialized element');
  });

  group('table_init.2.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.2.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_0', () => m.$('check', [0]), 'uninitialized element');
    traps('check_1', () => m.$('check', [1]), 'uninitialized element');
    returns('check_2', () => m.$('check', [2]), 3);
    returns('check_3', () => m.$('check', [3]), 1);
    returns('check_4', () => m.$('check', [4]), 4);
    returns('check_5', () => m.$('check', [5]), 1);
    traps('check_6', () => m.$('check', [6]), 'uninitialized element');
    traps('check_7', () => m.$('check', [7]), 'uninitialized element');
    traps('check_8', () => m.$('check', [8]), 'uninitialized element');
    traps('check_9', () => m.$('check', [9]), 'uninitialized element');
    traps('check_10', () => m.$('check', [0xA]), 'uninitialized element');
    traps('check_11', () => m.$('check', [0xB]), 'uninitialized element');
    returns('check_12', () => m.$('check', [0xC]), 7);
    returns('check_13', () => m.$('check', [0xD]), 5);
    returns('check_14', () => m.$('check', [0xE]), 2);
    returns('check_15', () => m.$('check', [0xF]), 9);
    returns('check_16', () => m.$('check', [0x10]), 2);
    returns('check_17', () => m.$('check', [0x11]), 7);
    traps('check_18', () => m.$('check', [0x12]), 'uninitialized element');
    traps('check_19', () => m.$('check', [0x13]), 'uninitialized element');
    traps('check_20', () => m.$('check', [0x14]), 'uninitialized element');
    traps('check_21', () => m.$('check', [0x15]), 'uninitialized element');
    traps('check_22', () => m.$('check', [0x16]), 'uninitialized element');
    traps('check_23', () => m.$('check', [0x17]), 'uninitialized element');
    traps('check_24', () => m.$('check', [0x18]), 'uninitialized element');
    traps('check_25', () => m.$('check', [0x19]), 'uninitialized element');
    traps('check_26', () => m.$('check', [0x1A]), 'uninitialized element');
    traps('check_27', () => m.$('check', [0x1B]), 'uninitialized element');
    traps('check_28', () => m.$('check', [0x1C]), 'uninitialized element');
    traps('check_29', () => m.$('check', [0x1D]), 'uninitialized element');
  });

  group('table_init.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.3.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_0', () => m.$('check', [0]), 'uninitialized element');
    traps('check_1', () => m.$('check', [1]), 'uninitialized element');
    returns('check_2', () => m.$('check', [2]), 3);
    returns('check_3', () => m.$('check', [3]), 1);
    returns('check_4', () => m.$('check', [4]), 4);
    returns('check_5', () => m.$('check', [5]), 1);
    traps('check_6', () => m.$('check', [6]), 'uninitialized element');
    returns('check_7', () => m.$('check', [7]), 2);
    returns('check_8', () => m.$('check', [8]), 7);
    returns('check_9', () => m.$('check', [9]), 1);
    returns('check_10', () => m.$('check', [0xA]), 8);
    traps('check_11', () => m.$('check', [0xB]), 'uninitialized element');
    returns('check_12', () => m.$('check', [0xC]), 7);
    traps('check_13', () => m.$('check', [0xD]), 'uninitialized element');
    returns('check_14', () => m.$('check', [0xE]), 7);
    returns('check_15', () => m.$('check', [0xF]), 5);
    returns('check_16', () => m.$('check', [0x10]), 2);
    returns('check_17', () => m.$('check', [0x11]), 7);
    traps('check_18', () => m.$('check', [0x12]), 'uninitialized element');
    returns('check_19', () => m.$('check', [0x13]), 9);
    traps('check_20', () => m.$('check', [0x14]), 'uninitialized element');
    returns('check_21', () => m.$('check', [0x15]), 7);
    traps('check_22', () => m.$('check', [0x16]), 'uninitialized element');
    returns('check_23', () => m.$('check', [0x17]), 8);
    returns('check_24', () => m.$('check', [0x18]), 8);
    traps('check_25', () => m.$('check', [0x19]), 'uninitialized element');
    traps('check_26', () => m.$('check', [0x1A]), 'uninitialized element');
    traps('check_27', () => m.$('check', [0x1B]), 'uninitialized element');
    traps('check_28', () => m.$('check', [0x1C]), 'uninitialized element');
    traps('check_29', () => m.$('check', [0x1D]), 'uninitialized element');
  });

  group('table_init.4.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.4.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_0', () => m.$('check', [0]), 'uninitialized element');
    traps('check_1', () => m.$('check', [1]), 'uninitialized element');
    returns('check_2', () => m.$('check', [2]), 3);
    returns('check_3', () => m.$('check', [3]), 1);
    returns('check_4', () => m.$('check', [4]), 4);
    returns('check_5', () => m.$('check', [5]), 1);
    traps('check_6', () => m.$('check', [6]), 'uninitialized element');
    returns('check_7', () => m.$('check', [7]), 2);
    returns('check_8', () => m.$('check', [8]), 7);
    returns('check_9', () => m.$('check', [9]), 1);
    returns('check_10', () => m.$('check', [0xA]), 8);
    traps('check_11', () => m.$('check', [0xB]), 'uninitialized element');
    returns('check_12', () => m.$('check', [0xC]), 7);
    returns('check_13', () => m.$('check', [0xD]), 5);
    returns('check_14', () => m.$('check', [0xE]), 2);
    returns('check_15', () => m.$('check', [0xF]), 3);
    returns('check_16', () => m.$('check', [0x10]), 6);
    traps('check_17', () => m.$('check', [0x11]), 'uninitialized element');
    traps('check_18', () => m.$('check', [0x12]), 'uninitialized element');
    traps('check_19', () => m.$('check', [0x13]), 'uninitialized element');
    traps('check_20', () => m.$('check', [0x14]), 'uninitialized element');
    traps('check_21', () => m.$('check', [0x15]), 'uninitialized element');
    traps('check_22', () => m.$('check', [0x16]), 'uninitialized element');
    traps('check_23', () => m.$('check', [0x17]), 'uninitialized element');
    traps('check_24', () => m.$('check', [0x18]), 'uninitialized element');
    traps('check_25', () => m.$('check', [0x19]), 'uninitialized element');
    traps('check_26', () => m.$('check', [0x1A]), 'uninitialized element');
    traps('check_27', () => m.$('check', [0x1B]), 'uninitialized element');
    traps('check_28', () => m.$('check', [0x1C]), 'uninitialized element');
    traps('check_29', () => m.$('check', [0x1D]), 'uninitialized element');
  });

  group('table_init.5.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.5.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_0', () => m.$('check', [0]), 'uninitialized element');
    traps('check_1', () => m.$('check', [1]), 'uninitialized element');
    returns('check_2', () => m.$('check', [2]), 3);
    returns('check_3', () => m.$('check', [3]), 1);
    returns('check_4', () => m.$('check', [4]), 4);
    returns('check_5', () => m.$('check', [5]), 1);
    traps('check_6', () => m.$('check', [6]), 'uninitialized element');
    traps('check_7', () => m.$('check', [7]), 'uninitialized element');
    traps('check_8', () => m.$('check', [8]), 'uninitialized element');
    traps('check_9', () => m.$('check', [9]), 'uninitialized element');
    traps('check_10', () => m.$('check', [0xA]), 'uninitialized element');
    traps('check_11', () => m.$('check', [0xB]), 'uninitialized element');
    returns('check_12', () => m.$('check', [0xC]), 7);
    returns('check_13', () => m.$('check', [0xD]), 5);
    returns('check_14', () => m.$('check', [0xE]), 2);
    returns('check_15', () => m.$('check', [0xF]), 9);
    returns('check_16', () => m.$('check', [0x10]), 2);
    returns('check_17', () => m.$('check', [0x11]), 7);
    traps('check_18', () => m.$('check', [0x12]), 'uninitialized element');
    traps('check_19', () => m.$('check', [0x13]), 'uninitialized element');
    traps('check_20', () => m.$('check', [0x14]), 'uninitialized element');
    traps('check_21', () => m.$('check', [0x15]), 'uninitialized element');
    traps('check_22', () => m.$('check', [0x16]), 'uninitialized element');
    traps('check_23', () => m.$('check', [0x17]), 'uninitialized element');
    traps('check_24', () => m.$('check', [0x18]), 'uninitialized element');
    traps('check_25', () => m.$('check', [0x19]), 'uninitialized element');
    traps('check_26', () => m.$('check', [0x1A]), 'uninitialized element');
    traps('check_27', () => m.$('check', [0x1B]), 'uninitialized element');
    traps('check_28', () => m.$('check', [0x1C]), 'uninitialized element');
    traps('check_29', () => m.$('check', [0x1D]), 'uninitialized element');
  });

  group('table_init.6.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.6.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_0', () => m.$('check', [0]), 'uninitialized element');
    traps('check_1', () => m.$('check', [1]), 'uninitialized element');
    returns('check_2', () => m.$('check', [2]), 3);
    returns('check_3', () => m.$('check', [3]), 1);
    returns('check_4', () => m.$('check', [4]), 4);
    returns('check_5', () => m.$('check', [5]), 1);
    traps('check_6', () => m.$('check', [6]), 'uninitialized element');
    returns('check_7', () => m.$('check', [7]), 2);
    returns('check_8', () => m.$('check', [8]), 7);
    returns('check_9', () => m.$('check', [9]), 1);
    returns('check_10', () => m.$('check', [0xA]), 8);
    traps('check_11', () => m.$('check', [0xB]), 'uninitialized element');
    returns('check_12', () => m.$('check', [0xC]), 7);
    traps('check_13', () => m.$('check', [0xD]), 'uninitialized element');
    returns('check_14', () => m.$('check', [0xE]), 7);
    returns('check_15', () => m.$('check', [0xF]), 5);
    returns('check_16', () => m.$('check', [0x10]), 2);
    returns('check_17', () => m.$('check', [0x11]), 7);
    traps('check_18', () => m.$('check', [0x12]), 'uninitialized element');
    returns('check_19', () => m.$('check', [0x13]), 9);
    traps('check_20', () => m.$('check', [0x14]), 'uninitialized element');
    returns('check_21', () => m.$('check', [0x15]), 7);
    traps('check_22', () => m.$('check', [0x16]), 'uninitialized element');
    returns('check_23', () => m.$('check', [0x17]), 8);
    returns('check_24', () => m.$('check', [0x18]), 8);
    traps('check_25', () => m.$('check', [0x19]), 'uninitialized element');
    traps('check_26', () => m.$('check', [0x1A]), 'uninitialized element');
    traps('check_27', () => m.$('check', [0x1B]), 'uninitialized element');
    traps('check_28', () => m.$('check', [0x1C]), 'uninitialized element');
    traps('check_29', () => m.$('check', [0x1D]), 'uninitialized element');
  });

  // assertInvalid('invalid table_init.7.wasm', 'table_init/table_init.7.wasm', 'unknown elem segment 0');
  // assertInvalid('invalid table_init.8.wasm', 'table_init/table_init.8.wasm', 'unknown table 0');
  // assertInvalid('invalid table_init.9.wasm', 'table_init/table_init.9.wasm', 'unknown elem segment 4');
  // assertInvalid('invalid table_init.10.wasm', 'table_init/table_init.10.wasm', 'unknown table 0');

  group('table_init.11.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.11.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_init.12.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.12.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_init.13.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.13.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_init.14.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.14.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_init.15.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.15.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_init.16.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.16.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_init.17.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.17.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_init.18.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.18.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_init.19.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.19.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_init.20.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.20.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_init.21.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.21.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_init.22.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.22.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_init.23.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.23.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_init.24.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.24.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_init.25.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.25.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_init.26.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.26.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_init.27.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.27.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_init.28.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.28.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_init.29.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.29.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_init.30.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.30.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_init.31.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.31.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  // assertInvalid('invalid table_init.32.wasm', 'table_init/table_init.32.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.33.wasm', 'table_init/table_init.33.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.34.wasm', 'table_init/table_init.34.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.35.wasm', 'table_init/table_init.35.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.36.wasm', 'table_init/table_init.36.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.37.wasm', 'table_init/table_init.37.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.38.wasm', 'table_init/table_init.38.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.39.wasm', 'table_init/table_init.39.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.40.wasm', 'table_init/table_init.40.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.41.wasm', 'table_init/table_init.41.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.42.wasm', 'table_init/table_init.42.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.43.wasm', 'table_init/table_init.43.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.44.wasm', 'table_init/table_init.44.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.45.wasm', 'table_init/table_init.45.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.46.wasm', 'table_init/table_init.46.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.47.wasm', 'table_init/table_init.47.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.48.wasm', 'table_init/table_init.48.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.49.wasm', 'table_init/table_init.49.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.50.wasm', 'table_init/table_init.50.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.51.wasm', 'table_init/table_init.51.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.52.wasm', 'table_init/table_init.52.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.53.wasm', 'table_init/table_init.53.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.54.wasm', 'table_init/table_init.54.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.55.wasm', 'table_init/table_init.55.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.56.wasm', 'table_init/table_init.56.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.57.wasm', 'table_init/table_init.57.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.58.wasm', 'table_init/table_init.58.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.59.wasm', 'table_init/table_init.59.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.60.wasm', 'table_init/table_init.60.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.61.wasm', 'table_init/table_init.61.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.62.wasm', 'table_init/table_init.62.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.63.wasm', 'table_init/table_init.63.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.64.wasm', 'table_init/table_init.64.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.65.wasm', 'table_init/table_init.65.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.66.wasm', 'table_init/table_init.66.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.67.wasm', 'table_init/table_init.67.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.68.wasm', 'table_init/table_init.68.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.69.wasm', 'table_init/table_init.69.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.70.wasm', 'table_init/table_init.70.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.71.wasm', 'table_init/table_init.71.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.72.wasm', 'table_init/table_init.72.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.73.wasm', 'table_init/table_init.73.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.74.wasm', 'table_init/table_init.74.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.75.wasm', 'table_init/table_init.75.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.76.wasm', 'table_init/table_init.76.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.77.wasm', 'table_init/table_init.77.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.78.wasm', 'table_init/table_init.78.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.79.wasm', 'table_init/table_init.79.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.80.wasm', 'table_init/table_init.80.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.81.wasm', 'table_init/table_init.81.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.82.wasm', 'table_init/table_init.82.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.83.wasm', 'table_init/table_init.83.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.84.wasm', 'table_init/table_init.84.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.85.wasm', 'table_init/table_init.85.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.86.wasm', 'table_init/table_init.86.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.87.wasm', 'table_init/table_init.87.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.88.wasm', 'table_init/table_init.88.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.89.wasm', 'table_init/table_init.89.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.90.wasm', 'table_init/table_init.90.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.91.wasm', 'table_init/table_init.91.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.92.wasm', 'table_init/table_init.92.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.93.wasm', 'table_init/table_init.93.wasm', 'type mismatch');
  // assertInvalid('invalid table_init.94.wasm', 'table_init/table_init.94.wasm', 'type mismatch');

  group('table_init.95.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.95.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps(
        'run_0', () => m.$('run', [0x18, 0x10]), 'out of bounds table access');
    traps('test_0', () => m.$('test', [0]), 'uninitialized element');
    traps('test_1', () => m.$('test', [1]), 'uninitialized element');
    traps('test_2', () => m.$('test', [2]), 'uninitialized element');
    traps('test_3', () => m.$('test', [3]), 'uninitialized element');
    traps('test_4', () => m.$('test', [4]), 'uninitialized element');
    traps('test_5', () => m.$('test', [5]), 'uninitialized element');
    traps('test_6', () => m.$('test', [6]), 'uninitialized element');
    traps('test_7', () => m.$('test', [7]), 'uninitialized element');
    traps('test_8', () => m.$('test', [8]), 'uninitialized element');
    traps('test_9', () => m.$('test', [9]), 'uninitialized element');
    traps('test_10', () => m.$('test', [0xA]), 'uninitialized element');
    traps('test_11', () => m.$('test', [0xB]), 'uninitialized element');
    traps('test_12', () => m.$('test', [0xC]), 'uninitialized element');
    traps('test_13', () => m.$('test', [0xD]), 'uninitialized element');
    traps('test_14', () => m.$('test', [0xE]), 'uninitialized element');
    traps('test_15', () => m.$('test', [0xF]), 'uninitialized element');
    traps('test_16', () => m.$('test', [0x10]), 'uninitialized element');
    traps('test_17', () => m.$('test', [0x11]), 'uninitialized element');
    traps('test_18', () => m.$('test', [0x12]), 'uninitialized element');
    traps('test_19', () => m.$('test', [0x13]), 'uninitialized element');
    traps('test_20', () => m.$('test', [0x14]), 'uninitialized element');
    traps('test_21', () => m.$('test', [0x15]), 'uninitialized element');
    traps('test_22', () => m.$('test', [0x16]), 'uninitialized element');
    traps('test_23', () => m.$('test', [0x17]), 'uninitialized element');
    traps('test_24', () => m.$('test', [0x18]), 'uninitialized element');
    traps('test_25', () => m.$('test', [0x19]), 'uninitialized element');
    traps('test_26', () => m.$('test', [0x1A]), 'uninitialized element');
    traps('test_27', () => m.$('test', [0x1B]), 'uninitialized element');
    traps('test_28', () => m.$('test', [0x1C]), 'uninitialized element');
    traps('test_29', () => m.$('test', [0x1D]), 'uninitialized element');
    traps('test_30', () => m.$('test', [0x1E]), 'uninitialized element');
    traps('test_31', () => m.$('test', [0x1F]), 'uninitialized element');
  });

  group('table_init.96.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.96.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps(
        'run_0', () => m.$('run', [0x19, 0x10]), 'out of bounds table access');
    traps('test_0', () => m.$('test', [0]), 'uninitialized element');
    traps('test_1', () => m.$('test', [1]), 'uninitialized element');
    traps('test_2', () => m.$('test', [2]), 'uninitialized element');
    traps('test_3', () => m.$('test', [3]), 'uninitialized element');
    traps('test_4', () => m.$('test', [4]), 'uninitialized element');
    traps('test_5', () => m.$('test', [5]), 'uninitialized element');
    traps('test_6', () => m.$('test', [6]), 'uninitialized element');
    traps('test_7', () => m.$('test', [7]), 'uninitialized element');
    traps('test_8', () => m.$('test', [8]), 'uninitialized element');
    traps('test_9', () => m.$('test', [9]), 'uninitialized element');
    traps('test_10', () => m.$('test', [0xA]), 'uninitialized element');
    traps('test_11', () => m.$('test', [0xB]), 'uninitialized element');
    traps('test_12', () => m.$('test', [0xC]), 'uninitialized element');
    traps('test_13', () => m.$('test', [0xD]), 'uninitialized element');
    traps('test_14', () => m.$('test', [0xE]), 'uninitialized element');
    traps('test_15', () => m.$('test', [0xF]), 'uninitialized element');
    traps('test_16', () => m.$('test', [0x10]), 'uninitialized element');
    traps('test_17', () => m.$('test', [0x11]), 'uninitialized element');
    traps('test_18', () => m.$('test', [0x12]), 'uninitialized element');
    traps('test_19', () => m.$('test', [0x13]), 'uninitialized element');
    traps('test_20', () => m.$('test', [0x14]), 'uninitialized element');
    traps('test_21', () => m.$('test', [0x15]), 'uninitialized element');
    traps('test_22', () => m.$('test', [0x16]), 'uninitialized element');
    traps('test_23', () => m.$('test', [0x17]), 'uninitialized element');
    traps('test_24', () => m.$('test', [0x18]), 'uninitialized element');
    traps('test_25', () => m.$('test', [0x19]), 'uninitialized element');
    traps('test_26', () => m.$('test', [0x1A]), 'uninitialized element');
    traps('test_27', () => m.$('test', [0x1B]), 'uninitialized element');
    traps('test_28', () => m.$('test', [0x1C]), 'uninitialized element');
    traps('test_29', () => m.$('test', [0x1D]), 'uninitialized element');
    traps('test_30', () => m.$('test', [0x1E]), 'uninitialized element');
    traps('test_31', () => m.$('test', [0x1F]), 'uninitialized element');
  });

  group('table_init.97.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.97.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps(
        'run_0', () => m.$('run', [0x60, 0x20]), 'out of bounds table access');
    traps('test_0', () => m.$('test', [0]), 'uninitialized element');
    traps('test_1', () => m.$('test', [1]), 'uninitialized element');
    traps('test_2', () => m.$('test', [2]), 'uninitialized element');
    traps('test_3', () => m.$('test', [3]), 'uninitialized element');
    traps('test_4', () => m.$('test', [4]), 'uninitialized element');
    traps('test_5', () => m.$('test', [5]), 'uninitialized element');
    traps('test_6', () => m.$('test', [6]), 'uninitialized element');
    traps('test_7', () => m.$('test', [7]), 'uninitialized element');
    traps('test_8', () => m.$('test', [8]), 'uninitialized element');
    traps('test_9', () => m.$('test', [9]), 'uninitialized element');
    traps('test_10', () => m.$('test', [0xA]), 'uninitialized element');
    traps('test_11', () => m.$('test', [0xB]), 'uninitialized element');
    traps('test_12', () => m.$('test', [0xC]), 'uninitialized element');
    traps('test_13', () => m.$('test', [0xD]), 'uninitialized element');
    traps('test_14', () => m.$('test', [0xE]), 'uninitialized element');
    traps('test_15', () => m.$('test', [0xF]), 'uninitialized element');
    traps('test_16', () => m.$('test', [0x10]), 'uninitialized element');
    traps('test_17', () => m.$('test', [0x11]), 'uninitialized element');
    traps('test_18', () => m.$('test', [0x12]), 'uninitialized element');
    traps('test_19', () => m.$('test', [0x13]), 'uninitialized element');
    traps('test_20', () => m.$('test', [0x14]), 'uninitialized element');
    traps('test_21', () => m.$('test', [0x15]), 'uninitialized element');
    traps('test_22', () => m.$('test', [0x16]), 'uninitialized element');
    traps('test_23', () => m.$('test', [0x17]), 'uninitialized element');
    traps('test_24', () => m.$('test', [0x18]), 'uninitialized element');
    traps('test_25', () => m.$('test', [0x19]), 'uninitialized element');
    traps('test_26', () => m.$('test', [0x1A]), 'uninitialized element');
    traps('test_27', () => m.$('test', [0x1B]), 'uninitialized element');
    traps('test_28', () => m.$('test', [0x1C]), 'uninitialized element');
    traps('test_29', () => m.$('test', [0x1D]), 'uninitialized element');
    traps('test_30', () => m.$('test', [0x1E]), 'uninitialized element');
    traps('test_31', () => m.$('test', [0x1F]), 'uninitialized element');
    traps('test_32', () => m.$('test', [0x20]), 'uninitialized element');
    traps('test_33', () => m.$('test', [0x21]), 'uninitialized element');
    traps('test_34', () => m.$('test', [0x22]), 'uninitialized element');
    traps('test_35', () => m.$('test', [0x23]), 'uninitialized element');
    traps('test_36', () => m.$('test', [0x24]), 'uninitialized element');
    traps('test_37', () => m.$('test', [0x25]), 'uninitialized element');
    traps('test_38', () => m.$('test', [0x26]), 'uninitialized element');
    traps('test_39', () => m.$('test', [0x27]), 'uninitialized element');
    traps('test_40', () => m.$('test', [0x28]), 'uninitialized element');
    traps('test_41', () => m.$('test', [0x29]), 'uninitialized element');
    traps('test_42', () => m.$('test', [0x2A]), 'uninitialized element');
    traps('test_43', () => m.$('test', [0x2B]), 'uninitialized element');
    traps('test_44', () => m.$('test', [0x2C]), 'uninitialized element');
    traps('test_45', () => m.$('test', [0x2D]), 'uninitialized element');
    traps('test_46', () => m.$('test', [0x2E]), 'uninitialized element');
    traps('test_47', () => m.$('test', [0x2F]), 'uninitialized element');
    traps('test_48', () => m.$('test', [0x30]), 'uninitialized element');
    traps('test_49', () => m.$('test', [0x31]), 'uninitialized element');
    traps('test_50', () => m.$('test', [0x32]), 'uninitialized element');
    traps('test_51', () => m.$('test', [0x33]), 'uninitialized element');
    traps('test_52', () => m.$('test', [0x34]), 'uninitialized element');
    traps('test_53', () => m.$('test', [0x35]), 'uninitialized element');
    traps('test_54', () => m.$('test', [0x36]), 'uninitialized element');
    traps('test_55', () => m.$('test', [0x37]), 'uninitialized element');
    traps('test_56', () => m.$('test', [0x38]), 'uninitialized element');
    traps('test_57', () => m.$('test', [0x39]), 'uninitialized element');
    traps('test_58', () => m.$('test', [0x3A]), 'uninitialized element');
    traps('test_59', () => m.$('test', [0x3B]), 'uninitialized element');
    traps('test_60', () => m.$('test', [0x3C]), 'uninitialized element');
    traps('test_61', () => m.$('test', [0x3D]), 'uninitialized element');
    traps('test_62', () => m.$('test', [0x3E]), 'uninitialized element');
    traps('test_63', () => m.$('test', [0x3F]), 'uninitialized element');
    traps('test_64', () => m.$('test', [0x40]), 'uninitialized element');
    traps('test_65', () => m.$('test', [0x41]), 'uninitialized element');
    traps('test_66', () => m.$('test', [0x42]), 'uninitialized element');
    traps('test_67', () => m.$('test', [0x43]), 'uninitialized element');
    traps('test_68', () => m.$('test', [0x44]), 'uninitialized element');
    traps('test_69', () => m.$('test', [0x45]), 'uninitialized element');
    traps('test_70', () => m.$('test', [0x46]), 'uninitialized element');
    traps('test_71', () => m.$('test', [0x47]), 'uninitialized element');
    traps('test_72', () => m.$('test', [0x48]), 'uninitialized element');
    traps('test_73', () => m.$('test', [0x49]), 'uninitialized element');
    traps('test_74', () => m.$('test', [0x4A]), 'uninitialized element');
    traps('test_75', () => m.$('test', [0x4B]), 'uninitialized element');
    traps('test_76', () => m.$('test', [0x4C]), 'uninitialized element');
    traps('test_77', () => m.$('test', [0x4D]), 'uninitialized element');
    traps('test_78', () => m.$('test', [0x4E]), 'uninitialized element');
    traps('test_79', () => m.$('test', [0x4F]), 'uninitialized element');
    traps('test_80', () => m.$('test', [0x50]), 'uninitialized element');
    traps('test_81', () => m.$('test', [0x51]), 'uninitialized element');
    traps('test_82', () => m.$('test', [0x52]), 'uninitialized element');
    traps('test_83', () => m.$('test', [0x53]), 'uninitialized element');
    traps('test_84', () => m.$('test', [0x54]), 'uninitialized element');
    traps('test_85', () => m.$('test', [0x55]), 'uninitialized element');
    traps('test_86', () => m.$('test', [0x56]), 'uninitialized element');
    traps('test_87', () => m.$('test', [0x57]), 'uninitialized element');
    traps('test_88', () => m.$('test', [0x58]), 'uninitialized element');
    traps('test_89', () => m.$('test', [0x59]), 'uninitialized element');
    traps('test_90', () => m.$('test', [0x5A]), 'uninitialized element');
    traps('test_91', () => m.$('test', [0x5B]), 'uninitialized element');
    traps('test_92', () => m.$('test', [0x5C]), 'uninitialized element');
    traps('test_93', () => m.$('test', [0x5D]), 'uninitialized element');
    traps('test_94', () => m.$('test', [0x5E]), 'uninitialized element');
    traps('test_95', () => m.$('test', [0x5F]), 'uninitialized element');
    traps('test_96', () => m.$('test', [0x60]), 'uninitialized element');
    traps('test_97', () => m.$('test', [0x61]), 'uninitialized element');
    traps('test_98', () => m.$('test', [0x62]), 'uninitialized element');
    traps('test_99', () => m.$('test', [0x63]), 'uninitialized element');
    traps('test_100', () => m.$('test', [0x64]), 'uninitialized element');
    traps('test_101', () => m.$('test', [0x65]), 'uninitialized element');
    traps('test_102', () => m.$('test', [0x66]), 'uninitialized element');
    traps('test_103', () => m.$('test', [0x67]), 'uninitialized element');
    traps('test_104', () => m.$('test', [0x68]), 'uninitialized element');
    traps('test_105', () => m.$('test', [0x69]), 'uninitialized element');
    traps('test_106', () => m.$('test', [0x6A]), 'uninitialized element');
    traps('test_107', () => m.$('test', [0x6B]), 'uninitialized element');
    traps('test_108', () => m.$('test', [0x6C]), 'uninitialized element');
    traps('test_109', () => m.$('test', [0x6D]), 'uninitialized element');
    traps('test_110', () => m.$('test', [0x6E]), 'uninitialized element');
    traps('test_111', () => m.$('test', [0x6F]), 'uninitialized element');
    traps('test_112', () => m.$('test', [0x70]), 'uninitialized element');
    traps('test_113', () => m.$('test', [0x71]), 'uninitialized element');
    traps('test_114', () => m.$('test', [0x72]), 'uninitialized element');
    traps('test_115', () => m.$('test', [0x73]), 'uninitialized element');
    traps('test_116', () => m.$('test', [0x74]), 'uninitialized element');
    traps('test_117', () => m.$('test', [0x75]), 'uninitialized element');
    traps('test_118', () => m.$('test', [0x76]), 'uninitialized element');
    traps('test_119', () => m.$('test', [0x77]), 'uninitialized element');
    traps('test_120', () => m.$('test', [0x78]), 'uninitialized element');
    traps('test_121', () => m.$('test', [0x79]), 'uninitialized element');
    traps('test_122', () => m.$('test', [0x7A]), 'uninitialized element');
    traps('test_123', () => m.$('test', [0x7B]), 'uninitialized element');
    traps('test_124', () => m.$('test', [0x7C]), 'uninitialized element');
    traps('test_125', () => m.$('test', [0x7D]), 'uninitialized element');
    traps('test_126', () => m.$('test', [0x7E]), 'uninitialized element');
    traps('test_127', () => m.$('test', [0x7F]), 'uninitialized element');
    traps('test_128', () => m.$('test', [0x80]), 'uninitialized element');
    traps('test_129', () => m.$('test', [0x81]), 'uninitialized element');
    traps('test_130', () => m.$('test', [0x82]), 'uninitialized element');
    traps('test_131', () => m.$('test', [0x83]), 'uninitialized element');
    traps('test_132', () => m.$('test', [0x84]), 'uninitialized element');
    traps('test_133', () => m.$('test', [0x85]), 'uninitialized element');
    traps('test_134', () => m.$('test', [0x86]), 'uninitialized element');
    traps('test_135', () => m.$('test', [0x87]), 'uninitialized element');
    traps('test_136', () => m.$('test', [0x88]), 'uninitialized element');
    traps('test_137', () => m.$('test', [0x89]), 'uninitialized element');
    traps('test_138', () => m.$('test', [0x8A]), 'uninitialized element');
    traps('test_139', () => m.$('test', [0x8B]), 'uninitialized element');
    traps('test_140', () => m.$('test', [0x8C]), 'uninitialized element');
    traps('test_141', () => m.$('test', [0x8D]), 'uninitialized element');
    traps('test_142', () => m.$('test', [0x8E]), 'uninitialized element');
    traps('test_143', () => m.$('test', [0x8F]), 'uninitialized element');
    traps('test_144', () => m.$('test', [0x90]), 'uninitialized element');
    traps('test_145', () => m.$('test', [0x91]), 'uninitialized element');
    traps('test_146', () => m.$('test', [0x92]), 'uninitialized element');
    traps('test_147', () => m.$('test', [0x93]), 'uninitialized element');
    traps('test_148', () => m.$('test', [0x94]), 'uninitialized element');
    traps('test_149', () => m.$('test', [0x95]), 'uninitialized element');
    traps('test_150', () => m.$('test', [0x96]), 'uninitialized element');
    traps('test_151', () => m.$('test', [0x97]), 'uninitialized element');
    traps('test_152', () => m.$('test', [0x98]), 'uninitialized element');
    traps('test_153', () => m.$('test', [0x99]), 'uninitialized element');
    traps('test_154', () => m.$('test', [0x9A]), 'uninitialized element');
    traps('test_155', () => m.$('test', [0x9B]), 'uninitialized element');
    traps('test_156', () => m.$('test', [0x9C]), 'uninitialized element');
    traps('test_157', () => m.$('test', [0x9D]), 'uninitialized element');
    traps('test_158', () => m.$('test', [0x9E]), 'uninitialized element');
    traps('test_159', () => m.$('test', [0x9F]), 'uninitialized element');
  });

  group('table_init.98.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.98.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps(
        'run_0', () => m.$('run', [0x61, 0x1F]), 'out of bounds table access');
    traps('test_0', () => m.$('test', [0]), 'uninitialized element');
    traps('test_1', () => m.$('test', [1]), 'uninitialized element');
    traps('test_2', () => m.$('test', [2]), 'uninitialized element');
    traps('test_3', () => m.$('test', [3]), 'uninitialized element');
    traps('test_4', () => m.$('test', [4]), 'uninitialized element');
    traps('test_5', () => m.$('test', [5]), 'uninitialized element');
    traps('test_6', () => m.$('test', [6]), 'uninitialized element');
    traps('test_7', () => m.$('test', [7]), 'uninitialized element');
    traps('test_8', () => m.$('test', [8]), 'uninitialized element');
    traps('test_9', () => m.$('test', [9]), 'uninitialized element');
    traps('test_10', () => m.$('test', [0xA]), 'uninitialized element');
    traps('test_11', () => m.$('test', [0xB]), 'uninitialized element');
    traps('test_12', () => m.$('test', [0xC]), 'uninitialized element');
    traps('test_13', () => m.$('test', [0xD]), 'uninitialized element');
    traps('test_14', () => m.$('test', [0xE]), 'uninitialized element');
    traps('test_15', () => m.$('test', [0xF]), 'uninitialized element');
    traps('test_16', () => m.$('test', [0x10]), 'uninitialized element');
    traps('test_17', () => m.$('test', [0x11]), 'uninitialized element');
    traps('test_18', () => m.$('test', [0x12]), 'uninitialized element');
    traps('test_19', () => m.$('test', [0x13]), 'uninitialized element');
    traps('test_20', () => m.$('test', [0x14]), 'uninitialized element');
    traps('test_21', () => m.$('test', [0x15]), 'uninitialized element');
    traps('test_22', () => m.$('test', [0x16]), 'uninitialized element');
    traps('test_23', () => m.$('test', [0x17]), 'uninitialized element');
    traps('test_24', () => m.$('test', [0x18]), 'uninitialized element');
    traps('test_25', () => m.$('test', [0x19]), 'uninitialized element');
    traps('test_26', () => m.$('test', [0x1A]), 'uninitialized element');
    traps('test_27', () => m.$('test', [0x1B]), 'uninitialized element');
    traps('test_28', () => m.$('test', [0x1C]), 'uninitialized element');
    traps('test_29', () => m.$('test', [0x1D]), 'uninitialized element');
    traps('test_30', () => m.$('test', [0x1E]), 'uninitialized element');
    traps('test_31', () => m.$('test', [0x1F]), 'uninitialized element');
    traps('test_32', () => m.$('test', [0x20]), 'uninitialized element');
    traps('test_33', () => m.$('test', [0x21]), 'uninitialized element');
    traps('test_34', () => m.$('test', [0x22]), 'uninitialized element');
    traps('test_35', () => m.$('test', [0x23]), 'uninitialized element');
    traps('test_36', () => m.$('test', [0x24]), 'uninitialized element');
    traps('test_37', () => m.$('test', [0x25]), 'uninitialized element');
    traps('test_38', () => m.$('test', [0x26]), 'uninitialized element');
    traps('test_39', () => m.$('test', [0x27]), 'uninitialized element');
    traps('test_40', () => m.$('test', [0x28]), 'uninitialized element');
    traps('test_41', () => m.$('test', [0x29]), 'uninitialized element');
    traps('test_42', () => m.$('test', [0x2A]), 'uninitialized element');
    traps('test_43', () => m.$('test', [0x2B]), 'uninitialized element');
    traps('test_44', () => m.$('test', [0x2C]), 'uninitialized element');
    traps('test_45', () => m.$('test', [0x2D]), 'uninitialized element');
    traps('test_46', () => m.$('test', [0x2E]), 'uninitialized element');
    traps('test_47', () => m.$('test', [0x2F]), 'uninitialized element');
    traps('test_48', () => m.$('test', [0x30]), 'uninitialized element');
    traps('test_49', () => m.$('test', [0x31]), 'uninitialized element');
    traps('test_50', () => m.$('test', [0x32]), 'uninitialized element');
    traps('test_51', () => m.$('test', [0x33]), 'uninitialized element');
    traps('test_52', () => m.$('test', [0x34]), 'uninitialized element');
    traps('test_53', () => m.$('test', [0x35]), 'uninitialized element');
    traps('test_54', () => m.$('test', [0x36]), 'uninitialized element');
    traps('test_55', () => m.$('test', [0x37]), 'uninitialized element');
    traps('test_56', () => m.$('test', [0x38]), 'uninitialized element');
    traps('test_57', () => m.$('test', [0x39]), 'uninitialized element');
    traps('test_58', () => m.$('test', [0x3A]), 'uninitialized element');
    traps('test_59', () => m.$('test', [0x3B]), 'uninitialized element');
    traps('test_60', () => m.$('test', [0x3C]), 'uninitialized element');
    traps('test_61', () => m.$('test', [0x3D]), 'uninitialized element');
    traps('test_62', () => m.$('test', [0x3E]), 'uninitialized element');
    traps('test_63', () => m.$('test', [0x3F]), 'uninitialized element');
    traps('test_64', () => m.$('test', [0x40]), 'uninitialized element');
    traps('test_65', () => m.$('test', [0x41]), 'uninitialized element');
    traps('test_66', () => m.$('test', [0x42]), 'uninitialized element');
    traps('test_67', () => m.$('test', [0x43]), 'uninitialized element');
    traps('test_68', () => m.$('test', [0x44]), 'uninitialized element');
    traps('test_69', () => m.$('test', [0x45]), 'uninitialized element');
    traps('test_70', () => m.$('test', [0x46]), 'uninitialized element');
    traps('test_71', () => m.$('test', [0x47]), 'uninitialized element');
    traps('test_72', () => m.$('test', [0x48]), 'uninitialized element');
    traps('test_73', () => m.$('test', [0x49]), 'uninitialized element');
    traps('test_74', () => m.$('test', [0x4A]), 'uninitialized element');
    traps('test_75', () => m.$('test', [0x4B]), 'uninitialized element');
    traps('test_76', () => m.$('test', [0x4C]), 'uninitialized element');
    traps('test_77', () => m.$('test', [0x4D]), 'uninitialized element');
    traps('test_78', () => m.$('test', [0x4E]), 'uninitialized element');
    traps('test_79', () => m.$('test', [0x4F]), 'uninitialized element');
    traps('test_80', () => m.$('test', [0x50]), 'uninitialized element');
    traps('test_81', () => m.$('test', [0x51]), 'uninitialized element');
    traps('test_82', () => m.$('test', [0x52]), 'uninitialized element');
    traps('test_83', () => m.$('test', [0x53]), 'uninitialized element');
    traps('test_84', () => m.$('test', [0x54]), 'uninitialized element');
    traps('test_85', () => m.$('test', [0x55]), 'uninitialized element');
    traps('test_86', () => m.$('test', [0x56]), 'uninitialized element');
    traps('test_87', () => m.$('test', [0x57]), 'uninitialized element');
    traps('test_88', () => m.$('test', [0x58]), 'uninitialized element');
    traps('test_89', () => m.$('test', [0x59]), 'uninitialized element');
    traps('test_90', () => m.$('test', [0x5A]), 'uninitialized element');
    traps('test_91', () => m.$('test', [0x5B]), 'uninitialized element');
    traps('test_92', () => m.$('test', [0x5C]), 'uninitialized element');
    traps('test_93', () => m.$('test', [0x5D]), 'uninitialized element');
    traps('test_94', () => m.$('test', [0x5E]), 'uninitialized element');
    traps('test_95', () => m.$('test', [0x5F]), 'uninitialized element');
    traps('test_96', () => m.$('test', [0x60]), 'uninitialized element');
    traps('test_97', () => m.$('test', [0x61]), 'uninitialized element');
    traps('test_98', () => m.$('test', [0x62]), 'uninitialized element');
    traps('test_99', () => m.$('test', [0x63]), 'uninitialized element');
    traps('test_100', () => m.$('test', [0x64]), 'uninitialized element');
    traps('test_101', () => m.$('test', [0x65]), 'uninitialized element');
    traps('test_102', () => m.$('test', [0x66]), 'uninitialized element');
    traps('test_103', () => m.$('test', [0x67]), 'uninitialized element');
    traps('test_104', () => m.$('test', [0x68]), 'uninitialized element');
    traps('test_105', () => m.$('test', [0x69]), 'uninitialized element');
    traps('test_106', () => m.$('test', [0x6A]), 'uninitialized element');
    traps('test_107', () => m.$('test', [0x6B]), 'uninitialized element');
    traps('test_108', () => m.$('test', [0x6C]), 'uninitialized element');
    traps('test_109', () => m.$('test', [0x6D]), 'uninitialized element');
    traps('test_110', () => m.$('test', [0x6E]), 'uninitialized element');
    traps('test_111', () => m.$('test', [0x6F]), 'uninitialized element');
    traps('test_112', () => m.$('test', [0x70]), 'uninitialized element');
    traps('test_113', () => m.$('test', [0x71]), 'uninitialized element');
    traps('test_114', () => m.$('test', [0x72]), 'uninitialized element');
    traps('test_115', () => m.$('test', [0x73]), 'uninitialized element');
    traps('test_116', () => m.$('test', [0x74]), 'uninitialized element');
    traps('test_117', () => m.$('test', [0x75]), 'uninitialized element');
    traps('test_118', () => m.$('test', [0x76]), 'uninitialized element');
    traps('test_119', () => m.$('test', [0x77]), 'uninitialized element');
    traps('test_120', () => m.$('test', [0x78]), 'uninitialized element');
    traps('test_121', () => m.$('test', [0x79]), 'uninitialized element');
    traps('test_122', () => m.$('test', [0x7A]), 'uninitialized element');
    traps('test_123', () => m.$('test', [0x7B]), 'uninitialized element');
    traps('test_124', () => m.$('test', [0x7C]), 'uninitialized element');
    traps('test_125', () => m.$('test', [0x7D]), 'uninitialized element');
    traps('test_126', () => m.$('test', [0x7E]), 'uninitialized element');
    traps('test_127', () => m.$('test', [0x7F]), 'uninitialized element');
    traps('test_128', () => m.$('test', [0x80]), 'uninitialized element');
    traps('test_129', () => m.$('test', [0x81]), 'uninitialized element');
    traps('test_130', () => m.$('test', [0x82]), 'uninitialized element');
    traps('test_131', () => m.$('test', [0x83]), 'uninitialized element');
    traps('test_132', () => m.$('test', [0x84]), 'uninitialized element');
    traps('test_133', () => m.$('test', [0x85]), 'uninitialized element');
    traps('test_134', () => m.$('test', [0x86]), 'uninitialized element');
    traps('test_135', () => m.$('test', [0x87]), 'uninitialized element');
    traps('test_136', () => m.$('test', [0x88]), 'uninitialized element');
    traps('test_137', () => m.$('test', [0x89]), 'uninitialized element');
    traps('test_138', () => m.$('test', [0x8A]), 'uninitialized element');
    traps('test_139', () => m.$('test', [0x8B]), 'uninitialized element');
    traps('test_140', () => m.$('test', [0x8C]), 'uninitialized element');
    traps('test_141', () => m.$('test', [0x8D]), 'uninitialized element');
    traps('test_142', () => m.$('test', [0x8E]), 'uninitialized element');
    traps('test_143', () => m.$('test', [0x8F]), 'uninitialized element');
    traps('test_144', () => m.$('test', [0x90]), 'uninitialized element');
    traps('test_145', () => m.$('test', [0x91]), 'uninitialized element');
    traps('test_146', () => m.$('test', [0x92]), 'uninitialized element');
    traps('test_147', () => m.$('test', [0x93]), 'uninitialized element');
    traps('test_148', () => m.$('test', [0x94]), 'uninitialized element');
    traps('test_149', () => m.$('test', [0x95]), 'uninitialized element');
    traps('test_150', () => m.$('test', [0x96]), 'uninitialized element');
    traps('test_151', () => m.$('test', [0x97]), 'uninitialized element');
    traps('test_152', () => m.$('test', [0x98]), 'uninitialized element');
    traps('test_153', () => m.$('test', [0x99]), 'uninitialized element');
    traps('test_154', () => m.$('test', [0x9A]), 'uninitialized element');
    traps('test_155', () => m.$('test', [0x9B]), 'uninitialized element');
    traps('test_156', () => m.$('test', [0x9C]), 'uninitialized element');
    traps('test_157', () => m.$('test', [0x9D]), 'uninitialized element');
    traps('test_158', () => m.$('test', [0x9E]), 'uninitialized element');
    traps('test_159', () => m.$('test', [0x9F]), 'uninitialized element');
  });

  group('table_init.99.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.99.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps(
      'run_0',
      () => m.$('run', [0x30, $i32('FFFFFFF0')]),
      'out of bounds table access',
      skip: 'failed',
    );
    traps('test_0', () => m.$('test', [0]), 'uninitialized element');
    traps('test_1', () => m.$('test', [1]), 'uninitialized element');
    traps('test_2', () => m.$('test', [2]), 'uninitialized element');
    traps('test_3', () => m.$('test', [3]), 'uninitialized element');
    traps('test_4', () => m.$('test', [4]), 'uninitialized element');
    traps('test_5', () => m.$('test', [5]), 'uninitialized element');
    traps('test_6', () => m.$('test', [6]), 'uninitialized element');
    traps('test_7', () => m.$('test', [7]), 'uninitialized element');
    traps('test_8', () => m.$('test', [8]), 'uninitialized element');
    traps('test_9', () => m.$('test', [9]), 'uninitialized element');
    traps('test_10', () => m.$('test', [0xA]), 'uninitialized element');
    traps('test_11', () => m.$('test', [0xB]), 'uninitialized element');
    traps('test_12', () => m.$('test', [0xC]), 'uninitialized element');
    traps('test_13', () => m.$('test', [0xD]), 'uninitialized element');
    traps('test_14', () => m.$('test', [0xE]), 'uninitialized element');
    traps('test_15', () => m.$('test', [0xF]), 'uninitialized element');
    traps('test_16', () => m.$('test', [0x10]), 'uninitialized element');
    traps('test_17', () => m.$('test', [0x11]), 'uninitialized element');
    traps('test_18', () => m.$('test', [0x12]), 'uninitialized element');
    traps('test_19', () => m.$('test', [0x13]), 'uninitialized element');
    traps('test_20', () => m.$('test', [0x14]), 'uninitialized element');
    traps('test_21', () => m.$('test', [0x15]), 'uninitialized element');
    traps('test_22', () => m.$('test', [0x16]), 'uninitialized element');
    traps('test_23', () => m.$('test', [0x17]), 'uninitialized element');
    traps('test_24', () => m.$('test', [0x18]), 'uninitialized element');
    traps('test_25', () => m.$('test', [0x19]), 'uninitialized element');
    traps('test_26', () => m.$('test', [0x1A]), 'uninitialized element');
    traps('test_27', () => m.$('test', [0x1B]), 'uninitialized element');
    traps('test_28', () => m.$('test', [0x1C]), 'uninitialized element');
    traps('test_29', () => m.$('test', [0x1D]), 'uninitialized element');
    traps('test_30', () => m.$('test', [0x1E]), 'uninitialized element');
    traps('test_31', () => m.$('test', [0x1F]), 'uninitialized element');
    traps('test_32', () => m.$('test', [0x20]), 'uninitialized element');
    traps('test_33', () => m.$('test', [0x21]), 'uninitialized element');
    traps('test_34', () => m.$('test', [0x22]), 'uninitialized element');
    traps('test_35', () => m.$('test', [0x23]), 'uninitialized element');
    traps('test_36', () => m.$('test', [0x24]), 'uninitialized element');
    traps('test_37', () => m.$('test', [0x25]), 'uninitialized element');
    traps('test_38', () => m.$('test', [0x26]), 'uninitialized element');
    traps('test_39', () => m.$('test', [0x27]), 'uninitialized element');
    traps('test_40', () => m.$('test', [0x28]), 'uninitialized element');
    traps('test_41', () => m.$('test', [0x29]), 'uninitialized element');
    traps('test_42', () => m.$('test', [0x2A]), 'uninitialized element');
    traps('test_43', () => m.$('test', [0x2B]), 'uninitialized element');
    traps('test_44', () => m.$('test', [0x2C]), 'uninitialized element');
    traps('test_45', () => m.$('test', [0x2D]), 'uninitialized element');
    traps('test_46', () => m.$('test', [0x2E]), 'uninitialized element');
    traps('test_47', () => m.$('test', [0x2F]), 'uninitialized element');
    traps('test_48', () => m.$('test', [0x30]), 'uninitialized element');
    traps('test_49', () => m.$('test', [0x31]), 'uninitialized element');
    traps('test_50', () => m.$('test', [0x32]), 'uninitialized element');
    traps('test_51', () => m.$('test', [0x33]), 'uninitialized element');
    traps('test_52', () => m.$('test', [0x34]), 'uninitialized element');
    traps('test_53', () => m.$('test', [0x35]), 'uninitialized element');
    traps('test_54', () => m.$('test', [0x36]), 'uninitialized element');
    traps('test_55', () => m.$('test', [0x37]), 'uninitialized element');
    traps('test_56', () => m.$('test', [0x38]), 'uninitialized element');
    traps('test_57', () => m.$('test', [0x39]), 'uninitialized element');
    traps('test_58', () => m.$('test', [0x3A]), 'uninitialized element');
    traps('test_59', () => m.$('test', [0x3B]), 'uninitialized element');
    traps('test_60', () => m.$('test', [0x3C]), 'uninitialized element');
    traps('test_61', () => m.$('test', [0x3D]), 'uninitialized element');
    traps('test_62', () => m.$('test', [0x3E]), 'uninitialized element');
    traps('test_63', () => m.$('test', [0x3F]), 'uninitialized element');
  });

  group('table_init.100.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.100.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps(
      'run_0',
      () => m.$('run', [0, $i32('FFFFFFFC')]),
      'out of bounds table access',
      skip: 'failed',
    );
    traps('test_0', () => m.$('test', [0]), 'uninitialized element');
    traps('test_1', () => m.$('test', [1]), 'uninitialized element');
    traps('test_2', () => m.$('test', [2]), 'uninitialized element');
    traps('test_3', () => m.$('test', [3]), 'uninitialized element');
    traps('test_4', () => m.$('test', [4]), 'uninitialized element');
    traps('test_5', () => m.$('test', [5]), 'uninitialized element');
    traps('test_6', () => m.$('test', [6]), 'uninitialized element');
    traps('test_7', () => m.$('test', [7]), 'uninitialized element');
    traps('test_8', () => m.$('test', [8]), 'uninitialized element');
    traps('test_9', () => m.$('test', [9]), 'uninitialized element');
    traps('test_10', () => m.$('test', [0xA]), 'uninitialized element');
    traps('test_11', () => m.$('test', [0xB]), 'uninitialized element');
    traps('test_12', () => m.$('test', [0xC]), 'uninitialized element');
    traps('test_13', () => m.$('test', [0xD]), 'uninitialized element');
    traps('test_14', () => m.$('test', [0xE]), 'uninitialized element');
    traps('test_15', () => m.$('test', [0xF]), 'uninitialized element');
  });

  group('table_init.101.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_init/table_init.101.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });
}
