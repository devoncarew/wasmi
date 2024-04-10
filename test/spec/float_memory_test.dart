// Generated from spec/test/core/float_memory.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('float_memory.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/float_memory/float_memory.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('i32_load_0', () => m.$('i32.load', []), $i32('7FA00000'));
    returns('f32_load_0', () => m.$('f32.load', []), $f32('7FA00000'));
    action('reset_0', () => m.$('reset', []));
    returns('i32_load_1', () => m.$('i32.load', []), 0);
    returns('f32_load_1', () => m.$('f32.load', []), $f32('0'));
    action('f32_store_0', () => m.$('f32.store', []));
    returns(
      'i32_load_2',
      () => m.$('i32.load', []),
      $i32('7FA00000'),
      skip: 'see test/spec/_expected_fail.txt',
    );
    returns('f32_load_2', () => m.$('f32.load', []), $f32('7FA00000'));
    action('reset_1', () => m.$('reset', []));
    returns('i32_load_3', () => m.$('i32.load', []), 0);
    returns('f32_load_3', () => m.$('f32.load', []), $f32('0'));
    action('i32_store_0', () => m.$('i32.store', []));
    returns('i32_load_4', () => m.$('i32.load', []), $i32('7FA00000'));
    returns('f32_load_4', () => m.$('f32.load', []), $f32('7FA00000'));
  });

  group('float_memory.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/float_memory/float_memory.1.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('i64_load_0', () => m.$('i64.load', []), $i64('7FF4000000000000'));
    returns('f64_load_0', () => m.$('f64.load', []), $f64('7FF4000000000000'));
    action('reset_0', () => m.$('reset', []));
    returns('i64_load_1', () => m.$('i64.load', []), 0);
    returns('f64_load_1', () => m.$('f64.load', []), $f64('0'));
    action('f64_store_0', () => m.$('f64.store', []));
    returns(
      'i64_load_2',
      () => m.$('i64.load', []),
      $i64('7FF4000000000000'),
      skip: 'see test/spec/_expected_fail.txt',
    );
    returns(
      'f64_load_2',
      () => m.$('f64.load', []),
      $f64('7FF4000000000000'),
      skip: 'see test/spec/_expected_fail.txt',
    );
    action('reset_1', () => m.$('reset', []));
    returns('i64_load_3', () => m.$('i64.load', []), 0);
    returns('f64_load_3', () => m.$('f64.load', []), $f64('0'));
    action('i64_store_0', () => m.$('i64.store', []));
    returns('i64_load_4', () => m.$('i64.load', []), $i64('7FF4000000000000'));
    returns('f64_load_4', () => m.$('f64.load', []), $f64('7FF4000000000000'));
  });

  group('float_memory.2.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/float_memory/float_memory.2.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('i32_load_0', () => m.$('i32.load', []), $i32('7FA00000'));
    returns('f32_load_0', () => m.$('f32.load', []), $f32('7FA00000'));
    action('reset_0', () => m.$('reset', []));
    returns('i32_load_1', () => m.$('i32.load', []), 0);
    returns('f32_load_1', () => m.$('f32.load', []), $f32('0'));
    action('f32_store_0', () => m.$('f32.store', []));
    returns(
      'i32_load_2',
      () => m.$('i32.load', []),
      $i32('7FA00000'),
      skip: 'see test/spec/_expected_fail.txt',
    );
    returns('f32_load_2', () => m.$('f32.load', []), $f32('7FA00000'));
    action('reset_1', () => m.$('reset', []));
    returns('i32_load_3', () => m.$('i32.load', []), 0);
    returns('f32_load_3', () => m.$('f32.load', []), $f32('0'));
    action('i32_store_0', () => m.$('i32.store', []));
    returns('i32_load_4', () => m.$('i32.load', []), $i32('7FA00000'));
    returns('f32_load_4', () => m.$('f32.load', []), $f32('7FA00000'));
  });

  group('float_memory.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/float_memory/float_memory.3.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('i64_load_0', () => m.$('i64.load', []), $i64('7FF4000000000000'));
    returns('f64_load_0', () => m.$('f64.load', []), $f64('7FF4000000000000'));
    action('reset_0', () => m.$('reset', []));
    returns('i64_load_1', () => m.$('i64.load', []), 0);
    returns('f64_load_1', () => m.$('f64.load', []), $f64('0'));
    action('f64_store_0', () => m.$('f64.store', []));
    returns(
      'i64_load_2',
      () => m.$('i64.load', []),
      $i64('7FF4000000000000'),
      skip: 'see test/spec/_expected_fail.txt',
    );
    returns(
      'f64_load_2',
      () => m.$('f64.load', []),
      $f64('7FF4000000000000'),
      skip: 'see test/spec/_expected_fail.txt',
    );
    action('reset_1', () => m.$('reset', []));
    returns('i64_load_3', () => m.$('i64.load', []), 0);
    returns('f64_load_3', () => m.$('f64.load', []), $f64('0'));
    action('i64_store_0', () => m.$('i64.store', []));
    returns('i64_load_4', () => m.$('i64.load', []), $i64('7FF4000000000000'));
    returns('f64_load_4', () => m.$('f64.load', []), $f64('7FF4000000000000'));
  });

  group('float_memory.4.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/float_memory/float_memory.4.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('i32_load_0', () => m.$('i32.load', []), $i32('7FD00001'));
    returns('f32_load_0', () => m.$('f32.load', []), $f32('7FD00001'));
    action('reset_0', () => m.$('reset', []));
    returns('i32_load_1', () => m.$('i32.load', []), 0);
    returns('f32_load_1', () => m.$('f32.load', []), $f32('0'));
    action('f32_store_0', () => m.$('f32.store', []));
    returns(
      'i32_load_2',
      () => m.$('i32.load', []),
      $i32('7FD00001'),
      skip: 'see test/spec/_expected_fail.txt',
    );
    returns('f32_load_2', () => m.$('f32.load', []), $f32('7FD00001'));
    action('reset_1', () => m.$('reset', []));
    returns('i32_load_3', () => m.$('i32.load', []), 0);
    returns('f32_load_3', () => m.$('f32.load', []), $f32('0'));
    action('i32_store_0', () => m.$('i32.store', []));
    returns('i32_load_4', () => m.$('i32.load', []), $i32('7FD00001'));
    returns('f32_load_4', () => m.$('f32.load', []), $f32('7FD00001'));
  });

  group('float_memory.5.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(
          File('test/spec/float_memory/float_memory.5.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('i64_load_0', () => m.$('i64.load', []), $i64('7FFC000000000001'));
    returns('f64_load_0', () => m.$('f64.load', []), $f64('7FFC000000000001'));
    action('reset_0', () => m.$('reset', []));
    returns('i64_load_1', () => m.$('i64.load', []), 0);
    returns('f64_load_1', () => m.$('f64.load', []), $f64('0'));
    action('f64_store_0', () => m.$('f64.store', []));
    returns(
      'i64_load_2',
      () => m.$('i64.load', []),
      $i64('7FFC000000000001'),
      skip: 'see test/spec/_expected_fail.txt',
    );
    returns(
      'f64_load_2',
      () => m.$('f64.load', []),
      $f64('7FFC000000000001'),
      skip: 'see test/spec/_expected_fail.txt',
    );
    action('reset_1', () => m.$('reset', []));
    returns('i64_load_3', () => m.$('i64.load', []), 0);
    returns('f64_load_3', () => m.$('f64.load', []), $f64('0'));
    action('i64_store_0', () => m.$('i64.store', []));
    returns('i64_load_4', () => m.$('i64.load', []), $i64('7FFC000000000001'));
    returns('f64_load_4', () => m.$('f64.load', []), $f64('7FFC000000000001'));
  });
}
