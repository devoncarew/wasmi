// Generated from spec/test/core/table_grow.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('table_grow', () {
    group('table_grow.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/table_grow/table_grow.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('size_0', () => m.$('size', []), 0);
      traps('set_0', () => m.$('set', [0, $externref(2)]),
          'out of bounds table access');
      traps('get_0', () => m.$('get', [0]), 'out of bounds table access');
      returns('grow_0', () => m.$('grow', [1, null]), 0);
      returns('size_1', () => m.$('size', []), 1);
      returns('get_1', () => m.$('get', [0]), null);
      returns('set_1', () => m.$('set', [0, $externref(2)]), null /*void*/);
      returns('get_2', () => m.$('get', [0]), $externref(2));
      traps('set_2', () => m.$('set', [1, $externref(2)]),
          'out of bounds table access');
      traps('get_3', () => m.$('get', [1]), 'out of bounds table access');
      returns('grow_abbrev_0', () => m.$('grow-abbrev', [4, $externref(3)]), 1);
      returns('size_2', () => m.$('size', []), 5);
      returns('get_4', () => m.$('get', [0]), $externref(2));
      returns('set_3', () => m.$('set', [0, $externref(2)]), null /*void*/);
      returns('get_5', () => m.$('get', [0]), $externref(2));
      returns('get_6', () => m.$('get', [1]), $externref(3));
      returns('get_7', () => m.$('get', [4]), $externref(3));
      returns('set_4', () => m.$('set', [4, $externref(4)]), null /*void*/);
      returns('get_8', () => m.$('get', [4]), $externref(4));
      traps('set_5', () => m.$('set', [5, $externref(2)]),
          'out of bounds table access');
      traps('get_9', () => m.$('get', [5]), 'out of bounds table access');
    });

    group('table_grow.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/table_grow/table_grow.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('grow_0', () => m.$('grow', []), $i32('FFFFFFFF'));
    });

    group('table_grow.2.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/table_grow/table_grow.2.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('grow_0', () => m.$('grow', [0]), 0);
      returns('grow_1', () => m.$('grow', [1]), 0);
      returns('grow_2', () => m.$('grow', [0]), 1);
      returns('grow_3', () => m.$('grow', [2]), 1);
      returns('grow_4', () => m.$('grow', [0x320]), 3);
    });

    group('table_grow.3.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/table_grow/table_grow.3.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('grow_0', () => m.$('grow', [0]), 0);
      returns('grow_1', () => m.$('grow', [1]), 0);
      returns('grow_2', () => m.$('grow', [1]), 1);
      returns('grow_3', () => m.$('grow', [2]), 2);
      returns('grow_4', () => m.$('grow', [6]), 4);
      returns('grow_5', () => m.$('grow', [0]), 0xA);
      returns('grow_6', () => m.$('grow', [1]), $i32('FFFFFFFF'));
      returns('grow_7', () => m.$('grow', [0x10000]), $i32('FFFFFFFF'));
    });

    group('table_grow.4.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/table_grow/table_grow.4.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns(
          'check_table_null_0', () => m.$('check-table-null', [0, 9]), null);
      returns('grow_0', () => m.$('grow', [0xA]), 0xA);
      returns(
          'check_table_null_1', () => m.$('check-table-null', [0, 0x13]), null);
    });

    // assertInvalid('invalid table_grow.5.wasm', 'table_grow/table_grow.5.wasm', 'type mismatch', registered);
    // assertInvalid('invalid table_grow.6.wasm', 'table_grow/table_grow.6.wasm', 'type mismatch', registered);
    // assertInvalid('invalid table_grow.7.wasm', 'table_grow/table_grow.7.wasm', 'type mismatch', registered);
    // assertInvalid('invalid table_grow.8.wasm', 'table_grow/table_grow.8.wasm', 'type mismatch', registered);
    // assertInvalid('invalid table_grow.9.wasm', 'table_grow/table_grow.9.wasm', 'type mismatch', registered);
    // assertInvalid('invalid table_grow.10.wasm', 'table_grow/table_grow.10.wasm', 'type mismatch', registered);
    // assertInvalid('invalid table_grow.11.wasm', 'table_grow/table_grow.11.wasm', 'type mismatch', registered);
  });
}
