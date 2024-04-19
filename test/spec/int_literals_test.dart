// Generated from spec/test/core/int_literals.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('int_literals', () {
    group('int_literals.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/int_literals/int_literals.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('i32_test_0', () => m.$('i32.test', []), $i32('BADD00D'));
      returns('i32_umax_0', () => m.$('i32.umax', []), $i32('FFFFFFFF'));
      returns('i32_smax_0', () => m.$('i32.smax', []), $i32('7FFFFFFF'));
      returns(
          'i32_neg_smax_0', () => m.$('i32.neg_smax', []), $i32('80000001'));
      returns('i32_smin_0', () => m.$('i32.smin', []), $i32('80000000'));
      returns(
          'i32_alt_smin_0', () => m.$('i32.alt_smin', []), $i32('80000000'));
      returns(
          'i32_inc_smin_0', () => m.$('i32.inc_smin', []), $i32('80000001'));
      returns('i32_neg_zero_0', () => m.$('i32.neg_zero', []), 0);
      returns('i32_not_octal_0', () => m.$('i32.not_octal', []), 0xA);
      returns('i32_unsigned_decimal_0', () => m.$('i32.unsigned_decimal', []),
          $i32('FFFFFFFF'));
      returns('i32_plus_sign_0', () => m.$('i32.plus_sign', []), 0x2A);
      returns('i64_test_0', () => m.$('i64.test', []), $i64('CABBA6E0BA66A6E'));
      returns(
          'i64_umax_0', () => m.$('i64.umax', []), $i64('FFFFFFFFFFFFFFFF'));
      returns(
          'i64_smax_0', () => m.$('i64.smax', []), $i64('7FFFFFFFFFFFFFFF'));
      returns('i64_neg_smax_0', () => m.$('i64.neg_smax', []),
          $i64('8000000000000001'));
      returns(
          'i64_smin_0', () => m.$('i64.smin', []), $i64('8000000000000000'));
      returns('i64_alt_smin_0', () => m.$('i64.alt_smin', []),
          $i64('8000000000000000'));
      returns('i64_inc_smin_0', () => m.$('i64.inc_smin', []),
          $i64('8000000000000001'));
      returns('i64_neg_zero_0', () => m.$('i64.neg_zero', []), 0);
      returns('i64_not_octal_0', () => m.$('i64.not_octal', []), 0xA);
      returns('i64_unsigned_decimal_0', () => m.$('i64.unsigned_decimal', []),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('i64_plus_sign_0', () => m.$('i64.plus_sign', []), 0x2A);
      returns('i32_dec_sep1_0', () => m.$('i32-dec-sep1', []), $i32('F4240'));
      returns('i32_dec_sep2_0', () => m.$('i32-dec-sep2', []), 0x3E8);
      returns('i32_hex_sep1_0', () => m.$('i32-hex-sep1', []), $i32('A0F0099'));
      returns('i32_hex_sep2_0', () => m.$('i32-hex-sep2', []), 0x1AA0F);
      returns('i64_dec_sep1_0', () => m.$('i64-dec-sep1', []), $i64('F4240'));
      returns('i64_dec_sep2_0', () => m.$('i64-dec-sep2', []), 0x3E8);
      returns('i64_hex_sep1_0', () => m.$('i64-hex-sep1', []),
          $i64('AF00F00009999'));
      returns('i64_hex_sep2_0', () => m.$('i64-hex-sep2', []), 0x1AA0F);
    });

    // assertMalformed('malformed int_literals.1.wat');
    // assertMalformed('malformed int_literals.2.wat');
    // assertMalformed('malformed int_literals.3.wat');
    // assertMalformed('malformed int_literals.4.wat');
    // assertMalformed('malformed int_literals.5.wat');
    // assertMalformed('malformed int_literals.6.wat');
    // assertMalformed('malformed int_literals.7.wat');
    // assertMalformed('malformed int_literals.8.wat');
    // assertMalformed('malformed int_literals.9.wat');
    // assertMalformed('malformed int_literals.10.wat');
    // assertMalformed('malformed int_literals.11.wat');
    // assertMalformed('malformed int_literals.12.wat');
    // assertMalformed('malformed int_literals.13.wat');
    // assertMalformed('malformed int_literals.14.wat');
    // assertMalformed('malformed int_literals.15.wat');
    // assertMalformed('malformed int_literals.16.wat');
    // assertMalformed('malformed int_literals.17.wat');
    // assertMalformed('malformed int_literals.18.wat');
    // assertMalformed('malformed int_literals.19.wat');
    // assertMalformed('malformed int_literals.20.wat');
  });
}
