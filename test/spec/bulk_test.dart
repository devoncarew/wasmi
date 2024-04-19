// Generated from spec/test/core/bulk.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('bulk', () {
    group('bulk.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('bulk.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('bulk.2.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.2.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      action('fill_0', () => m.$('fill', [1, 0xFF, 3]));
      returns('load8_u_0', () => m.$('load8_u', [0]), 0);
      returns('load8_u_1', () => m.$('load8_u', [1]), 0xFF);
      returns('load8_u_2', () => m.$('load8_u', [2]), 0xFF);
      returns('load8_u_3', () => m.$('load8_u', [3]), 0xFF);
      returns('load8_u_4', () => m.$('load8_u', [4]), 0);
      action('fill_1', () => m.$('fill', [0, 0xBBAA, 2]));
      returns('load8_u_5', () => m.$('load8_u', [0]), 0xAA);
      returns('load8_u_6', () => m.$('load8_u', [1]), 0xAA);
      action('fill_2', () => m.$('fill', [0, 0, 0x10000]));
      traps('fill_3', () => m.$('fill', [0xFF00, 1, 0x101]),
          'out of bounds memory access');
      returns('load8_u_7', () => m.$('load8_u', [0xFF00]), 0);
      returns('load8_u_8', () => m.$('load8_u', [0xFFFF]), 0);
      action('fill_4', () => m.$('fill', [0x10000, 0, 0]));
      traps('fill_5', () => m.$('fill', [0x10001, 0, 0]),
          'out of bounds memory access');
    });

    group('bulk.3.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.3.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      action('copy_0', () => m.$('copy', [0xA, 0, 4]));
      returns('load8_u_0', () => m.$('load8_u', [9]), 0);
      returns('load8_u_1', () => m.$('load8_u', [0xA]), 0xAA);
      returns('load8_u_2', () => m.$('load8_u', [0xB]), 0xBB);
      returns('load8_u_3', () => m.$('load8_u', [0xC]), 0xCC);
      returns('load8_u_4', () => m.$('load8_u', [0xD]), 0xDD);
      returns('load8_u_5', () => m.$('load8_u', [0xE]), 0);
      action('copy_1', () => m.$('copy', [8, 0xA, 4]));
      returns('load8_u_6', () => m.$('load8_u', [8]), 0xAA);
      returns('load8_u_7', () => m.$('load8_u', [9]), 0xBB);
      returns('load8_u_8', () => m.$('load8_u', [0xA]), 0xCC);
      returns('load8_u_9', () => m.$('load8_u', [0xB]), 0xDD);
      returns('load8_u_10', () => m.$('load8_u', [0xC]), 0xCC);
      returns('load8_u_11', () => m.$('load8_u', [0xD]), 0xDD);
      action('copy_2', () => m.$('copy', [0xA, 7, 6]));
      returns('load8_u_12', () => m.$('load8_u', [0xA]), 0);
      returns('load8_u_13', () => m.$('load8_u', [0xB]), 0xAA);
      returns('load8_u_14', () => m.$('load8_u', [0xC]), 0xBB);
      returns('load8_u_15', () => m.$('load8_u', [0xD]), 0xCC);
      returns('load8_u_16', () => m.$('load8_u', [0xE]), 0xDD);
      returns('load8_u_17', () => m.$('load8_u', [0xF]), 0xCC);
      returns('load8_u_18', () => m.$('load8_u', [0x10]), 0);
      action('copy_3', () => m.$('copy', [0xFF00, 0, 0x100]));
      action('copy_4', () => m.$('copy', [0xFE00, 0xFF00, 0x100]));
      action('copy_5', () => m.$('copy', [0x10000, 0, 0]));
      action('copy_6', () => m.$('copy', [0, 0x10000, 0]));
      traps('copy_7', () => m.$('copy', [0x10001, 0, 0]),
          'out of bounds memory access');
      traps('copy_8', () => m.$('copy', [0, 0x10001, 0]),
          'out of bounds memory access');
    });

    group('bulk.4.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.4.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      action('init_0', () => m.$('init', [0, 1, 2]));
      returns('load8_u_0', () => m.$('load8_u', [0]), 0xBB);
      returns('load8_u_1', () => m.$('load8_u', [1]), 0xCC);
      returns('load8_u_2', () => m.$('load8_u', [2]), 0);
      action('init_1', () => m.$('init', [0xFFFC, 0, 4]));
      traps('init_2', () => m.$('init', [0xFFFE, 0, 3]),
          'out of bounds memory access');
      returns('load8_u_3', () => m.$('load8_u', [0xFFFE]), 0xCC);
      returns('load8_u_4', () => m.$('load8_u', [0xFFFF]), 0xDD);
      action('init_3', () => m.$('init', [0x10000, 0, 0]));
      action('init_4', () => m.$('init', [0, 4, 0]));
      traps('init_5', () => m.$('init', [0x10001, 0, 0]),
          'out of bounds memory access');
      traps('init_6', () => m.$('init', [0, 5, 0]),
          'out of bounds memory access');
    });

    group('bulk.5.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.5.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      action('init_passive_0', () => m.$('init_passive', [1]));
      action('drop_passive_0', () => m.$('drop_passive', []));
      action('drop_passive_1', () => m.$('drop_passive', []));
      returns('init_passive_1', () => m.$('init_passive', [0]), null /*void*/);
      traps('init_passive_2', () => m.$('init_passive', [1]),
          'out of bounds memory access');
      action('init_passive_3', () => m.$('init_passive', [0]));
      action('drop_active_0', () => m.$('drop_active', []));
      returns('init_active_0', () => m.$('init_active', [0]), null /*void*/);
      traps('init_active_1', () => m.$('init_active', [1]),
          'out of bounds memory access');
      action('init_active_2', () => m.$('init_active', [0]));
    });

    group('bulk.6.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.6.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('bulk.7.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.7.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('bulk.8.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.8.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      traps(
          'init_0', () => m.$('init', [2, 0, 2]), 'out of bounds table access');
      traps(
        'call_0',
        () => m.$('call', [2]),
        'uninitialized element 2',
        skip: 'failed',
      );
      action('init_1', () => m.$('init', [0, 1, 2]));
      returns('call_1', () => m.$('call', [0]), 1);
      returns('call_2', () => m.$('call', [1]), 0);
      traps('call_3', () => m.$('call', [2]), 'uninitialized element');
      action('init_2', () => m.$('init', [1, 2, 2]));
      action('init_3', () => m.$('init', [3, 0, 0]));
      action('init_4', () => m.$('init', [0, 4, 0]));
      traps(
          'init_5', () => m.$('init', [4, 0, 0]), 'out of bounds table access');
      traps(
          'init_6', () => m.$('init', [0, 5, 0]), 'out of bounds table access');
    });

    group('bulk.9.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.9.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      action('init_passive_0', () => m.$('init_passive', [1]));
      action('drop_passive_0', () => m.$('drop_passive', []));
      action('drop_passive_1', () => m.$('drop_passive', []));
      returns('init_passive_1', () => m.$('init_passive', [0]), null /*void*/);
      traps('init_passive_2', () => m.$('init_passive', [1]),
          'out of bounds table access');
      action('init_passive_3', () => m.$('init_passive', [0]));
      action('drop_active_0', () => m.$('drop_active', []));
      returns('init_active_0', () => m.$('init_active', [0]), null /*void*/);
      traps('init_active_1', () => m.$('init_active', [1]),
          'out of bounds table access');
      action('init_active_2', () => m.$('init_active', [0]));
    });

    group('bulk.10.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.10.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('bulk.11.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.11.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('bulk.12.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/bulk/bulk.12.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      action('copy_0', () => m.$('copy', [3, 0, 3]));
      returns('call_0', () => m.$('call', [3]), 0);
      returns('call_1', () => m.$('call', [4]), 1);
      returns('call_2', () => m.$('call', [5]), 2);
      action('copy_1', () => m.$('copy', [0, 1, 3]));
      returns('call_3', () => m.$('call', [0]), 1);
      returns('call_4', () => m.$('call', [1]), 2);
      returns('call_5', () => m.$('call', [2]), 0);
      action('copy_2', () => m.$('copy', [2, 0, 3]));
      returns('call_6', () => m.$('call', [2]), 1);
      returns('call_7', () => m.$('call', [3]), 2);
      returns('call_8', () => m.$('call', [4]), 0);
      action('copy_3', () => m.$('copy', [6, 8, 2]));
      action('copy_4', () => m.$('copy', [8, 6, 2]));
      action('copy_5', () => m.$('copy', [0xA, 0, 0]));
      action('copy_6', () => m.$('copy', [0, 0xA, 0]));
      traps('copy_7', () => m.$('copy', [0xB, 0, 0]),
          'out of bounds table access');
      traps('copy_8', () => m.$('copy', [0, 0xB, 0]),
          'out of bounds table access');
    });
  });
}
