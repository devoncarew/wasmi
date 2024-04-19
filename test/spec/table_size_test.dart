// Generated from spec/test/core/table_size.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('table_size.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/table_size/table_size.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('size_t0_0', () => m.$('size-t0', []), 0);
    returns('grow_t0_0', () => m.$('grow-t0', [1]), null /*void*/);
    returns('size_t0_1', () => m.$('size-t0', []), 1);
    returns('grow_t0_1', () => m.$('grow-t0', [4]), null /*void*/);
    returns('size_t0_2', () => m.$('size-t0', []), 5);
    returns('grow_t0_2', () => m.$('grow-t0', [0]), null /*void*/);
    returns('size_t0_3', () => m.$('size-t0', []), 5);
    returns('size_t1_0', () => m.$('size-t1', []), 1);
    returns('grow_t1_0', () => m.$('grow-t1', [1]), null /*void*/);
    returns('size_t1_1', () => m.$('size-t1', []), 2);
    returns('grow_t1_1', () => m.$('grow-t1', [4]), null /*void*/);
    returns('size_t1_2', () => m.$('size-t1', []), 6);
    returns('grow_t1_2', () => m.$('grow-t1', [0]), null /*void*/);
    returns('size_t1_3', () => m.$('size-t1', []), 6);
    returns('size_t2_0', () => m.$('size-t2', []), 0);
    returns('grow_t2_0', () => m.$('grow-t2', [3]), null /*void*/);
    returns('size_t2_1', () => m.$('size-t2', []), 0);
    returns('grow_t2_1', () => m.$('grow-t2', [1]), null /*void*/);
    returns('size_t2_2', () => m.$('size-t2', []), 1);
    returns('grow_t2_2', () => m.$('grow-t2', [0]), null /*void*/);
    returns('size_t2_3', () => m.$('size-t2', []), 1);
    returns('grow_t2_3', () => m.$('grow-t2', [4]), null /*void*/);
    returns('size_t2_4', () => m.$('size-t2', []), 1);
    returns('grow_t2_4', () => m.$('grow-t2', [1]), null /*void*/);
    returns('size_t2_5', () => m.$('size-t2', []), 2);
    returns('size_t3_0', () => m.$('size-t3', []), 3);
    returns('grow_t3_0', () => m.$('grow-t3', [1]), null /*void*/);
    returns('size_t3_1', () => m.$('size-t3', []), 4);
    returns('grow_t3_1', () => m.$('grow-t3', [3]), null /*void*/);
    returns('size_t3_2', () => m.$('size-t3', []), 7);
    returns('grow_t3_2', () => m.$('grow-t3', [0]), null /*void*/);
    returns('size_t3_3', () => m.$('size-t3', []), 7);
    returns('grow_t3_3', () => m.$('grow-t3', [2]), null /*void*/);
    returns('size_t3_4', () => m.$('size-t3', []), 7);
    returns('grow_t3_4', () => m.$('grow-t3', [1]), null /*void*/);
    returns('size_t3_5', () => m.$('size-t3', []), 8);
  });

  // assertInvalid('invalid table_size.1.wasm', 'table_size/table_size.1.wasm', 'type mismatch');
  // assertInvalid('invalid table_size.2.wasm', 'table_size/table_size.2.wasm', 'type mismatch');
}
