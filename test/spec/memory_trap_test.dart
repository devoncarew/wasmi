// Generated from spec/test/core/memory_trap.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('memory_trap', () {
    group('memory_trap.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/memory_trap/memory_trap.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('store_0', () => m.$('store', [$i32('FFFFFFFC'), 0x2A]),
          null /*void*/);
      returns('load_0', () => m.$('load', [$i32('FFFFFFFC')]), 0x2A);
      traps('store_1', () => m.$('store', [$i32('FFFFFFFD'), $i32('12345678')]),
          'out of bounds memory access');
      traps('load_1', () => m.$('load', [$i32('FFFFFFFD')]),
          'out of bounds memory access');
      traps('store_2', () => m.$('store', [$i32('FFFFFFFE'), 0xD]),
          'out of bounds memory access');
      traps('load_2', () => m.$('load', [$i32('FFFFFFFE')]),
          'out of bounds memory access');
      traps('store_3', () => m.$('store', [$i32('FFFFFFFF'), 0xD]),
          'out of bounds memory access');
      traps('load_3', () => m.$('load', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('store_4', () => m.$('store', [0, 0xD]),
          'out of bounds memory access');
      traps('load_4', () => m.$('load', [0]), 'out of bounds memory access');
      traps('store_5', () => m.$('store', [$i32('80000000'), 0xD]),
          'out of bounds memory access');
      traps('load_5', () => m.$('load', [$i32('80000000')]),
          'out of bounds memory access');
      returns('memory_grow_0', () => m.$('memory.grow', [0x10001]),
          $i32('FFFFFFFF'));
    });

    group('memory_trap.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/memory_trap/memory_trap.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      traps('i32_store_0', () => m.$('i32.store', [0x10000, 0]),
          'out of bounds memory access');
      traps('i32_store_1', () => m.$('i32.store', [0xFFFF, 0]),
          'out of bounds memory access');
      traps('i32_store_2', () => m.$('i32.store', [0xFFFE, 0]),
          'out of bounds memory access');
      traps('i32_store_3', () => m.$('i32.store', [0xFFFD, 0]),
          'out of bounds memory access');
      traps('i32_store_4', () => m.$('i32.store', [$i32('FFFFFFFF'), 0]),
          'out of bounds memory access');
      traps('i32_store_5', () => m.$('i32.store', [$i32('FFFFFFFE'), 0]),
          'out of bounds memory access');
      traps('i32_store_6', () => m.$('i32.store', [$i32('FFFFFFFD'), 0]),
          'out of bounds memory access');
      traps('i32_store_7', () => m.$('i32.store', [$i32('FFFFFFFC'), 0]),
          'out of bounds memory access');
      traps('i64_store_0', () => m.$('i64.store', [0x10000, 0]),
          'out of bounds memory access');
      traps('i64_store_1', () => m.$('i64.store', [0xFFFF, 0]),
          'out of bounds memory access');
      traps('i64_store_2', () => m.$('i64.store', [0xFFFE, 0]),
          'out of bounds memory access');
      traps('i64_store_3', () => m.$('i64.store', [0xFFFD, 0]),
          'out of bounds memory access');
      traps('i64_store_4', () => m.$('i64.store', [0xFFFC, 0]),
          'out of bounds memory access');
      traps('i64_store_5', () => m.$('i64.store', [0xFFFB, 0]),
          'out of bounds memory access');
      traps('i64_store_6', () => m.$('i64.store', [0xFFFA, 0]),
          'out of bounds memory access');
      traps('i64_store_7', () => m.$('i64.store', [0xFFF9, 0]),
          'out of bounds memory access');
      traps('i64_store_8', () => m.$('i64.store', [$i32('FFFFFFFF'), 0]),
          'out of bounds memory access');
      traps('i64_store_9', () => m.$('i64.store', [$i32('FFFFFFFE'), 0]),
          'out of bounds memory access');
      traps('i64_store_10', () => m.$('i64.store', [$i32('FFFFFFFD'), 0]),
          'out of bounds memory access');
      traps('i64_store_11', () => m.$('i64.store', [$i32('FFFFFFFC'), 0]),
          'out of bounds memory access');
      traps('i64_store_12', () => m.$('i64.store', [$i32('FFFFFFFB'), 0]),
          'out of bounds memory access');
      traps('i64_store_13', () => m.$('i64.store', [$i32('FFFFFFFA'), 0]),
          'out of bounds memory access');
      traps('i64_store_14', () => m.$('i64.store', [$i32('FFFFFFF9'), 0]),
          'out of bounds memory access');
      traps('i64_store_15', () => m.$('i64.store', [$i32('FFFFFFF8'), 0]),
          'out of bounds memory access');
      traps('f32_store_0', () => m.$('f32.store', [0x10000, $f32('0')]),
          'out of bounds memory access');
      traps('f32_store_1', () => m.$('f32.store', [0xFFFF, $f32('0')]),
          'out of bounds memory access');
      traps('f32_store_2', () => m.$('f32.store', [0xFFFE, $f32('0')]),
          'out of bounds memory access');
      traps('f32_store_3', () => m.$('f32.store', [0xFFFD, $f32('0')]),
          'out of bounds memory access');
      traps(
          'f32_store_4',
          () => m.$('f32.store', [$i32('FFFFFFFF'), $f32('0')]),
          'out of bounds memory access');
      traps(
          'f32_store_5',
          () => m.$('f32.store', [$i32('FFFFFFFE'), $f32('0')]),
          'out of bounds memory access');
      traps(
          'f32_store_6',
          () => m.$('f32.store', [$i32('FFFFFFFD'), $f32('0')]),
          'out of bounds memory access');
      traps(
          'f32_store_7',
          () => m.$('f32.store', [$i32('FFFFFFFC'), $f32('0')]),
          'out of bounds memory access');
      traps('f64_store_0', () => m.$('f64.store', [0x10000, $f64('0')]),
          'out of bounds memory access');
      traps('f64_store_1', () => m.$('f64.store', [0xFFFF, $f64('0')]),
          'out of bounds memory access');
      traps('f64_store_2', () => m.$('f64.store', [0xFFFE, $f64('0')]),
          'out of bounds memory access');
      traps('f64_store_3', () => m.$('f64.store', [0xFFFD, $f64('0')]),
          'out of bounds memory access');
      traps('f64_store_4', () => m.$('f64.store', [0xFFFC, $f64('0')]),
          'out of bounds memory access');
      traps('f64_store_5', () => m.$('f64.store', [0xFFFB, $f64('0')]),
          'out of bounds memory access');
      traps('f64_store_6', () => m.$('f64.store', [0xFFFA, $f64('0')]),
          'out of bounds memory access');
      traps('f64_store_7', () => m.$('f64.store', [0xFFF9, $f64('0')]),
          'out of bounds memory access');
      traps(
        'f64_store_8',
        () => m.$('f64.store', [$i32('FFFFFFFF'), $f64('0')]),
        'out of bounds memory access',
        skip: 'failed',
      );
      traps(
        'f64_store_9',
        () => m.$('f64.store', [$i32('FFFFFFFE'), $f64('0')]),
        'out of bounds memory access',
        skip: 'failed',
      );
      traps(
        'f64_store_10',
        () => m.$('f64.store', [$i32('FFFFFFFD'), $f64('0')]),
        'out of bounds memory access',
        skip: 'failed',
      );
      traps(
          'f64_store_11',
          () => m.$('f64.store', [$i32('FFFFFFFC'), $f64('0')]),
          'out of bounds memory access');
      traps(
          'f64_store_12',
          () => m.$('f64.store', [$i32('FFFFFFFB'), $f64('0')]),
          'out of bounds memory access');
      traps(
          'f64_store_13',
          () => m.$('f64.store', [$i32('FFFFFFFA'), $f64('0')]),
          'out of bounds memory access');
      traps(
          'f64_store_14',
          () => m.$('f64.store', [$i32('FFFFFFF9'), $f64('0')]),
          'out of bounds memory access');
      traps(
          'f64_store_15',
          () => m.$('f64.store', [$i32('FFFFFFF8'), $f64('0')]),
          'out of bounds memory access');
      traps('i32_store8_0', () => m.$('i32.store8', [0x10000, 0]),
          'out of bounds memory access');
      traps('i32_store8_1', () => m.$('i32.store8', [$i32('FFFFFFFF'), 0]),
          'out of bounds memory access');
      traps('i32_store16_0', () => m.$('i32.store16', [0x10000, 0]),
          'out of bounds memory access');
      traps('i32_store16_1', () => m.$('i32.store16', [0xFFFF, 0]),
          'out of bounds memory access');
      traps('i32_store16_2', () => m.$('i32.store16', [$i32('FFFFFFFF'), 0]),
          'out of bounds memory access');
      traps('i32_store16_3', () => m.$('i32.store16', [$i32('FFFFFFFE'), 0]),
          'out of bounds memory access');
      traps('i64_store8_0', () => m.$('i64.store8', [0x10000, 0]),
          'out of bounds memory access');
      traps('i64_store8_1', () => m.$('i64.store8', [$i32('FFFFFFFF'), 0]),
          'out of bounds memory access');
      traps('i64_store16_0', () => m.$('i64.store16', [0x10000, 0]),
          'out of bounds memory access');
      traps('i64_store16_1', () => m.$('i64.store16', [0xFFFF, 0]),
          'out of bounds memory access');
      traps('i64_store16_2', () => m.$('i64.store16', [$i32('FFFFFFFF'), 0]),
          'out of bounds memory access');
      traps('i64_store16_3', () => m.$('i64.store16', [$i32('FFFFFFFE'), 0]),
          'out of bounds memory access');
      traps('i64_store32_0', () => m.$('i64.store32', [0x10000, 0]),
          'out of bounds memory access');
      traps('i64_store32_1', () => m.$('i64.store32', [0xFFFF, 0]),
          'out of bounds memory access');
      traps('i64_store32_2', () => m.$('i64.store32', [0xFFFE, 0]),
          'out of bounds memory access');
      traps('i64_store32_3', () => m.$('i64.store32', [0xFFFD, 0]),
          'out of bounds memory access');
      traps('i64_store32_4', () => m.$('i64.store32', [$i32('FFFFFFFF'), 0]),
          'out of bounds memory access');
      traps('i64_store32_5', () => m.$('i64.store32', [$i32('FFFFFFFE'), 0]),
          'out of bounds memory access');
      traps('i64_store32_6', () => m.$('i64.store32', [$i32('FFFFFFFD'), 0]),
          'out of bounds memory access');
      traps('i64_store32_7', () => m.$('i64.store32', [$i32('FFFFFFFC'), 0]),
          'out of bounds memory access');
      traps('i32_load_0', () => m.$('i32.load', [0x10000]),
          'out of bounds memory access');
      traps('i32_load_1', () => m.$('i32.load', [0xFFFF]),
          'out of bounds memory access');
      traps('i32_load_2', () => m.$('i32.load', [0xFFFE]),
          'out of bounds memory access');
      traps('i32_load_3', () => m.$('i32.load', [0xFFFD]),
          'out of bounds memory access');
      traps('i32_load_4', () => m.$('i32.load', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('i32_load_5', () => m.$('i32.load', [$i32('FFFFFFFE')]),
          'out of bounds memory access');
      traps('i32_load_6', () => m.$('i32.load', [$i32('FFFFFFFD')]),
          'out of bounds memory access');
      traps('i32_load_7', () => m.$('i32.load', [$i32('FFFFFFFC')]),
          'out of bounds memory access');
      traps('i64_load_0', () => m.$('i64.load', [0x10000]),
          'out of bounds memory access');
      traps('i64_load_1', () => m.$('i64.load', [0xFFFF]),
          'out of bounds memory access');
      traps('i64_load_2', () => m.$('i64.load', [0xFFFE]),
          'out of bounds memory access');
      traps('i64_load_3', () => m.$('i64.load', [0xFFFD]),
          'out of bounds memory access');
      traps('i64_load_4', () => m.$('i64.load', [0xFFFC]),
          'out of bounds memory access');
      traps('i64_load_5', () => m.$('i64.load', [0xFFFB]),
          'out of bounds memory access');
      traps('i64_load_6', () => m.$('i64.load', [0xFFFA]),
          'out of bounds memory access');
      traps('i64_load_7', () => m.$('i64.load', [0xFFF9]),
          'out of bounds memory access');
      traps('i64_load_8', () => m.$('i64.load', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('i64_load_9', () => m.$('i64.load', [$i32('FFFFFFFE')]),
          'out of bounds memory access');
      traps('i64_load_10', () => m.$('i64.load', [$i32('FFFFFFFD')]),
          'out of bounds memory access');
      traps('i64_load_11', () => m.$('i64.load', [$i32('FFFFFFFC')]),
          'out of bounds memory access');
      traps('i64_load_12', () => m.$('i64.load', [$i32('FFFFFFFB')]),
          'out of bounds memory access');
      traps('i64_load_13', () => m.$('i64.load', [$i32('FFFFFFFA')]),
          'out of bounds memory access');
      traps('i64_load_14', () => m.$('i64.load', [$i32('FFFFFFF9')]),
          'out of bounds memory access');
      traps('i64_load_15', () => m.$('i64.load', [$i32('FFFFFFF8')]),
          'out of bounds memory access');
      traps('f32_load_0', () => m.$('f32.load', [0x10000]),
          'out of bounds memory access');
      traps('f32_load_1', () => m.$('f32.load', [0xFFFF]),
          'out of bounds memory access');
      traps('f32_load_2', () => m.$('f32.load', [0xFFFE]),
          'out of bounds memory access');
      traps('f32_load_3', () => m.$('f32.load', [0xFFFD]),
          'out of bounds memory access');
      traps('f32_load_4', () => m.$('f32.load', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('f32_load_5', () => m.$('f32.load', [$i32('FFFFFFFE')]),
          'out of bounds memory access');
      traps('f32_load_6', () => m.$('f32.load', [$i32('FFFFFFFD')]),
          'out of bounds memory access');
      traps('f32_load_7', () => m.$('f32.load', [$i32('FFFFFFFC')]),
          'out of bounds memory access');
      traps('f64_load_0', () => m.$('f64.load', [0x10000]),
          'out of bounds memory access');
      traps('f64_load_1', () => m.$('f64.load', [0xFFFF]),
          'out of bounds memory access');
      traps('f64_load_2', () => m.$('f64.load', [0xFFFE]),
          'out of bounds memory access');
      traps('f64_load_3', () => m.$('f64.load', [0xFFFD]),
          'out of bounds memory access');
      traps('f64_load_4', () => m.$('f64.load', [0xFFFC]),
          'out of bounds memory access');
      traps('f64_load_5', () => m.$('f64.load', [0xFFFB]),
          'out of bounds memory access');
      traps('f64_load_6', () => m.$('f64.load', [0xFFFA]),
          'out of bounds memory access');
      traps('f64_load_7', () => m.$('f64.load', [0xFFF9]),
          'out of bounds memory access');
      traps('f64_load_8', () => m.$('f64.load', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('f64_load_9', () => m.$('f64.load', [$i32('FFFFFFFE')]),
          'out of bounds memory access');
      traps('f64_load_10', () => m.$('f64.load', [$i32('FFFFFFFD')]),
          'out of bounds memory access');
      traps('f64_load_11', () => m.$('f64.load', [$i32('FFFFFFFC')]),
          'out of bounds memory access');
      traps('f64_load_12', () => m.$('f64.load', [$i32('FFFFFFFB')]),
          'out of bounds memory access');
      traps('f64_load_13', () => m.$('f64.load', [$i32('FFFFFFFA')]),
          'out of bounds memory access');
      traps('f64_load_14', () => m.$('f64.load', [$i32('FFFFFFF9')]),
          'out of bounds memory access');
      traps('f64_load_15', () => m.$('f64.load', [$i32('FFFFFFF8')]),
          'out of bounds memory access');
      traps('i32_load8_s_0', () => m.$('i32.load8_s', [0x10000]),
          'out of bounds memory access');
      traps('i32_load8_s_1', () => m.$('i32.load8_s', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('i32_load8_u_0', () => m.$('i32.load8_u', [0x10000]),
          'out of bounds memory access');
      traps('i32_load8_u_1', () => m.$('i32.load8_u', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('i32_load16_s_0', () => m.$('i32.load16_s', [0x10000]),
          'out of bounds memory access');
      traps('i32_load16_s_1', () => m.$('i32.load16_s', [0xFFFF]),
          'out of bounds memory access');
      traps('i32_load16_s_2', () => m.$('i32.load16_s', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('i32_load16_s_3', () => m.$('i32.load16_s', [$i32('FFFFFFFE')]),
          'out of bounds memory access');
      traps('i32_load16_u_0', () => m.$('i32.load16_u', [0x10000]),
          'out of bounds memory access');
      traps('i32_load16_u_1', () => m.$('i32.load16_u', [0xFFFF]),
          'out of bounds memory access');
      traps('i32_load16_u_2', () => m.$('i32.load16_u', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('i32_load16_u_3', () => m.$('i32.load16_u', [$i32('FFFFFFFE')]),
          'out of bounds memory access');
      traps('i64_load8_s_0', () => m.$('i64.load8_s', [0x10000]),
          'out of bounds memory access');
      traps('i64_load8_s_1', () => m.$('i64.load8_s', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('i64_load8_u_0', () => m.$('i64.load8_u', [0x10000]),
          'out of bounds memory access');
      traps('i64_load8_u_1', () => m.$('i64.load8_u', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('i64_load16_s_0', () => m.$('i64.load16_s', [0x10000]),
          'out of bounds memory access');
      traps('i64_load16_s_1', () => m.$('i64.load16_s', [0xFFFF]),
          'out of bounds memory access');
      traps('i64_load16_s_2', () => m.$('i64.load16_s', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('i64_load16_s_3', () => m.$('i64.load16_s', [$i32('FFFFFFFE')]),
          'out of bounds memory access');
      traps('i64_load16_u_0', () => m.$('i64.load16_u', [0x10000]),
          'out of bounds memory access');
      traps('i64_load16_u_1', () => m.$('i64.load16_u', [0xFFFF]),
          'out of bounds memory access');
      traps('i64_load16_u_2', () => m.$('i64.load16_u', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('i64_load16_u_3', () => m.$('i64.load16_u', [$i32('FFFFFFFE')]),
          'out of bounds memory access');
      traps('i64_load32_s_0', () => m.$('i64.load32_s', [0x10000]),
          'out of bounds memory access');
      traps('i64_load32_s_1', () => m.$('i64.load32_s', [0xFFFF]),
          'out of bounds memory access');
      traps('i64_load32_s_2', () => m.$('i64.load32_s', [0xFFFE]),
          'out of bounds memory access');
      traps('i64_load32_s_3', () => m.$('i64.load32_s', [0xFFFD]),
          'out of bounds memory access');
      traps('i64_load32_s_4', () => m.$('i64.load32_s', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('i64_load32_s_5', () => m.$('i64.load32_s', [$i32('FFFFFFFE')]),
          'out of bounds memory access');
      traps('i64_load32_s_6', () => m.$('i64.load32_s', [$i32('FFFFFFFD')]),
          'out of bounds memory access');
      traps('i64_load32_s_7', () => m.$('i64.load32_s', [$i32('FFFFFFFC')]),
          'out of bounds memory access');
      traps('i64_load32_u_0', () => m.$('i64.load32_u', [0x10000]),
          'out of bounds memory access');
      traps('i64_load32_u_1', () => m.$('i64.load32_u', [0xFFFF]),
          'out of bounds memory access');
      traps('i64_load32_u_2', () => m.$('i64.load32_u', [0xFFFE]),
          'out of bounds memory access');
      traps('i64_load32_u_3', () => m.$('i64.load32_u', [0xFFFD]),
          'out of bounds memory access');
      traps('i64_load32_u_4', () => m.$('i64.load32_u', [$i32('FFFFFFFF')]),
          'out of bounds memory access');
      traps('i64_load32_u_5', () => m.$('i64.load32_u', [$i32('FFFFFFFE')]),
          'out of bounds memory access');
      traps('i64_load32_u_6', () => m.$('i64.load32_u', [$i32('FFFFFFFD')]),
          'out of bounds memory access');
      traps('i64_load32_u_7', () => m.$('i64.load32_u', [$i32('FFFFFFFC')]),
          'out of bounds memory access');
      returns('i64_load_16', () => m.$('i64.load', [0xFFF8]),
          $i64('6867666564636261'));
      returns(
        'i64_load_17',
        () => m.$('i64.load', [0]),
        $i64('6867666564636261'),
        skip: 'failed',
      );
      returns(
          'i64_store_16', () => m.$('i64.store', [0xFFF8, 0]), null /*void*/);
      traps('i32_store_8', () => m.$('i32.store', [0xFFFD, $i32('12345678')]),
          'out of bounds memory access');
      returns('i32_load_8', () => m.$('i32.load', [0xFFFC]), 0);
      traps(
          'i64_store_17',
          () => m.$('i64.store', [0xFFF9, $i64('1234567890ABCDEF')]),
          'out of bounds memory access');
      returns('i64_load_18', () => m.$('i64.load', [0xFFF8]), 0);
      traps('f32_store_8', () => m.$('f32.store', [0xFFFD, $f32('4D91A2B4')]),
          'out of bounds memory access');
      returns('f32_load_8', () => m.$('f32.load', [0xFFFC]), $f32('0'));
      traps(
          'f64_store_16',
          () => m.$('f64.store', [0xFFF9, $f64('43B234567890ABCE')]),
          'out of bounds memory access');
      returns('f64_load_16', () => m.$('f64.load', [0xFFF8]), $f64('0'));
    });
  });
}
