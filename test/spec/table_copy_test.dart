// Generated from spec/test/core/table_copy.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('table_copy.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('register-a', () => registered['a'] = importModuleFrom(m));
  });

  group('table_copy.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.1.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 5);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 2);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 3);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.2.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.2.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 3);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 1);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 4);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.3.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 5);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 2);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 3);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    returns('check_t0_25', () => m.$('check_t0', [0x19]), 3);
    returns('check_t0_26', () => m.$('check_t0', [0x1A]), 6);
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.4.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.4.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    traps('check_t0_13', () => m.$('check_t0', [0xD]), 'uninitialized element');
    traps('check_t0_14', () => m.$('check_t0', [0xE]), 'uninitialized element');
    traps('check_t0_15', () => m.$('check_t0', [0xF]), 'uninitialized element');
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.5.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.5.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 5);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 2);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 3);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.6.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.6.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 5);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 2);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 3);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    returns('check_t0_26', () => m.$('check_t0', [0x1A]), 3);
    returns('check_t0_27', () => m.$('check_t0', [0x1B]), 1);
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.7.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.7.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    returns('check_t0_10', () => m.$('check_t0', [0xA]), 7);
    returns('check_t0_11', () => m.$('check_t0', [0xB]), 5);
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 2);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 3);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 6);
    traps('check_t0_15', () => m.$('check_t0', [0xF]), 'uninitialized element');
    traps(
        'check_t0_16', () => m.$('check_t0', [0x10]), 'uninitialized element');
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.8.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.8.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    traps('check_t0_12', () => m.$('check_t0', [0xC]), 'uninitialized element');
    traps('check_t0_13', () => m.$('check_t0', [0xD]), 'uninitialized element');
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 7);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 5);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 2);
    returns('check_t0_17', () => m.$('check_t0', [0x11]), 3);
    returns('check_t0_18', () => m.$('check_t0', [0x12]), 6);
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.9.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.9.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 5);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 2);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 3);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    traps('check_t1_11', () => m.$('check_t1', [0xB]), 'uninitialized element');
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 1);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 4);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 1);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    returns('check_t1_22', () => m.$('check_t1', [0x16]), 7);
    returns('check_t1_23', () => m.$('check_t1', [0x17]), 5);
    returns('check_t1_24', () => m.$('check_t1', [0x18]), 2);
    returns('check_t1_25', () => m.$('check_t1', [0x19]), 3);
    returns('check_t1_26', () => m.$('check_t1', [0x1A]), 6);
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.10.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.10.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 5);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 2);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 3);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.11.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.11.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 3);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 1);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 4);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.12.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.12.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 5);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 2);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 3);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    returns('check_t0_25', () => m.$('check_t0', [0x19]), 3);
    returns('check_t0_26', () => m.$('check_t0', [0x1A]), 6);
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.13.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.13.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    traps('check_t0_13', () => m.$('check_t0', [0xD]), 'uninitialized element');
    traps('check_t0_14', () => m.$('check_t0', [0xE]), 'uninitialized element');
    traps('check_t0_15', () => m.$('check_t0', [0xF]), 'uninitialized element');
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.14.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.14.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 5);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 2);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 3);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.15.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.15.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 5);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 2);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 3);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    returns('check_t0_26', () => m.$('check_t0', [0x1A]), 3);
    returns('check_t0_27', () => m.$('check_t0', [0x1B]), 1);
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.16.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.16.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    returns('check_t0_10', () => m.$('check_t0', [0xA]), 7);
    returns('check_t0_11', () => m.$('check_t0', [0xB]), 5);
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 2);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 3);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 6);
    traps('check_t0_15', () => m.$('check_t0', [0xF]), 'uninitialized element');
    traps(
        'check_t0_16', () => m.$('check_t0', [0x10]), 'uninitialized element');
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.17.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.17.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    traps('check_t0_12', () => m.$('check_t0', [0xC]), 'uninitialized element');
    traps('check_t0_13', () => m.$('check_t0', [0xD]), 'uninitialized element');
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 7);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 5);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 2);
    returns('check_t0_17', () => m.$('check_t0', [0x11]), 3);
    returns('check_t0_18', () => m.$('check_t0', [0x12]), 6);
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    returns('check_t1_11', () => m.$('check_t1', [0xB]), 6);
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 2);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 5);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 7);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    traps(
        'check_t1_22', () => m.$('check_t1', [0x16]), 'uninitialized element');
    traps(
        'check_t1_23', () => m.$('check_t1', [0x17]), 'uninitialized element');
    traps(
        'check_t1_24', () => m.$('check_t1', [0x18]), 'uninitialized element');
    traps(
        'check_t1_25', () => m.$('check_t1', [0x19]), 'uninitialized element');
    traps(
        'check_t1_26', () => m.$('check_t1', [0x1A]), 'uninitialized element');
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.18.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.18.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    traps('check_t0_0', () => m.$('check_t0', [0]), 'uninitialized element');
    traps('check_t0_1', () => m.$('check_t0', [1]), 'uninitialized element');
    returns('check_t0_2', () => m.$('check_t0', [2]), 3);
    returns('check_t0_3', () => m.$('check_t0', [3]), 1);
    returns('check_t0_4', () => m.$('check_t0', [4]), 4);
    returns('check_t0_5', () => m.$('check_t0', [5]), 1);
    traps('check_t0_6', () => m.$('check_t0', [6]), 'uninitialized element');
    traps('check_t0_7', () => m.$('check_t0', [7]), 'uninitialized element');
    traps('check_t0_8', () => m.$('check_t0', [8]), 'uninitialized element');
    traps('check_t0_9', () => m.$('check_t0', [9]), 'uninitialized element');
    traps('check_t0_10', () => m.$('check_t0', [0xA]), 'uninitialized element');
    traps('check_t0_11', () => m.$('check_t0', [0xB]), 'uninitialized element');
    returns('check_t0_12', () => m.$('check_t0', [0xC]), 7);
    returns('check_t0_13', () => m.$('check_t0', [0xD]), 5);
    returns('check_t0_14', () => m.$('check_t0', [0xE]), 2);
    returns('check_t0_15', () => m.$('check_t0', [0xF]), 3);
    returns('check_t0_16', () => m.$('check_t0', [0x10]), 6);
    traps(
        'check_t0_17', () => m.$('check_t0', [0x11]), 'uninitialized element');
    traps(
        'check_t0_18', () => m.$('check_t0', [0x12]), 'uninitialized element');
    traps(
        'check_t0_19', () => m.$('check_t0', [0x13]), 'uninitialized element');
    traps(
        'check_t0_20', () => m.$('check_t0', [0x14]), 'uninitialized element');
    traps(
        'check_t0_21', () => m.$('check_t0', [0x15]), 'uninitialized element');
    traps(
        'check_t0_22', () => m.$('check_t0', [0x16]), 'uninitialized element');
    traps(
        'check_t0_23', () => m.$('check_t0', [0x17]), 'uninitialized element');
    traps(
        'check_t0_24', () => m.$('check_t0', [0x18]), 'uninitialized element');
    traps(
        'check_t0_25', () => m.$('check_t0', [0x19]), 'uninitialized element');
    traps(
        'check_t0_26', () => m.$('check_t0', [0x1A]), 'uninitialized element');
    traps(
        'check_t0_27', () => m.$('check_t0', [0x1B]), 'uninitialized element');
    traps(
        'check_t0_28', () => m.$('check_t0', [0x1C]), 'uninitialized element');
    traps(
        'check_t0_29', () => m.$('check_t0', [0x1D]), 'uninitialized element');
    traps('check_t1_0', () => m.$('check_t1', [0]), 'uninitialized element');
    traps('check_t1_1', () => m.$('check_t1', [1]), 'uninitialized element');
    traps('check_t1_2', () => m.$('check_t1', [2]), 'uninitialized element');
    returns('check_t1_3', () => m.$('check_t1', [3]), 1);
    returns('check_t1_4', () => m.$('check_t1', [4]), 3);
    returns('check_t1_5', () => m.$('check_t1', [5]), 1);
    returns('check_t1_6', () => m.$('check_t1', [6]), 4);
    traps('check_t1_7', () => m.$('check_t1', [7]), 'uninitialized element');
    traps('check_t1_8', () => m.$('check_t1', [8]), 'uninitialized element');
    traps('check_t1_9', () => m.$('check_t1', [9]), 'uninitialized element');
    traps('check_t1_10', () => m.$('check_t1', [0xA]), 'uninitialized element');
    traps('check_t1_11', () => m.$('check_t1', [0xB]), 'uninitialized element');
    returns('check_t1_12', () => m.$('check_t1', [0xC]), 3);
    returns('check_t1_13', () => m.$('check_t1', [0xD]), 1);
    returns('check_t1_14', () => m.$('check_t1', [0xE]), 4);
    returns('check_t1_15', () => m.$('check_t1', [0xF]), 1);
    traps(
        'check_t1_16', () => m.$('check_t1', [0x10]), 'uninitialized element');
    traps(
        'check_t1_17', () => m.$('check_t1', [0x11]), 'uninitialized element');
    traps(
        'check_t1_18', () => m.$('check_t1', [0x12]), 'uninitialized element');
    traps(
        'check_t1_19', () => m.$('check_t1', [0x13]), 'uninitialized element');
    traps(
        'check_t1_20', () => m.$('check_t1', [0x14]), 'uninitialized element');
    traps(
        'check_t1_21', () => m.$('check_t1', [0x15]), 'uninitialized element');
    returns('check_t1_22', () => m.$('check_t1', [0x16]), 7);
    returns('check_t1_23', () => m.$('check_t1', [0x17]), 5);
    returns('check_t1_24', () => m.$('check_t1', [0x18]), 2);
    returns('check_t1_25', () => m.$('check_t1', [0x19]), 3);
    returns('check_t1_26', () => m.$('check_t1', [0x1A]), 6);
    traps(
        'check_t1_27', () => m.$('check_t1', [0x1B]), 'uninitialized element');
    traps(
        'check_t1_28', () => m.$('check_t1', [0x1C]), 'uninitialized element');
    traps(
        'check_t1_29', () => m.$('check_t1', [0x1D]), 'uninitialized element');
  });

  group('table_copy.19.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.19.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.20.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.20.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.21.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.21.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.22.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.22.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.23.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.23.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_copy.24.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.24.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_copy.25.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.25.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.26.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.26.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_copy.27.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.27.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.28.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.28.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_copy.29.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.29.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.30.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.30.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.31.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.31.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.32.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.32.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.33.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.33.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.34.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.34.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_copy.35.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.35.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_copy.36.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.36.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.37.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.37.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_copy.38.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.38.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.39.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.39.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('table_copy.40.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.40.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds table access');
  });

  group('table_copy.41.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.41.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0x18, 0, 0x10]),
        'out of bounds table access');
    returns('test_0', () => m.$('test', [0]), 0);
    returns('test_1', () => m.$('test', [1]), 1);
    returns('test_2', () => m.$('test', [2]), 2);
    returns('test_3', () => m.$('test', [3]), 3);
    returns('test_4', () => m.$('test', [4]), 4);
    returns('test_5', () => m.$('test', [5]), 5);
    returns('test_6', () => m.$('test', [6]), 6);
    returns('test_7', () => m.$('test', [7]), 7);
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

  group('table_copy.42.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.42.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0x17, 0, 0xF]),
        'out of bounds table access');
    returns('test_0', () => m.$('test', [0]), 0);
    returns('test_1', () => m.$('test', [1]), 1);
    returns('test_2', () => m.$('test', [2]), 2);
    returns('test_3', () => m.$('test', [3]), 3);
    returns('test_4', () => m.$('test', [4]), 4);
    returns('test_5', () => m.$('test', [5]), 5);
    returns('test_6', () => m.$('test', [6]), 6);
    returns('test_7', () => m.$('test', [7]), 7);
    returns('test_8', () => m.$('test', [8]), 8);
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

  group('table_copy.43.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.43.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0, 0x18, 0x10]),
        'out of bounds table access');
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
    returns('test_24', () => m.$('test', [0x18]), 0);
    returns('test_25', () => m.$('test', [0x19]), 1);
    returns('test_26', () => m.$('test', [0x1A]), 2);
    returns('test_27', () => m.$('test', [0x1B]), 3);
    returns('test_28', () => m.$('test', [0x1C]), 4);
    returns('test_29', () => m.$('test', [0x1D]), 5);
    returns('test_30', () => m.$('test', [0x1E]), 6);
    returns('test_31', () => m.$('test', [0x1F]), 7);
  });

  group('table_copy.44.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.44.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0, 0x17, 0xF]),
        'out of bounds table access');
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
    returns('test_23', () => m.$('test', [0x17]), 0);
    returns('test_24', () => m.$('test', [0x18]), 1);
    returns('test_25', () => m.$('test', [0x19]), 2);
    returns('test_26', () => m.$('test', [0x1A]), 3);
    returns('test_27', () => m.$('test', [0x1B]), 4);
    returns('test_28', () => m.$('test', [0x1C]), 5);
    returns('test_29', () => m.$('test', [0x1D]), 6);
    returns('test_30', () => m.$('test', [0x1E]), 7);
    returns('test_31', () => m.$('test', [0x1F]), 8);
  });

  group('table_copy.45.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.45.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0x18, 0xB, 0x10]),
        'out of bounds table access');
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
    returns('test_11', () => m.$('test', [0xB]), 0);
    returns('test_12', () => m.$('test', [0xC]), 1);
    returns('test_13', () => m.$('test', [0xD]), 2);
    returns('test_14', () => m.$('test', [0xE]), 3);
    returns('test_15', () => m.$('test', [0xF]), 4);
    returns('test_16', () => m.$('test', [0x10]), 5);
    returns('test_17', () => m.$('test', [0x11]), 6);
    returns('test_18', () => m.$('test', [0x12]), 7);
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

  group('table_copy.46.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.46.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0xB, 0x18, 0x10]),
        'out of bounds table access');
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
    returns('test_24', () => m.$('test', [0x18]), 0);
    returns('test_25', () => m.$('test', [0x19]), 1);
    returns('test_26', () => m.$('test', [0x1A]), 2);
    returns('test_27', () => m.$('test', [0x1B]), 3);
    returns('test_28', () => m.$('test', [0x1C]), 4);
    returns('test_29', () => m.$('test', [0x1D]), 5);
    returns('test_30', () => m.$('test', [0x1E]), 6);
    returns('test_31', () => m.$('test', [0x1F]), 7);
  });

  group('table_copy.47.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.47.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0x18, 0x15, 0x10]),
        'out of bounds table access');
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
    returns('test_21', () => m.$('test', [0x15]), 0);
    returns('test_22', () => m.$('test', [0x16]), 1);
    returns('test_23', () => m.$('test', [0x17]), 2);
    returns('test_24', () => m.$('test', [0x18]), 3);
    returns('test_25', () => m.$('test', [0x19]), 4);
    returns('test_26', () => m.$('test', [0x1A]), 5);
    returns('test_27', () => m.$('test', [0x1B]), 6);
    returns('test_28', () => m.$('test', [0x1C]), 7);
    traps('test_29', () => m.$('test', [0x1D]), 'uninitialized element');
    traps('test_30', () => m.$('test', [0x1E]), 'uninitialized element');
    traps('test_31', () => m.$('test', [0x1F]), 'uninitialized element');
  });

  group('table_copy.48.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.48.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0x15, 0x18, 0x10]),
        'out of bounds table access');
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
    returns('test_24', () => m.$('test', [0x18]), 0);
    returns('test_25', () => m.$('test', [0x19]), 1);
    returns('test_26', () => m.$('test', [0x1A]), 2);
    returns('test_27', () => m.$('test', [0x1B]), 3);
    returns('test_28', () => m.$('test', [0x1C]), 4);
    returns('test_29', () => m.$('test', [0x1D]), 5);
    returns('test_30', () => m.$('test', [0x1E]), 6);
    returns('test_31', () => m.$('test', [0x1F]), 7);
  });

  group('table_copy.49.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.49.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0x15, 0x15, 0x10]),
        'out of bounds table access');
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
    returns('test_21', () => m.$('test', [0x15]), 0);
    returns('test_22', () => m.$('test', [0x16]), 1);
    returns('test_23', () => m.$('test', [0x17]), 2);
    returns('test_24', () => m.$('test', [0x18]), 3);
    returns('test_25', () => m.$('test', [0x19]), 4);
    returns('test_26', () => m.$('test', [0x1A]), 5);
    returns('test_27', () => m.$('test', [0x1B]), 6);
    returns('test_28', () => m.$('test', [0x1C]), 7);
    returns('test_29', () => m.$('test', [0x1D]), 8);
    returns('test_30', () => m.$('test', [0x1E]), 9);
    returns('test_31', () => m.$('test', [0x1F]), 0xA);
  });

  group('table_copy.50.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.50.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0, 0x70, $i32('FFFFFFE0')]),
        'out of bounds table access');
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
    returns('test_112', () => m.$('test', [0x70]), 0);
    returns('test_113', () => m.$('test', [0x71]), 1);
    returns('test_114', () => m.$('test', [0x72]), 2);
    returns('test_115', () => m.$('test', [0x73]), 3);
    returns('test_116', () => m.$('test', [0x74]), 4);
    returns('test_117', () => m.$('test', [0x75]), 5);
    returns('test_118', () => m.$('test', [0x76]), 6);
    returns('test_119', () => m.$('test', [0x77]), 7);
    returns('test_120', () => m.$('test', [0x78]), 8);
    returns('test_121', () => m.$('test', [0x79]), 9);
    returns('test_122', () => m.$('test', [0x7A]), 0xA);
    returns('test_123', () => m.$('test', [0x7B]), 0xB);
    returns('test_124', () => m.$('test', [0x7C]), 0xC);
    returns('test_125', () => m.$('test', [0x7D]), 0xD);
    returns('test_126', () => m.$('test', [0x7E]), 0xE);
    returns('test_127', () => m.$('test', [0x7F]), 0xF);
  });

  group('table_copy.51.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_copy/table_copy.51.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0x70, 0, $i32('FFFFFFE0')]),
        'out of bounds table access');
    returns('test_0', () => m.$('test', [0]), 0);
    returns('test_1', () => m.$('test', [1]), 1);
    returns('test_2', () => m.$('test', [2]), 2);
    returns('test_3', () => m.$('test', [3]), 3);
    returns('test_4', () => m.$('test', [4]), 4);
    returns('test_5', () => m.$('test', [5]), 5);
    returns('test_6', () => m.$('test', [6]), 6);
    returns('test_7', () => m.$('test', [7]), 7);
    returns('test_8', () => m.$('test', [8]), 8);
    returns('test_9', () => m.$('test', [9]), 9);
    returns('test_10', () => m.$('test', [0xA]), 0xA);
    returns('test_11', () => m.$('test', [0xB]), 0xB);
    returns('test_12', () => m.$('test', [0xC]), 0xC);
    returns('test_13', () => m.$('test', [0xD]), 0xD);
    returns('test_14', () => m.$('test', [0xE]), 0xE);
    returns('test_15', () => m.$('test', [0xF]), 0xF);
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
  });
}
