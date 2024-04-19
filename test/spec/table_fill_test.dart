// Generated from spec/test/core/table_fill.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('table_fill.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_fill/table_fill.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('get_0', () => m.$('get', [1]), null);
    returns('get_1', () => m.$('get', [2]), null);
    returns('get_2', () => m.$('get', [3]), null);
    returns('get_3', () => m.$('get', [4]), null);
    returns('get_4', () => m.$('get', [5]), null);
    returns('fill_0', () => m.$('fill', [2, $externref(1), 3]), null /*void*/);
    returns('get_5', () => m.$('get', [1]), null);
    returns('get_6', () => m.$('get', [2]), $externref(1));
    returns('get_7', () => m.$('get', [3]), $externref(1));
    returns('get_8', () => m.$('get', [4]), $externref(1));
    returns('get_9', () => m.$('get', [5]), null);
    returns('fill_1', () => m.$('fill', [4, $externref(2), 2]), null /*void*/);
    returns('get_10', () => m.$('get', [3]), $externref(1));
    returns('get_11', () => m.$('get', [4]), $externref(2));
    returns('get_12', () => m.$('get', [5]), $externref(2));
    returns('get_13', () => m.$('get', [6]), null);
    returns('fill_2', () => m.$('fill', [4, $externref(3), 0]), null /*void*/);
    returns('get_14', () => m.$('get', [3]), $externref(1));
    returns('get_15', () => m.$('get', [4]), $externref(2));
    returns('get_16', () => m.$('get', [5]), $externref(2));
    returns('fill_3', () => m.$('fill', [8, $externref(4), 2]), null /*void*/);
    returns('get_17', () => m.$('get', [7]), null);
    returns('get_18', () => m.$('get', [8]), $externref(4));
    returns('get_19', () => m.$('get', [9]), $externref(4));
    returns(
        'fill_abbrev_0', () => m.$('fill-abbrev', [9, null, 1]), null /*void*/);
    returns('get_20', () => m.$('get', [8]), $externref(4));
    returns('get_21', () => m.$('get', [9]), null);
    returns(
        'fill_4', () => m.$('fill', [0xA, $externref(5), 0]), null /*void*/);
    returns('get_22', () => m.$('get', [9]), null);
    traps('fill_5', () => m.$('fill', [8, $externref(6), 3]),
        'out of bounds table access');
    returns('get_23', () => m.$('get', [7]), null);
    returns('get_24', () => m.$('get', [8]), $externref(4));
    returns('get_25', () => m.$('get', [9]), null);
    traps('fill_6', () => m.$('fill', [0xB, null, 0]),
        'out of bounds table access');
    traps('fill_7', () => m.$('fill', [0xB, null, 0xA]),
        'out of bounds table access');
  });

  // assertInvalid('invalid table_fill.1.wasm', 'table_fill/table_fill.1.wasm', 'type mismatch');
  // assertInvalid('invalid table_fill.2.wasm', 'table_fill/table_fill.2.wasm', 'type mismatch');
  // assertInvalid('invalid table_fill.3.wasm', 'table_fill/table_fill.3.wasm', 'type mismatch');
  // assertInvalid('invalid table_fill.4.wasm', 'table_fill/table_fill.4.wasm', 'type mismatch');
  // assertInvalid('invalid table_fill.5.wasm', 'table_fill/table_fill.5.wasm', 'type mismatch');
  // assertInvalid('invalid table_fill.6.wasm', 'table_fill/table_fill.6.wasm', 'type mismatch');
  // assertInvalid('invalid table_fill.7.wasm', 'table_fill/table_fill.7.wasm', 'type mismatch');
  // assertInvalid('invalid table_fill.8.wasm', 'table_fill/table_fill.8.wasm', 'type mismatch');
  // assertInvalid('invalid table_fill.9.wasm', 'table_fill/table_fill.9.wasm', 'type mismatch');
}
