// Generated from spec/test/core/memory_fill.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('memory_fill.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_fill/memory_fill.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    returns('checkRange_0', () => m.$('checkRange', [0, 0xFF00, 0]),
        $i32('FFFFFFFF'));
    returns('checkRange_1', () => m.$('checkRange', [0xFF00, 0x10000, 0x55]),
        $i32('FFFFFFFF'));
  });

  group('memory_fill.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_fill/memory_fill.1.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds memory access');
  });

  group('memory_fill.2.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_fill/memory_fill.2.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds memory access');
  });

  group('memory_fill.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_fill/memory_fill.3.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    returns('checkRange_0', () => m.$('checkRange', [0, 0x10000, 0]),
        $i32('FFFFFFFF'));
  });

  group('memory_fill.4.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_fill/memory_fill.4.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
  });

  group('memory_fill.5.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_fill/memory_fill.5.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('test_0', () => m.$('test', []), 'out of bounds memory access');
  });

  group('memory_fill.6.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_fill/memory_fill.6.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    returns(
        'checkRange_0', () => m.$('checkRange', [0, 1, 0]), $i32('FFFFFFFF'));
    returns('checkRange_1', () => m.$('checkRange', [1, 0xFFFF, 0xAA]),
        $i32('FFFFFFFF'));
    returns('checkRange_2', () => m.$('checkRange', [0xFFFF, 0x10000, 0]),
        $i32('FFFFFFFF'));
  });

  group('memory_fill.7.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_fill/memory_fill.7.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('test_0', () => m.$('test', []));
    returns('checkRange_0', () => m.$('checkRange', [0, 0x12, 0]),
        $i32('FFFFFFFF'));
    returns('checkRange_1', () => m.$('checkRange', [0x12, 0x15, 0x55]),
        $i32('FFFFFFFF'));
    returns('checkRange_2', () => m.$('checkRange', [0x15, 0x19, 0xAA]),
        $i32('FFFFFFFF'));
    returns('checkRange_3', () => m.$('checkRange', [0x19, 0x1C, 0x55]),
        $i32('FFFFFFFF'));
    returns('checkRange_4', () => m.$('checkRange', [0x1C, 0x10000, 0]),
        $i32('FFFFFFFF'));
  });

  // assertInvalid('invalid memory_fill.8.wasm', 'memory_fill/memory_fill.8.wasm', 'unknown memory 0');
  // assertInvalid('invalid memory_fill.9.wasm', 'memory_fill/memory_fill.9.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.10.wasm', 'memory_fill/memory_fill.10.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.11.wasm', 'memory_fill/memory_fill.11.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.12.wasm', 'memory_fill/memory_fill.12.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.13.wasm', 'memory_fill/memory_fill.13.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.14.wasm', 'memory_fill/memory_fill.14.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.15.wasm', 'memory_fill/memory_fill.15.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.16.wasm', 'memory_fill/memory_fill.16.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.17.wasm', 'memory_fill/memory_fill.17.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.18.wasm', 'memory_fill/memory_fill.18.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.19.wasm', 'memory_fill/memory_fill.19.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.20.wasm', 'memory_fill/memory_fill.20.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.21.wasm', 'memory_fill/memory_fill.21.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.22.wasm', 'memory_fill/memory_fill.22.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.23.wasm', 'memory_fill/memory_fill.23.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.24.wasm', 'memory_fill/memory_fill.24.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.25.wasm', 'memory_fill/memory_fill.25.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.26.wasm', 'memory_fill/memory_fill.26.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.27.wasm', 'memory_fill/memory_fill.27.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.28.wasm', 'memory_fill/memory_fill.28.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.29.wasm', 'memory_fill/memory_fill.29.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.30.wasm', 'memory_fill/memory_fill.30.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.31.wasm', 'memory_fill/memory_fill.31.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.32.wasm', 'memory_fill/memory_fill.32.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.33.wasm', 'memory_fill/memory_fill.33.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.34.wasm', 'memory_fill/memory_fill.34.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.35.wasm', 'memory_fill/memory_fill.35.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.36.wasm', 'memory_fill/memory_fill.36.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.37.wasm', 'memory_fill/memory_fill.37.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.38.wasm', 'memory_fill/memory_fill.38.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.39.wasm', 'memory_fill/memory_fill.39.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.40.wasm', 'memory_fill/memory_fill.40.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.41.wasm', 'memory_fill/memory_fill.41.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.42.wasm', 'memory_fill/memory_fill.42.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.43.wasm', 'memory_fill/memory_fill.43.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.44.wasm', 'memory_fill/memory_fill.44.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.45.wasm', 'memory_fill/memory_fill.45.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.46.wasm', 'memory_fill/memory_fill.46.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.47.wasm', 'memory_fill/memory_fill.47.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.48.wasm', 'memory_fill/memory_fill.48.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.49.wasm', 'memory_fill/memory_fill.49.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.50.wasm', 'memory_fill/memory_fill.50.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.51.wasm', 'memory_fill/memory_fill.51.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.52.wasm', 'memory_fill/memory_fill.52.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.53.wasm', 'memory_fill/memory_fill.53.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.54.wasm', 'memory_fill/memory_fill.54.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.55.wasm', 'memory_fill/memory_fill.55.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.56.wasm', 'memory_fill/memory_fill.56.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.57.wasm', 'memory_fill/memory_fill.57.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.58.wasm', 'memory_fill/memory_fill.58.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.59.wasm', 'memory_fill/memory_fill.59.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.60.wasm', 'memory_fill/memory_fill.60.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.61.wasm', 'memory_fill/memory_fill.61.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.62.wasm', 'memory_fill/memory_fill.62.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.63.wasm', 'memory_fill/memory_fill.63.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.64.wasm', 'memory_fill/memory_fill.64.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.65.wasm', 'memory_fill/memory_fill.65.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.66.wasm', 'memory_fill/memory_fill.66.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.67.wasm', 'memory_fill/memory_fill.67.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.68.wasm', 'memory_fill/memory_fill.68.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.69.wasm', 'memory_fill/memory_fill.69.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.70.wasm', 'memory_fill/memory_fill.70.wasm', 'type mismatch');
  // assertInvalid('invalid memory_fill.71.wasm', 'memory_fill/memory_fill.71.wasm', 'type mismatch');

  group('memory_fill.72.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_fill/memory_fill.72.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0xFF00, 0x25, 0x200]),
        'out of bounds memory access');
    returns(
        'checkRange_0', () => m.$('checkRange', [0, 1, 0]), $i32('FFFFFFFF'));
  });

  group('memory_fill.73.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_fill/memory_fill.73.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0xFEFF, 0x25, 0x202]),
        'out of bounds memory access');
    returns(
        'checkRange_0', () => m.$('checkRange', [0, 1, 0]), $i32('FFFFFFFF'));
  });

  group('memory_fill.74.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/memory_fill/memory_fill.74.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('run_0', () => m.$('run', [0xFEFF, 0x25, $i32('FFFFFFFF')]),
        'out of bounds memory access');
    returns(
        'checkRange_0', () => m.$('checkRange', [0, 1, 0]), $i32('FFFFFFFF'));
  });
}
