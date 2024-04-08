// Generated from spec/test/core/memory_size.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('memory_size.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_size/memory_size.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('size_0', () => m.$('size', []), 0);
    returns('grow_0', () => m.$('grow', [1]), null /*void*/);
    returns('size_1', () => m.$('size', []), 1);
    returns('grow_1', () => m.$('grow', [4]), null /*void*/);
    returns('size_2', () => m.$('size', []), 5);
    returns('grow_2', () => m.$('grow', [0]), null /*void*/);
    returns('size_3', () => m.$('size', []), 5);
  });

  group('memory_size.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_size/memory_size.1.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('size_0', () => m.$('size', []), 1);
    returns('grow_0', () => m.$('grow', [1]), null /*void*/);
    returns('size_1', () => m.$('size', []), 2);
    returns('grow_1', () => m.$('grow', [4]), null /*void*/);
    returns('size_2', () => m.$('size', []), 6);
    returns('grow_2', () => m.$('grow', [0]), null /*void*/);
    returns('size_3', () => m.$('size', []), 6);
  });

  group('memory_size.2.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_size/memory_size.2.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('size_0', () => m.$('size', []), 0);
    returns('grow_0', () => m.$('grow', [3]), null /*void*/);
    returns('size_1', () => m.$('size', []), 0);
    returns('grow_1', () => m.$('grow', [1]), null /*void*/);
    returns('size_2', () => m.$('size', []), 1);
    returns('grow_2', () => m.$('grow', [0]), null /*void*/);
    returns('size_3', () => m.$('size', []), 1);
    returns('grow_3', () => m.$('grow', [4]), null /*void*/);
    returns('size_4', () => m.$('size', []), 1);
    returns('grow_4', () => m.$('grow', [1]), null /*void*/);
    returns('size_5', () => m.$('size', []), 2);
  });

  group('memory_size.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_size/memory_size.3.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('size_0', () => m.$('size', []), 3);
    returns('grow_0', () => m.$('grow', [1]), null /*void*/);
    returns('size_1', () => m.$('size', []), 4);
    returns('grow_1', () => m.$('grow', [3]), null /*void*/);
    returns('size_2', () => m.$('size', []), 7);
    returns('grow_2', () => m.$('grow', [0]), null /*void*/);
    returns('size_3', () => m.$('size', []), 7);
    returns('grow_3', () => m.$('grow', [2]), null /*void*/);
    returns('size_4', () => m.$('size', []), 7);
    returns('grow_4', () => m.$('grow', [1]), null /*void*/);
    returns('size_5', () => m.$('size', []), 8);
  });

  // assertInvalid('invalid memory_size.4.wasm', 'memory_size/memory_size.4.wasm', 'type mismatch');
  // assertInvalid('invalid memory_size.5.wasm', 'memory_size/memory_size.5.wasm', 'type mismatch');
}
