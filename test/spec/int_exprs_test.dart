// Generated from spec/test/core/int_exprs.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  group('int_exprs.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.0.wasm'));
      m = Module(def);
    });

    returns('i32_no_fold_cmp_s_offset_0',
        () => m.$('i32.no_fold_cmp_s_offset', [$i32('7FFFFFFF'), 0]), 1);
    returns('i32_no_fold_cmp_u_offset_0',
        () => m.$('i32.no_fold_cmp_u_offset', [$i32('FFFFFFFF'), 0]), 1);
    returns(
        'i64_no_fold_cmp_s_offset_0',
        () => m.$('i64.no_fold_cmp_s_offset', [$i64('7FFFFFFFFFFFFFFF'), 0]),
        1);
    returns(
        'i64_no_fold_cmp_u_offset_0',
        () => m.$('i64.no_fold_cmp_u_offset', [$i64('FFFFFFFFFFFFFFFF'), 0]),
        1);
  });

  group('int_exprs.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.1.wasm'));
      m = Module(def);
    });

    returns(
        'i64_no_fold_wrap_extend_s_0',
        () => m.$('i64.no_fold_wrap_extend_s', [$i64('10203040506070')]),
        $i64('40506070'));
    returns(
        'i64_no_fold_wrap_extend_s_1',
        () => m.$('i64.no_fold_wrap_extend_s', [$i64('A0B0C0D0E0F0A0')]),
        $i64('FFFFFFFFD0E0F0A0'));
  });

  group('int_exprs.2.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.2.wasm'));
      m = Module(def);
    });

    returns(
        'i64_no_fold_wrap_extend_u_0',
        () => m.$('i64.no_fold_wrap_extend_u', [$i64('10203040506070')]),
        $i64('40506070'));
  });

  group('int_exprs.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.3.wasm'));
      m = Module(def);
    });

    returns('i32_no_fold_shl_shr_s_0',
        () => m.$('i32.no_fold_shl_shr_s', [$i32('80000000')]), 0);
    returns('i32_no_fold_shl_shr_u_0',
        () => m.$('i32.no_fold_shl_shr_u', [$i32('80000000')]), 0);
    returns('i64_no_fold_shl_shr_s_0',
        () => m.$('i64.no_fold_shl_shr_s', [$i64('8000000000000000')]), 0);
    returns('i64_no_fold_shl_shr_u_0',
        () => m.$('i64.no_fold_shl_shr_u', [$i64('8000000000000000')]), 0);
  });

  group('int_exprs.4.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.4.wasm'));
      m = Module(def);
    });

    returns(
        'i32_no_fold_shr_s_shl_0', () => m.$('i32.no_fold_shr_s_shl', [1]), 0);
    returns(
        'i32_no_fold_shr_u_shl_0', () => m.$('i32.no_fold_shr_u_shl', [1]), 0);
    returns(
        'i64_no_fold_shr_s_shl_0', () => m.$('i64.no_fold_shr_s_shl', [1]), 0);
    returns(
        'i64_no_fold_shr_u_shl_0', () => m.$('i64.no_fold_shr_u_shl', [1]), 0);
  });

  group('int_exprs.5.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.5.wasm'));
      m = Module(def);
    });

    returns(
        'i32_no_fold_div_s_mul_0', () => m.$('i32.no_fold_div_s_mul', [1]), 0);
    returns(
        'i32_no_fold_div_u_mul_0', () => m.$('i32.no_fold_div_u_mul', [1]), 0);
    returns(
        'i64_no_fold_div_s_mul_0', () => m.$('i64.no_fold_div_s_mul', [1]), 0);
    returns(
        'i64_no_fold_div_u_mul_0', () => m.$('i64.no_fold_div_u_mul', [1]), 0);
  });

  group('int_exprs.6.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.6.wasm'));
      m = Module(def);
    });

    traps('i32_no_fold_div_s_self_0', () => m.$('i32.no_fold_div_s_self', [0]),
        'integer divide by zero');
    traps('i32_no_fold_div_u_self_0', () => m.$('i32.no_fold_div_u_self', [0]),
        'integer divide by zero');
    traps('i64_no_fold_div_s_self_0', () => m.$('i64.no_fold_div_s_self', [0]),
        'integer divide by zero');
    traps('i64_no_fold_div_u_self_0', () => m.$('i64.no_fold_div_u_self', [0]),
        'integer divide by zero');
  });

  group('int_exprs.7.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.7.wasm'));
      m = Module(def);
    });

    traps('i32_no_fold_rem_s_self_0', () => m.$('i32.no_fold_rem_s_self', [0]),
        'integer divide by zero');
    traps('i32_no_fold_rem_u_self_0', () => m.$('i32.no_fold_rem_u_self', [0]),
        'integer divide by zero');
    traps('i64_no_fold_rem_s_self_0', () => m.$('i64.no_fold_rem_s_self', [0]),
        'integer divide by zero');
    traps('i64_no_fold_rem_u_self_0', () => m.$('i64.no_fold_rem_u_self', [0]),
        'integer divide by zero');
  });

  group('int_exprs.8.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.8.wasm'));
      m = Module(def);
    });

    returns('i32_no_fold_mul_div_s_0',
        () => m.$('i32.no_fold_mul_div_s', [$i32('80000000')]), 0);
    returns('i32_no_fold_mul_div_u_0',
        () => m.$('i32.no_fold_mul_div_u', [$i32('80000000')]), 0);
    returns('i64_no_fold_mul_div_s_0',
        () => m.$('i64.no_fold_mul_div_s', [$i64('8000000000000000')]), 0);
    returns('i64_no_fold_mul_div_u_0',
        () => m.$('i64.no_fold_mul_div_u', [$i64('8000000000000000')]), 0);
  });

  group('int_exprs.9.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.9.wasm'));
      m = Module(def);
    });

    returns('i32_no_fold_div_s_2_0',
        () => m.$('i32.no_fold_div_s_2', [$i32('FFFFFFF5')]), $i32('FFFFFFFB'));
    returns(
        'i64_no_fold_div_s_2_0',
        () => m.$('i64.no_fold_div_s_2', [$i64('FFFFFFFFFFFFFFF5')]),
        $i64('FFFFFFFFFFFFFFFB'));
  });

  group('int_exprs.10.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.10.wasm'));
      m = Module(def);
    });

    returns('i32_no_fold_rem_s_2_0',
        () => m.$('i32.no_fold_rem_s_2', [$i32('FFFFFFF5')]), $i32('FFFFFFFF'));
    returns(
        'i64_no_fold_rem_s_2_0',
        () => m.$('i64.no_fold_rem_s_2', [$i64('FFFFFFFFFFFFFFF5')]),
        $i64('FFFFFFFFFFFFFFFF'));
  });

  group('int_exprs.11.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.11.wasm'));
      m = Module(def);
    });

    traps('i32_div_s_0_0', () => m.$('i32.div_s_0', [0x47]),
        'integer divide by zero');
    traps('i32_div_u_0_0', () => m.$('i32.div_u_0', [0x47]),
        'integer divide by zero');
    traps('i64_div_s_0_0', () => m.$('i64.div_s_0', [0x47]),
        'integer divide by zero');
    traps('i64_div_u_0_0', () => m.$('i64.div_u_0', [0x47]),
        'integer divide by zero');
  });

  group('int_exprs.12.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.12.wasm'));
      m = Module(def);
    });

    returns('i32_div_s_3_0', () => m.$('i32.div_s_3', [0x47]), 0x17);
    returns('i32_div_s_3_1', () => m.$('i32.div_s_3', [$i32('60000000')]),
        $i32('20000000'));
    returns('i32_div_u_3_0', () => m.$('i32.div_u_3', [0x47]), 0x17);
    returns('i32_div_u_3_1', () => m.$('i32.div_u_3', [$i32('C0000000')]),
        $i32('40000000'));
    returns('i64_div_s_3_0', () => m.$('i64.div_s_3', [0x47]), 0x17);
    returns(
        'i64_div_s_3_1',
        () => m.$('i64.div_s_3', [$i64('3000000000000000')]),
        $i64('1000000000000000'));
    returns('i64_div_u_3_0', () => m.$('i64.div_u_3', [0x47]), 0x17);
    returns(
      'i64_div_u_3_1',
      () => m.$('i64.div_u_3', [$i64('C000000000000000')]),
      $i64('4000000000000000'),
      skip: 'see test/spec/_expected_fail.txt',
    );
  });

  group('int_exprs.13.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.13.wasm'));
      m = Module(def);
    });

    returns('i32_div_s_5_0', () => m.$('i32.div_s_5', [0x47]), 0xE);
    returns('i32_div_s_5_1', () => m.$('i32.div_s_5', [$i32('50000000')]),
        $i32('10000000'));
    returns('i32_div_u_5_0', () => m.$('i32.div_u_5', [0x47]), 0xE);
    returns('i32_div_u_5_1', () => m.$('i32.div_u_5', [$i32('A0000000')]),
        $i32('20000000'));
    returns('i64_div_s_5_0', () => m.$('i64.div_s_5', [0x47]), 0xE);
    returns(
        'i64_div_s_5_1',
        () => m.$('i64.div_s_5', [$i64('5000000000000000')]),
        $i64('1000000000000000'));
    returns('i64_div_u_5_0', () => m.$('i64.div_u_5', [0x47]), 0xE);
    returns(
      'i64_div_u_5_1',
      () => m.$('i64.div_u_5', [$i64('A000000000000000')]),
      $i64('2000000000000000'),
      skip: 'see test/spec/_expected_fail.txt',
    );
  });

  group('int_exprs.14.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.14.wasm'));
      m = Module(def);
    });

    returns('i32_div_s_7_0', () => m.$('i32.div_s_7', [0x47]), 0xA);
    returns('i32_div_s_7_1', () => m.$('i32.div_s_7', [$i32('70000000')]),
        $i32('10000000'));
    returns('i32_div_u_7_0', () => m.$('i32.div_u_7', [0x47]), 0xA);
    returns('i32_div_u_7_1', () => m.$('i32.div_u_7', [$i32('E0000000')]),
        $i32('20000000'));
    returns('i64_div_s_7_0', () => m.$('i64.div_s_7', [0x47]), 0xA);
    returns(
        'i64_div_s_7_1',
        () => m.$('i64.div_s_7', [$i64('7000000000000000')]),
        $i64('1000000000000000'));
    returns('i64_div_u_7_0', () => m.$('i64.div_u_7', [0x47]), 0xA);
    returns(
      'i64_div_u_7_1',
      () => m.$('i64.div_u_7', [$i64('E000000000000000')]),
      $i64('2000000000000000'),
      skip: 'see test/spec/_expected_fail.txt',
    );
  });

  group('int_exprs.15.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.15.wasm'));
      m = Module(def);
    });

    returns('i32_rem_s_3_0', () => m.$('i32.rem_s_3', [0x47]), 2);
    returns('i32_rem_s_3_1', () => m.$('i32.rem_s_3', [$i32('60000000')]), 0);
    returns('i32_rem_u_3_0', () => m.$('i32.rem_u_3', [0x47]), 2);
    returns('i32_rem_u_3_1', () => m.$('i32.rem_u_3', [$i32('C0000000')]), 0);
    returns('i64_rem_s_3_0', () => m.$('i64.rem_s_3', [0x47]), 2);
    returns('i64_rem_s_3_1',
        () => m.$('i64.rem_s_3', [$i64('3000000000000000')]), 0);
    returns('i64_rem_u_3_0', () => m.$('i64.rem_u_3', [0x47]), 2);
    returns(
      'i64_rem_u_3_1',
      () => m.$('i64.rem_u_3', [$i64('C000000000000000')]),
      0,
      skip: 'see test/spec/_expected_fail.txt',
    );
  });

  group('int_exprs.16.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.16.wasm'));
      m = Module(def);
    });

    returns('i32_rem_s_5_0', () => m.$('i32.rem_s_5', [0x47]), 1);
    returns('i32_rem_s_5_1', () => m.$('i32.rem_s_5', [$i32('50000000')]), 0);
    returns('i32_rem_u_5_0', () => m.$('i32.rem_u_5', [0x47]), 1);
    returns('i32_rem_u_5_1', () => m.$('i32.rem_u_5', [$i32('A0000000')]), 0);
    returns('i64_rem_s_5_0', () => m.$('i64.rem_s_5', [0x47]), 1);
    returns('i64_rem_s_5_1',
        () => m.$('i64.rem_s_5', [$i64('5000000000000000')]), 0);
    returns('i64_rem_u_5_0', () => m.$('i64.rem_u_5', [0x47]), 1);
    returns(
      'i64_rem_u_5_1',
      () => m.$('i64.rem_u_5', [$i64('A000000000000000')]),
      0,
      skip: 'see test/spec/_expected_fail.txt',
    );
  });

  group('int_exprs.17.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.17.wasm'));
      m = Module(def);
    });

    returns('i32_rem_s_7_0', () => m.$('i32.rem_s_7', [0x47]), 1);
    returns('i32_rem_s_7_1', () => m.$('i32.rem_s_7', [$i32('70000000')]), 0);
    returns('i32_rem_u_7_0', () => m.$('i32.rem_u_7', [0x47]), 1);
    returns('i32_rem_u_7_1', () => m.$('i32.rem_u_7', [$i32('E0000000')]), 0);
    returns('i64_rem_s_7_0', () => m.$('i64.rem_s_7', [0x47]), 1);
    returns('i64_rem_s_7_1',
        () => m.$('i64.rem_s_7', [$i64('7000000000000000')]), 0);
    returns('i64_rem_u_7_0', () => m.$('i64.rem_u_7', [0x47]), 1);
    returns(
      'i64_rem_u_7_1',
      () => m.$('i64.rem_u_7', [$i64('E000000000000000')]),
      0,
      skip: 'see test/spec/_expected_fail.txt',
    );
  });

  group('int_exprs.18.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/int_exprs/int_exprs.18.wasm'));
      m = Module(def);
    });

    traps(
      'i32_no_fold_div_neg1_0',
      () => m.$('i32.no_fold_div_neg1', [$i32('80000000')]),
      'integer overflow',
      skip: 'see test/spec/_expected_fail.txt',
    );
    traps(
      'i64_no_fold_div_neg1_0',
      () => m.$('i64.no_fold_div_neg1', [$i64('8000000000000000')]),
      'integer overflow',
      skip: 'see test/spec/_expected_fail.txt',
    );
  });
}
