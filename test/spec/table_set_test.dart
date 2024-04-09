// Generated from spec/test/core/table_set.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('table_set.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/table_set/table_set.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('get-externref_0', () => m.$('get-externref', [0]), null);
    returns('set-externref_0', () => m.$('set-externref', [0, $externref('1')]),
        null /*void*/);
    returns(
        'get-externref_1', () => m.$('get-externref', [0]), $externref('1'));
    returns('set-externref_1', () => m.$('set-externref', [0, null]),
        null /*void*/);
    returns('get-externref_2', () => m.$('get-externref', [0]), null);
    returns('get-funcref_0', () => m.$('get-funcref', [0]), null);
    returns('set-funcref-from_0', () => m.$('set-funcref-from', [0, 1]),
        null /*void*/);
    returns('is_null-funcref_0', () => m.$('is_null-funcref', [0]), 0);
    returns(
        'set-funcref_0', () => m.$('set-funcref', [0, null]), null /*void*/);
    returns('get-funcref_1', () => m.$('get-funcref', [0]), null);
    traps('set-externref_2', () => m.$('set-externref', [2, null]),
        'out of bounds table access');
    traps('set-funcref_1', () => m.$('set-funcref', [3, null]),
        'out of bounds table access');
    traps(
        'set-externref_3',
        () => m.$('set-externref', [$i32('FFFFFFFF'), null]),
        'out of bounds table access');
    traps('set-funcref_2', () => m.$('set-funcref', [$i32('FFFFFFFF'), null]),
        'out of bounds table access');
    traps('set-externref_4', () => m.$('set-externref', [2, $externref('0')]),
        'out of bounds table access');
    traps('set-funcref-from_1', () => m.$('set-funcref-from', [3, 1]),
        'out of bounds table access');
    traps(
        'set-externref_5',
        () => m.$('set-externref', [$i32('FFFFFFFF'), $externref('0')]),
        'out of bounds table access');
    traps(
        'set-funcref-from_2',
        () => m.$('set-funcref-from', [$i32('FFFFFFFF'), 1]),
        'out of bounds table access');
  });

  // assertInvalid('invalid table_set.1.wasm', 'table_set/table_set.1.wasm', 'type mismatch');
  // assertInvalid('invalid table_set.2.wasm', 'table_set/table_set.2.wasm', 'type mismatch');
  // assertInvalid('invalid table_set.3.wasm', 'table_set/table_set.3.wasm', 'type mismatch');
  // assertInvalid('invalid table_set.4.wasm', 'table_set/table_set.4.wasm', 'type mismatch');
  // assertInvalid('invalid table_set.5.wasm', 'table_set/table_set.5.wasm', 'type mismatch');
  // assertInvalid('invalid table_set.6.wasm', 'table_set/table_set.6.wasm', 'type mismatch');
  // assertInvalid('invalid table_set.7.wasm', 'table_set/table_set.7.wasm', 'type mismatch');
}
