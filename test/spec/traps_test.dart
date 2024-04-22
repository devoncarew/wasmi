// Generated from spec/test/core/traps.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('traps', () {
    group('traps.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/traps/traps.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      traps('no_dce_i32_div_s_0', () => m.$('no_dce.i32.div_s', [1, 0]),
          'integer divide by zero');
      traps('no_dce_i32_div_u_0', () => m.$('no_dce.i32.div_u', [1, 0]),
          'integer divide by zero');
      traps('no_dce_i64_div_s_0', () => m.$('no_dce.i64.div_s', [1, 0]),
          'integer divide by zero');
      traps('no_dce_i64_div_u_0', () => m.$('no_dce.i64.div_u', [1, 0]),
          'integer divide by zero');
      traps(
        'no_dce_i32_div_s_1',
        () => m.$('no_dce.i32.div_s', [$i32('80000000'), $i32('FFFFFFFF')]),
        'integer overflow',
        skip: 'failed',
      );
      traps(
        'no_dce_i64_div_s_1',
        () => m.$('no_dce.i64.div_s',
            [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
        'integer overflow',
        skip: 'failed',
      );
    });

    group('traps.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/traps/traps.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      traps('no_dce_i32_rem_s_0', () => m.$('no_dce.i32.rem_s', [1, 0]),
          'integer divide by zero');
      traps('no_dce_i32_rem_u_0', () => m.$('no_dce.i32.rem_u', [1, 0]),
          'integer divide by zero');
      traps('no_dce_i64_rem_s_0', () => m.$('no_dce.i64.rem_s', [1, 0]),
          'integer divide by zero');
      traps('no_dce_i64_rem_u_0', () => m.$('no_dce.i64.rem_u', [1, 0]),
          'integer divide by zero');
    });

    group('traps.2.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/traps/traps.2.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      traps(
          'no_dce_i32_trunc_f32_s_0',
          () => m.$('no_dce.i32.trunc_f32_s', [$f32('7FC00000')]),
          'invalid conversion to integer');
      traps(
          'no_dce_i32_trunc_f32_u_0',
          () => m.$('no_dce.i32.trunc_f32_u', [$f32('7FC00000')]),
          'invalid conversion to integer');
      traps(
          'no_dce_i32_trunc_f64_s_0',
          () => m.$('no_dce.i32.trunc_f64_s', [$f64('7FF8000000000000')]),
          'invalid conversion to integer');
      traps(
          'no_dce_i32_trunc_f64_u_0',
          () => m.$('no_dce.i32.trunc_f64_u', [$f64('7FF8000000000000')]),
          'invalid conversion to integer');
      traps(
          'no_dce_i64_trunc_f32_s_0',
          () => m.$('no_dce.i64.trunc_f32_s', [$f32('7FC00000')]),
          'invalid conversion to integer');
      traps(
          'no_dce_i64_trunc_f32_u_0',
          () => m.$('no_dce.i64.trunc_f32_u', [$f32('7FC00000')]),
          'invalid conversion to integer');
      traps(
          'no_dce_i64_trunc_f64_s_0',
          () => m.$('no_dce.i64.trunc_f64_s', [$f64('7FF8000000000000')]),
          'invalid conversion to integer');
      traps(
          'no_dce_i64_trunc_f64_u_0',
          () => m.$('no_dce.i64.trunc_f64_u', [$f64('7FF8000000000000')]),
          'invalid conversion to integer');
    });

    group('traps.3.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/traps/traps.3.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      traps('no_dce_i32_load_0', () => m.$('no_dce.i32.load', [0x10000]),
          'out of bounds memory access');
      traps(
          'no_dce_i32_load16_s_0',
          () => m.$('no_dce.i32.load16_s', [0x10000]),
          'out of bounds memory access');
      traps(
          'no_dce_i32_load16_u_0',
          () => m.$('no_dce.i32.load16_u', [0x10000]),
          'out of bounds memory access');
      traps('no_dce_i32_load8_s_0', () => m.$('no_dce.i32.load8_s', [0x10000]),
          'out of bounds memory access');
      traps('no_dce_i32_load8_u_0', () => m.$('no_dce.i32.load8_u', [0x10000]),
          'out of bounds memory access');
      traps('no_dce_i64_load_0', () => m.$('no_dce.i64.load', [0x10000]),
          'out of bounds memory access');
      traps(
          'no_dce_i64_load32_s_0',
          () => m.$('no_dce.i64.load32_s', [0x10000]),
          'out of bounds memory access');
      traps(
          'no_dce_i64_load32_u_0',
          () => m.$('no_dce.i64.load32_u', [0x10000]),
          'out of bounds memory access');
      traps(
          'no_dce_i64_load16_s_0',
          () => m.$('no_dce.i64.load16_s', [0x10000]),
          'out of bounds memory access');
      traps(
          'no_dce_i64_load16_u_0',
          () => m.$('no_dce.i64.load16_u', [0x10000]),
          'out of bounds memory access');
      traps('no_dce_i64_load8_s_0', () => m.$('no_dce.i64.load8_s', [0x10000]),
          'out of bounds memory access');
      traps('no_dce_i64_load8_u_0', () => m.$('no_dce.i64.load8_u', [0x10000]),
          'out of bounds memory access');
      traps('no_dce_f32_load_0', () => m.$('no_dce.f32.load', [0x10000]),
          'out of bounds memory access');
      traps('no_dce_f64_load_0', () => m.$('no_dce.f64.load', [0x10000]),
          'out of bounds memory access');
    });
  });
}
