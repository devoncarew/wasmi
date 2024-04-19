// Generated from spec/test/core/float_literals.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('float_literals', () {
    group('float_literals.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_literals/float_literals.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('f32_nan_0', () => m.$('f32.nan', []), $i32('7FC00000'));
      returns('f32_positive_nan_0', () => m.$('f32.positive_nan', []),
          $i32('7FC00000'));
      returns(
        'f32_negative_nan_0',
        () => m.$('f32.negative_nan', []),
        $i32('FFC00000'),
        skip: 'failed',
      );
      returns(
          'f32_plain_nan_0', () => m.$('f32.plain_nan', []), $i32('7FC00000'));
      returns(
        'f32_informally_known_as_plain_snan_0',
        () => m.$('f32.informally_known_as_plain_snan', []),
        $i32('7FA00000'),
        skip: 'failed',
      );
      returns(
        'f32_all_ones_nan_0',
        () => m.$('f32.all_ones_nan', []),
        $i32('FFFFFFFF'),
        skip: 'failed',
      );
      returns(
        'f32_misc_nan_0',
        () => m.$('f32.misc_nan', []),
        $i32('7F812345'),
        skip: 'failed',
      );
      returns(
        'f32_misc_positive_nan_0',
        () => m.$('f32.misc_positive_nan', []),
        $i32('7FB04050'),
        skip: 'failed',
      );
      returns(
        'f32_misc_negative_nan_0',
        () => m.$('f32.misc_negative_nan', []),
        $i32('FFAABCDE'),
        skip: 'failed',
      );
      returns(
          'f32_infinity_0', () => m.$('f32.infinity', []), $i32('7F800000'));
      returns('f32_positive_infinity_0', () => m.$('f32.positive_infinity', []),
          $i32('7F800000'));
      returns(
        'f32_negative_infinity_0',
        () => m.$('f32.negative_infinity', []),
        $i32('FF800000'),
        skip: 'failed',
      );
      returns('f32_zero_0', () => m.$('f32.zero', []), 0);
      returns('f32_positive_zero_0', () => m.$('f32.positive_zero', []), 0);
      returns(
        'f32_negative_zero_0',
        () => m.$('f32.negative_zero', []),
        $i32('80000000'),
        skip: 'failed',
      );
      returns('f32_misc_0', () => m.$('f32.misc', []), $i32('40C90FDB'));
      returns('f32_min_positive_0', () => m.$('f32.min_positive', []), 1);
      returns(
          'f32_min_normal_0', () => m.$('f32.min_normal', []), $i32('800000'));
      returns('f32_max_subnormal_0', () => m.$('f32.max_subnormal', []),
          $i32('7FFFFF'));
      returns('f32_max_finite_0', () => m.$('f32.max_finite', []),
          $i32('7F7FFFFF'));
      returns('f32_trailing_dot_0', () => m.$('f32.trailing_dot', []),
          $i32('44800000'));
      returns(
          'f32_misc_int_0', () => m.$('f32.misc_int', []), $i32('4791A280'));
      returns(
          'f32_large_int_0', () => m.$('f32.large_int', []), $i32('67800000'));
      returns(
        'f32_min_int32_0',
        () => m.$('f32.min_int32', []),
        $i32('CF000000'),
        skip: 'failed',
      );
      returns(
        'f32_min_int64_0',
        () => m.$('f32.min_int64', []),
        $i32('DF000000'),
        skip: 'failed',
      );
      returns('f32_dec_zero_0', () => m.$('f32_dec.zero', []), 0);
      returns(
          'f32_dec_positive_zero_0', () => m.$('f32_dec.positive_zero', []), 0);
      returns(
        'f32_dec_negative_zero_0',
        () => m.$('f32_dec.negative_zero', []),
        $i32('80000000'),
        skip: 'failed',
      );
      returns(
          'f32_dec_misc_0', () => m.$('f32_dec.misc', []), $i32('40C90FDB'));
      returns(
          'f32_dec_min_positive_0', () => m.$('f32_dec.min_positive', []), 1);
      returns('f32_dec_min_normal_0', () => m.$('f32_dec.min_normal', []),
          $i32('800000'));
      returns('f32_dec_max_subnormal_0', () => m.$('f32_dec.max_subnormal', []),
          $i32('7FFFFF'));
      returns('f32_dec_max_finite_0', () => m.$('f32_dec.max_finite', []),
          $i32('7F7FFFFF'));
      returns('f32_dec_trailing_dot_0', () => m.$('f32_dec.trailing_dot', []),
          $i32('501502F9'));
      returns('f32_dec_root_beer_float_0',
          () => m.$('f32_dec.root_beer_float', []), $i32('3F800001'));
      returns('f32_dec_misc_int_0', () => m.$('f32_dec.misc_int', []),
          $i32('4640E400'));
      returns('f32_dec_large_int_0', () => m.$('f32_dec.large_int', []),
          $i32('60AD78EC'));
      returns(
        'f32_dec_min_int32_0',
        () => m.$('f32_dec.min_int32', []),
        $i32('CF000000'),
        skip: 'failed',
      );
      returns(
        'f32_dec_min_int64_0',
        () => m.$('f32_dec.min_int64', []),
        $i32('DF000000'),
        skip: 'failed',
      );
      returns('f64_nan_0', () => m.$('f64.nan', []), $i64('7FF8000000000000'));
      returns('f64_positive_nan_0', () => m.$('f64.positive_nan', []),
          $i64('7FF8000000000000'));
      returns('f64_negative_nan_0', () => m.$('f64.negative_nan', []),
          $i64('FFF8000000000000'));
      returns('f64_plain_nan_0', () => m.$('f64.plain_nan', []),
          $i64('7FF8000000000000'));
      returns(
          'f64_informally_known_as_plain_snan_0',
          () => m.$('f64.informally_known_as_plain_snan', []),
          $i64('7FF4000000000000'));
      returns('f64_all_ones_nan_0', () => m.$('f64.all_ones_nan', []),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('f64_misc_nan_0', () => m.$('f64.misc_nan', []),
          $i64('7FF0123456789ABC'));
      returns('f64_misc_positive_nan_0', () => m.$('f64.misc_positive_nan', []),
          $i64('7FF3040506070809'));
      returns('f64_misc_negative_nan_0', () => m.$('f64.misc_negative_nan', []),
          $i64('FFF2ABCDEF012345'));
      returns('f64_infinity_0', () => m.$('f64.infinity', []),
          $i64('7FF0000000000000'));
      returns('f64_positive_infinity_0', () => m.$('f64.positive_infinity', []),
          $i64('7FF0000000000000'));
      returns('f64_negative_infinity_0', () => m.$('f64.negative_infinity', []),
          $i64('FFF0000000000000'));
      returns('f64_zero_0', () => m.$('f64.zero', []), 0);
      returns('f64_positive_zero_0', () => m.$('f64.positive_zero', []), 0);
      returns('f64_negative_zero_0', () => m.$('f64.negative_zero', []),
          $i64('8000000000000000'));
      returns(
          'f64_misc_0', () => m.$('f64.misc', []), $i64('401921FB54442D18'));
      returns('f64_min_positive_0', () => m.$('f64.min_positive', []), 1);
      returns('f64_min_normal_0', () => m.$('f64.min_normal', []),
          $i64('10000000000000'));
      returns('f64_max_subnormal_0', () => m.$('f64.max_subnormal', []),
          $i64('FFFFFFFFFFFFF'));
      returns('f64_max_finite_0', () => m.$('f64.max_finite', []),
          $i64('7FEFFFFFFFFFFFFF'));
      returns('f64_trailing_dot_0', () => m.$('f64.trailing_dot', []),
          $i64('4630000000000000'));
      returns('f64_misc_int_0', () => m.$('f64.misc_int', []),
          $i64('40F2345000000000'));
      returns('f64_large_int_0', () => m.$('f64.large_int', []),
          $i64('44F0000000000000'));
      returns('f64_min_int32_0', () => m.$('f64.min_int32', []),
          $i64('C1E0000000000000'));
      returns('f64_min_int64_0', () => m.$('f64.min_int64', []),
          $i64('C3E0000000000000'));
      returns('f64_dec_zero_0', () => m.$('f64_dec.zero', []), 0);
      returns(
          'f64_dec_positive_zero_0', () => m.$('f64_dec.positive_zero', []), 0);
      returns('f64_dec_negative_zero_0', () => m.$('f64_dec.negative_zero', []),
          $i64('8000000000000000'));
      returns('f64_dec_misc_0', () => m.$('f64_dec.misc', []),
          $i64('401921FB54442D18'));
      returns(
          'f64_dec_min_positive_0', () => m.$('f64_dec.min_positive', []), 1);
      returns('f64_dec_min_normal_0', () => m.$('f64_dec.min_normal', []),
          $i64('10000000000000'));
      returns('f64_dec_max_subnormal_0', () => m.$('f64_dec.max_subnormal', []),
          $i64('FFFFFFFFFFFFF'));
      returns('f64_dec_max_finite_0', () => m.$('f64_dec.max_finite', []),
          $i64('7FEFFFFFFFFFFFFF'));
      returns('f64_dec_trailing_dot_0', () => m.$('f64_dec.trailing_dot', []),
          $i64('54B249AD2594C37D'));
      returns('f64_dec_root_beer_float_0',
          () => m.$('f64_dec.root_beer_float', []), $i64('3FF000001FF19E24'));
      returns('f64_dec_misc_int_0', () => m.$('f64_dec.misc_int', []),
          $i64('40C81C8000000000'));
      returns('f64_dec_large_int_0', () => m.$('f64_dec.large_int', []),
          $i64('4415AF1D78B58C40'));
      returns('f64_dec_min_int32_0', () => m.$('f64_dec.min_int32', []),
          $i64('C1E0000000000000'));
      returns('f64_dec_min_int64_0', () => m.$('f64_dec.min_int64', []),
          $i64('C3E0000000000000'));
      returns(
          'f32_dec_sep1_0', () => m.$('f32-dec-sep1', []), $f32('49742400'));
      returns(
          'f32_dec_sep2_0', () => m.$('f32-dec-sep2', []), $f32('447A0000'));
      returns(
          'f32_dec_sep3_0', () => m.$('f32-dec-sep3', []), $f32('447AC910'));
      returns(
          'f32_dec_sep4_0', () => m.$('f32-dec-sep4', []), $f32('58611996'));
      returns(
          'f32_dec_sep5_0', () => m.$('f32-dec-sep5', []), $f32('6E1DAE74'));
      returns(
          'f32_hex_sep1_0', () => m.$('f32-hex-sep1', []), $f32('4D20F00A'));
      returns(
          'f32_hex_sep2_0', () => m.$('f32-hex-sep2', []), $f32('47D50780'));
      returns(
          'f32_hex_sep3_0', () => m.$('f32-hex-sep3', []), $f32('4720FFF1'));
      returns(
          'f32_hex_sep4_0', () => m.$('f32-hex-sep4', []), $f32('49F00000'));
      returns(
          'f32_hex_sep5_0', () => m.$('f32-hex-sep5', []), $f32('55ABC028'));
      returns('f64_dec_sep1_0', () => m.$('f64-dec-sep1', []),
          $f64('412E848000000000'));
      returns('f64_dec_sep2_0', () => m.$('f64-dec-sep2', []),
          $f64('408F400000000000'));
      returns('f64_dec_sep3_0', () => m.$('f64-dec-sep3', []),
          $f64('408F5921FAFC8B00'));
      returns('f64_dec_sep4_0', () => m.$('f64-dec-sep4', []),
          $f64('26D05C735BB7CC45'));
      returns('f64_dec_sep5_0', () => m.$('f64-dec-sep5', []),
          $f64('45C3B5CE725BDE9C'));
      returns('f64_hex_sep1_0', () => m.$('f64-hex-sep1', []),
          $f64('4325E01E00013332'));
      returns('f64_hex_sep2_0', () => m.$('f64-hex-sep2', []),
          $f64('40FAA0F000000000'));
      returns('f64_hex_sep3_0', () => m.$('f64-hex-sep3', []),
          $f64('40E41FFE2834B340'));
      returns('f64_hex_sep4_0', () => m.$('f64-hex-sep4', []),
          $f64('413E000000000000'));
      returns('f64_hex_sep5_0', () => m.$('f64-hex-sep5', []),
          $f64('42B578050F9F7000'));
    });

    group('float_literals.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/float_literals/float_literals.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('4294967249_0', () => m.$('4294967249', []),
          $f64('41EFFFFFFA200000'));
    });

    // assertMalformed('malformed float_literals.2.wat');
    // assertMalformed('malformed float_literals.3.wat');
    // assertMalformed('malformed float_literals.4.wat');
    // assertMalformed('malformed float_literals.5.wat');
    // assertMalformed('malformed float_literals.6.wat');
    // assertMalformed('malformed float_literals.7.wat');
    // assertMalformed('malformed float_literals.8.wat');
    // assertMalformed('malformed float_literals.9.wat');
    // assertMalformed('malformed float_literals.10.wat');
    // assertMalformed('malformed float_literals.11.wat');
    // assertMalformed('malformed float_literals.12.wat');
    // assertMalformed('malformed float_literals.13.wat');
    // assertMalformed('malformed float_literals.14.wat');
    // assertMalformed('malformed float_literals.15.wat');
    // assertMalformed('malformed float_literals.16.wat');
    // assertMalformed('malformed float_literals.17.wat');
    // assertMalformed('malformed float_literals.18.wat');
    // assertMalformed('malformed float_literals.19.wat');
    // assertMalformed('malformed float_literals.20.wat');
    // assertMalformed('malformed float_literals.21.wat');
    // assertMalformed('malformed float_literals.22.wat');
    // assertMalformed('malformed float_literals.23.wat');
    // assertMalformed('malformed float_literals.24.wat');
    // assertMalformed('malformed float_literals.25.wat');
    // assertMalformed('malformed float_literals.26.wat');
    // assertMalformed('malformed float_literals.27.wat');
    // assertMalformed('malformed float_literals.28.wat');
    // assertMalformed('malformed float_literals.29.wat');
    // assertMalformed('malformed float_literals.30.wat');
    // assertMalformed('malformed float_literals.31.wat');
    // assertMalformed('malformed float_literals.32.wat');
    // assertMalformed('malformed float_literals.33.wat');
    // assertMalformed('malformed float_literals.34.wat');
    // assertMalformed('malformed float_literals.35.wat');
    // assertMalformed('malformed float_literals.36.wat');
    // assertMalformed('malformed float_literals.37.wat');
    // assertMalformed('malformed float_literals.38.wat');
    // assertMalformed('malformed float_literals.39.wat');
    // assertMalformed('malformed float_literals.40.wat');
    // assertMalformed('malformed float_literals.41.wat');
    // assertMalformed('malformed float_literals.42.wat');
    // assertMalformed('malformed float_literals.43.wat');
    // assertMalformed('malformed float_literals.44.wat');
    // assertMalformed('malformed float_literals.45.wat');
    // assertMalformed('malformed float_literals.46.wat');
    // assertMalformed('malformed float_literals.47.wat');
    // assertMalformed('malformed float_literals.48.wat');
    // assertMalformed('malformed float_literals.49.wat');
    // assertMalformed('malformed float_literals.50.wat');
    // assertMalformed('malformed float_literals.51.wat');
    // assertMalformed('malformed float_literals.52.wat');
    // assertMalformed('malformed float_literals.53.wat');
    // assertMalformed('malformed float_literals.54.wat');
    // assertMalformed('malformed float_literals.55.wat');
    // assertMalformed('malformed float_literals.56.wat');
    // assertMalformed('malformed float_literals.57.wat');
    // assertMalformed('malformed float_literals.58.wat');
    // assertMalformed('malformed float_literals.59.wat');
    // assertMalformed('malformed float_literals.60.wat');
    // assertMalformed('malformed float_literals.61.wat');
    // assertMalformed('malformed float_literals.62.wat');
    // assertMalformed('malformed float_literals.63.wat');
    // assertMalformed('malformed float_literals.64.wat');
    // assertMalformed('malformed float_literals.65.wat');
    // assertMalformed('malformed float_literals.66.wat');
    // assertMalformed('malformed float_literals.67.wat');
    // assertMalformed('malformed float_literals.68.wat');
    // assertMalformed('malformed float_literals.69.wat');
    // assertMalformed('malformed float_literals.70.wat');
    // assertMalformed('malformed float_literals.71.wat');
    // assertMalformed('malformed float_literals.72.wat');
    // assertMalformed('malformed float_literals.73.wat');
    // assertMalformed('malformed float_literals.74.wat');
    // assertMalformed('malformed float_literals.75.wat');
    // assertMalformed('malformed float_literals.76.wat');
    // assertMalformed('malformed float_literals.77.wat');
    // assertMalformed('malformed float_literals.78.wat');
    // assertMalformed('malformed float_literals.79.wat');
  });
}
