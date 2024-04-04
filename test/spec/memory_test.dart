// Generated from spec/test/core/memory.wast.

// ignore_for_file: unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  group('memory.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/memory/memory.0.wasm'));
      m = Module(def);
    });
  });

  group('memory.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/memory/memory.1.wasm'));
      m = Module(def);
    });
  });

  group('memory.2.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/memory/memory.2.wasm'));
      m = Module(def);
    });
  });

  group('memory.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/memory/memory.3.wasm'));
      m = Module(def);
    });
  });

  group('memory.4.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/memory/memory.4.wasm'));
      m = Module(def);
    });
  });

  group('memory.5.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/memory/memory.5.wasm'));
      m = Module(def);
    });
  });

  group('memory.8.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/memory/memory.8.wasm'));
      m = Module(def);
    });

    returns('memsize_0', () => m.$('memsize', []), 0);
  });

  group('memory.9.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/memory/memory.9.wasm'));
      m = Module(def);
    });

    returns('memsize_0', () => m.$('memsize', []), 0);
  });

  group('memory.10.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/memory/memory.10.wasm'));
      m = Module(def);
    });

    returns('memsize_0', () => m.$('memsize', []), 1);
  });

  group('memory.30.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/memory/memory.30.wasm'));
      m = Module(def);
    });

    returns('data_0', () => m.$('data', []), 1);
    returns('cast_0', () => m.$('cast', []), $f64('4045000000000000'));
    returns('i32_load8_s_0', () => m.$('i32_load8_s', [$i32('FFFFFFFF')]),
        $i32('FFFFFFFF'));
    returns(
        'i32_load8_u_0', () => m.$('i32_load8_u', [$i32('FFFFFFFF')]), 0xFF);
    returns('i32_load16_s_0', () => m.$('i32_load16_s', [$i32('FFFFFFFF')]),
        $i32('FFFFFFFF'));
    returns('i32_load16_u_0', () => m.$('i32_load16_u', [$i32('FFFFFFFF')]),
        0xFFFF);
    returns('i32_load8_s_1', () => m.$('i32_load8_s', [0x64]), 0x64);
    returns('i32_load8_u_1', () => m.$('i32_load8_u', [0xC8]), 0xC8);
    returns('i32_load16_s_1', () => m.$('i32_load16_s', [0x4E20]), 0x4E20);
    returns('i32_load16_u_1', () => m.$('i32_load16_u', [0x9C40]), 0x9C40);
    returns(
        'i32_load8_s_2', () => m.$('i32_load8_s', [$i32('FEDC6543')]), 0x43);
    returns('i32_load8_s_3', () => m.$('i32_load8_s', [$i32('3456CDEF')]),
        $i32('FFFFFFEF'));
    returns(
        'i32_load8_u_2', () => m.$('i32_load8_u', [$i32('FEDC6543')]), 0x43);
    returns(
        'i32_load8_u_3', () => m.$('i32_load8_u', [$i32('3456CDEF')]), 0xEF);
    returns('i32_load16_s_2', () => m.$('i32_load16_s', [$i32('FEDC6543')]),
        0x6543);
    returns('i32_load16_s_3', () => m.$('i32_load16_s', [$i32('3456CDEF')]),
        $i32('FFFFCDEF'));
    returns('i32_load16_u_2', () => m.$('i32_load16_u', [$i32('FEDC6543')]),
        0x6543);
    returns('i32_load16_u_3', () => m.$('i32_load16_u', [$i32('3456CDEF')]),
        0xCDEF);
    returns(
        'i64_load8_s_0',
        () => m.$('i64_load8_s', [$i64('FFFFFFFFFFFFFFFF')]),
        $i64('FFFFFFFFFFFFFFFF'));
    returns('i64_load8_u_0',
        () => m.$('i64_load8_u', [$i64('FFFFFFFFFFFFFFFF')]), 0xFF);
    returns(
        'i64_load16_s_0',
        () => m.$('i64_load16_s', [$i64('FFFFFFFFFFFFFFFF')]),
        $i64('FFFFFFFFFFFFFFFF'));
    returns('i64_load16_u_0',
        () => m.$('i64_load16_u', [$i64('FFFFFFFFFFFFFFFF')]), 0xFFFF);
    returns(
        'i64_load32_s_0',
        () => m.$('i64_load32_s', [$i64('FFFFFFFFFFFFFFFF')]),
        $i64('FFFFFFFFFFFFFFFF'));
    returns(
        'i64_load32_u_0',
        () => m.$('i64_load32_u', [$i64('FFFFFFFFFFFFFFFF')]),
        $i64('FFFFFFFF'));
    returns('i64_load8_s_1', () => m.$('i64_load8_s', [0x64]), 0x64);
    returns('i64_load8_u_1', () => m.$('i64_load8_u', [0xC8]), 0xC8);
    returns('i64_load16_s_1', () => m.$('i64_load16_s', [0x4E20]), 0x4E20);
    returns('i64_load16_u_1', () => m.$('i64_load16_u', [0x9C40]), 0x9C40);
    returns('i64_load32_s_1', () => m.$('i64_load32_s', [0x4E20]), 0x4E20);
    returns('i64_load32_u_1', () => m.$('i64_load32_u', [0x9C40]), 0x9C40);
    returns('i64_load8_s_2',
        () => m.$('i64_load8_s', [$i64('FEDCBA9856346543')]), 0x43);
    returns(
        'i64_load8_s_3',
        () => m.$('i64_load8_s', [$i64('3456436598BACDEF')]),
        $i64('FFFFFFFFFFFFFFEF'));
    returns('i64_load8_u_2',
        () => m.$('i64_load8_u', [$i64('FEDCBA9856346543')]), 0x43);
    returns('i64_load8_u_3',
        () => m.$('i64_load8_u', [$i64('3456436598BACDEF')]), 0xEF);
    returns('i64_load16_s_2',
        () => m.$('i64_load16_s', [$i64('FEDCBA9856346543')]), 0x6543);
    returns(
        'i64_load16_s_3',
        () => m.$('i64_load16_s', [$i64('3456436598BACDEF')]),
        $i64('FFFFFFFFFFFFCDEF'));
    returns('i64_load16_u_2',
        () => m.$('i64_load16_u', [$i64('FEDCBA9856346543')]), 0x6543);
    returns('i64_load16_u_3',
        () => m.$('i64_load16_u', [$i64('3456436598BACDEF')]), 0xCDEF);
    returns(
        'i64_load32_s_2',
        () => m.$('i64_load32_s', [$i64('FEDCBA9856346543')]),
        $i64('56346543'));
    returns(
        'i64_load32_s_3',
        () => m.$('i64_load32_s', [$i64('3456436598BACDEF')]),
        $i64('FFFFFFFF98BACDEF'));
    returns(
        'i64_load32_u_2',
        () => m.$('i64_load32_u', [$i64('FEDCBA9856346543')]),
        $i64('56346543'));
    returns(
        'i64_load32_u_3',
        () => m.$('i64_load32_u', [$i64('3456436598BACDEF')]),
        $i64('98BACDEF'));
  });
}
