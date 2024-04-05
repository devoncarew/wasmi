// Generated from spec/test/core/address.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  group('address.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/address/address.0.wasm'));
      m = Module(def);
    });

    returns('8u_good1_0', () => m.$('8u_good1', [0]), 0x61);
    returns('8u_good2_0', () => m.$('8u_good2', [0]), 0x61);
    returns('8u_good3_0', () => m.$('8u_good3', [0]), 0x62);
    returns('8u_good4_0', () => m.$('8u_good4', [0]), 0x63);
    returns('8u_good5_0', () => m.$('8u_good5', [0]), 0x7A);
    returns('8s_good1_0', () => m.$('8s_good1', [0]), 0x61);
    returns('8s_good2_0', () => m.$('8s_good2', [0]), 0x61);
    returns('8s_good3_0', () => m.$('8s_good3', [0]), 0x62);
    returns('8s_good4_0', () => m.$('8s_good4', [0]), 0x63);
    returns('8s_good5_0', () => m.$('8s_good5', [0]), 0x7A);
    returns('16u_good1_0', () => m.$('16u_good1', [0]), 0x6261);
    returns('16u_good2_0', () => m.$('16u_good2', [0]), 0x6261);
    returns('16u_good3_0', () => m.$('16u_good3', [0]), 0x6362);
    returns('16u_good4_0', () => m.$('16u_good4', [0]), 0x6463);
    returns('16u_good5_0', () => m.$('16u_good5', [0]), 0x7A);
    returns('16s_good1_0', () => m.$('16s_good1', [0]), 0x6261);
    returns('16s_good2_0', () => m.$('16s_good2', [0]), 0x6261);
    returns('16s_good3_0', () => m.$('16s_good3', [0]), 0x6362);
    returns('16s_good4_0', () => m.$('16s_good4', [0]), 0x6463);
    returns('16s_good5_0', () => m.$('16s_good5', [0]), 0x7A);
    returns('32_good1_0', () => m.$('32_good1', [0]), $i32('64636261'));
    returns('32_good2_0', () => m.$('32_good2', [0]), $i32('64636261'));
    returns('32_good3_0', () => m.$('32_good3', [0]), $i32('65646362'));
    returns('32_good4_0', () => m.$('32_good4', [0]), $i32('66656463'));
    returns('32_good5_0', () => m.$('32_good5', [0]), 0x7A);
    returns('8u_good1_1', () => m.$('8u_good1', [0xFFE3]), 0);
    returns('8u_good2_1', () => m.$('8u_good2', [0xFFE3]), 0);
    returns('8u_good3_1', () => m.$('8u_good3', [0xFFE3]), 0);
    returns('8u_good4_1', () => m.$('8u_good4', [0xFFE3]), 0);
    returns('8u_good5_1', () => m.$('8u_good5', [0xFFE3]), 0);
    returns('8s_good1_1', () => m.$('8s_good1', [0xFFE3]), 0);
    returns('8s_good2_1', () => m.$('8s_good2', [0xFFE3]), 0);
    returns('8s_good3_1', () => m.$('8s_good3', [0xFFE3]), 0);
    returns('8s_good4_1', () => m.$('8s_good4', [0xFFE3]), 0);
    returns('8s_good5_1', () => m.$('8s_good5', [0xFFE3]), 0);
    returns('16u_good1_1', () => m.$('16u_good1', [0xFFE3]), 0);
    returns('16u_good2_1', () => m.$('16u_good2', [0xFFE3]), 0);
    returns('16u_good3_1', () => m.$('16u_good3', [0xFFE3]), 0);
    returns('16u_good4_1', () => m.$('16u_good4', [0xFFE3]), 0);
    returns('16u_good5_1', () => m.$('16u_good5', [0xFFE3]), 0);
    returns('16s_good1_1', () => m.$('16s_good1', [0xFFE3]), 0);
    returns('16s_good2_1', () => m.$('16s_good2', [0xFFE3]), 0);
    returns('16s_good3_1', () => m.$('16s_good3', [0xFFE3]), 0);
    returns('16s_good4_1', () => m.$('16s_good4', [0xFFE3]), 0);
    returns('16s_good5_1', () => m.$('16s_good5', [0xFFE3]), 0);
    returns('32_good1_1', () => m.$('32_good1', [0xFFE3]), 0);
    returns('32_good2_1', () => m.$('32_good2', [0xFFE3]), 0);
    returns('32_good3_1', () => m.$('32_good3', [0xFFE3]), 0);
    returns('32_good4_1', () => m.$('32_good4', [0xFFE3]), 0);
    returns('32_good5_1', () => m.$('32_good5', [0xFFE3]), 0);
    returns('8u_good1_2', () => m.$('8u_good1', [0xFFE4]), 0);
    returns('8u_good2_2', () => m.$('8u_good2', [0xFFE4]), 0);
    returns('8u_good3_2', () => m.$('8u_good3', [0xFFE4]), 0);
    returns('8u_good4_2', () => m.$('8u_good4', [0xFFE4]), 0);
    returns('8u_good5_2', () => m.$('8u_good5', [0xFFE4]), 0);
    returns('8s_good1_2', () => m.$('8s_good1', [0xFFE4]), 0);
    returns('8s_good2_2', () => m.$('8s_good2', [0xFFE4]), 0);
    returns('8s_good3_2', () => m.$('8s_good3', [0xFFE4]), 0);
    returns('8s_good4_2', () => m.$('8s_good4', [0xFFE4]), 0);
    returns('8s_good5_2', () => m.$('8s_good5', [0xFFE4]), 0);
    returns('16u_good1_2', () => m.$('16u_good1', [0xFFE4]), 0);
    returns('16u_good2_2', () => m.$('16u_good2', [0xFFE4]), 0);
    returns('16u_good3_2', () => m.$('16u_good3', [0xFFE4]), 0);
    returns('16u_good4_2', () => m.$('16u_good4', [0xFFE4]), 0);
    returns('16u_good5_2', () => m.$('16u_good5', [0xFFE4]), 0);
    returns('16s_good1_2', () => m.$('16s_good1', [0xFFE4]), 0);
    returns('16s_good2_2', () => m.$('16s_good2', [0xFFE4]), 0);
    returns('16s_good3_2', () => m.$('16s_good3', [0xFFE4]), 0);
    returns('16s_good4_2', () => m.$('16s_good4', [0xFFE4]), 0);
    returns('16s_good5_2', () => m.$('16s_good5', [0xFFE4]), 0);
    returns('32_good1_2', () => m.$('32_good1', [0xFFE4]), 0);
    returns('32_good2_2', () => m.$('32_good2', [0xFFE4]), 0);
    returns('32_good3_2', () => m.$('32_good3', [0xFFE4]), 0);
    returns('32_good4_2', () => m.$('32_good4', [0xFFE4]), 0);
    traps('32_good5_2', () => m.$('32_good5', [0xFFE4]),
        'out of bounds memory access');
    traps('8u_good3_3', () => m.$('8u_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('8s_good3_3', () => m.$('8s_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('16u_good3_3', () => m.$('16u_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('16s_good3_3', () => m.$('16s_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('32_good3_3', () => m.$('32_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('32_good3_4', () => m.$('32_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('8u_bad_0', () => m.$('8u_bad', [0]), 'out of bounds memory access');
    traps('8s_bad_0', () => m.$('8s_bad', [0]), 'out of bounds memory access');
    traps(
        '16u_bad_0', () => m.$('16u_bad', [0]), 'out of bounds memory access');
    traps(
        '16s_bad_0', () => m.$('16s_bad', [0]), 'out of bounds memory access');
    traps('32_bad_0', () => m.$('32_bad', [0]), 'out of bounds memory access');
    traps('8u_bad_1', () => m.$('8u_bad', [1]), 'out of bounds memory access');
    traps('8s_bad_1', () => m.$('8s_bad', [1]), 'out of bounds memory access');
    traps(
        '16u_bad_1', () => m.$('16u_bad', [1]), 'out of bounds memory access');
    traps(
        '16s_bad_1', () => m.$('16s_bad', [1]), 'out of bounds memory access');
    traps('32_bad_1', () => m.$('32_bad', [1]), 'out of bounds memory access');
  });

  group('address.2.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/address/address.2.wasm'));
      m = Module(def);
    });

    returns('8u_good1_0', () => m.$('8u_good1', [0]), 0x61);
    returns('8u_good2_0', () => m.$('8u_good2', [0]), 0x61);
    returns('8u_good3_0', () => m.$('8u_good3', [0]), 0x62);
    returns('8u_good4_0', () => m.$('8u_good4', [0]), 0x63);
    returns('8u_good5_0', () => m.$('8u_good5', [0]), 0x7A);
    returns('8s_good1_0', () => m.$('8s_good1', [0]), 0x61);
    returns('8s_good2_0', () => m.$('8s_good2', [0]), 0x61);
    returns('8s_good3_0', () => m.$('8s_good3', [0]), 0x62);
    returns('8s_good4_0', () => m.$('8s_good4', [0]), 0x63);
    returns('8s_good5_0', () => m.$('8s_good5', [0]), 0x7A);
    returns('16u_good1_0', () => m.$('16u_good1', [0]), 0x6261);
    returns('16u_good2_0', () => m.$('16u_good2', [0]), 0x6261);
    returns('16u_good3_0', () => m.$('16u_good3', [0]), 0x6362);
    returns('16u_good4_0', () => m.$('16u_good4', [0]), 0x6463);
    returns('16u_good5_0', () => m.$('16u_good5', [0]), 0x7A);
    returns('16s_good1_0', () => m.$('16s_good1', [0]), 0x6261);
    returns('16s_good2_0', () => m.$('16s_good2', [0]), 0x6261);
    returns('16s_good3_0', () => m.$('16s_good3', [0]), 0x6362);
    returns('16s_good4_0', () => m.$('16s_good4', [0]), 0x6463);
    returns('16s_good5_0', () => m.$('16s_good5', [0]), 0x7A);
    returns('32u_good1_0', () => m.$('32u_good1', [0]), $i64('64636261'));
    returns('32u_good2_0', () => m.$('32u_good2', [0]), $i64('64636261'));
    returns('32u_good3_0', () => m.$('32u_good3', [0]), $i64('65646362'));
    returns('32u_good4_0', () => m.$('32u_good4', [0]), $i64('66656463'));
    returns('32u_good5_0', () => m.$('32u_good5', [0]), 0x7A);
    returns('32s_good1_0', () => m.$('32s_good1', [0]), $i64('64636261'));
    returns('32s_good2_0', () => m.$('32s_good2', [0]), $i64('64636261'));
    returns('32s_good3_0', () => m.$('32s_good3', [0]), $i64('65646362'));
    returns('32s_good4_0', () => m.$('32s_good4', [0]), $i64('66656463'));
    returns('32s_good5_0', () => m.$('32s_good5', [0]), 0x7A);
    returns('64_good1_0', () => m.$('64_good1', [0]), $i64('6867666564636261'));
    returns('64_good2_0', () => m.$('64_good2', [0]), $i64('6867666564636261'));
    returns('64_good3_0', () => m.$('64_good3', [0]), $i64('6968676665646362'));
    returns('64_good4_0', () => m.$('64_good4', [0]), $i64('6A69686766656463'));
    returns('64_good5_0', () => m.$('64_good5', [0]), 0x7A);
    returns('8u_good1_1', () => m.$('8u_good1', [0xFFDF]), 0);
    returns('8u_good2_1', () => m.$('8u_good2', [0xFFDF]), 0);
    returns('8u_good3_1', () => m.$('8u_good3', [0xFFDF]), 0);
    returns('8u_good4_1', () => m.$('8u_good4', [0xFFDF]), 0);
    returns('8u_good5_1', () => m.$('8u_good5', [0xFFDF]), 0);
    returns('8s_good1_1', () => m.$('8s_good1', [0xFFDF]), 0);
    returns('8s_good2_1', () => m.$('8s_good2', [0xFFDF]), 0);
    returns('8s_good3_1', () => m.$('8s_good3', [0xFFDF]), 0);
    returns('8s_good4_1', () => m.$('8s_good4', [0xFFDF]), 0);
    returns('8s_good5_1', () => m.$('8s_good5', [0xFFDF]), 0);
    returns('16u_good1_1', () => m.$('16u_good1', [0xFFDF]), 0);
    returns('16u_good2_1', () => m.$('16u_good2', [0xFFDF]), 0);
    returns('16u_good3_1', () => m.$('16u_good3', [0xFFDF]), 0);
    returns('16u_good4_1', () => m.$('16u_good4', [0xFFDF]), 0);
    returns('16u_good5_1', () => m.$('16u_good5', [0xFFDF]), 0);
    returns('16s_good1_1', () => m.$('16s_good1', [0xFFDF]), 0);
    returns('16s_good2_1', () => m.$('16s_good2', [0xFFDF]), 0);
    returns('16s_good3_1', () => m.$('16s_good3', [0xFFDF]), 0);
    returns('16s_good4_1', () => m.$('16s_good4', [0xFFDF]), 0);
    returns('16s_good5_1', () => m.$('16s_good5', [0xFFDF]), 0);
    returns('32u_good1_1', () => m.$('32u_good1', [0xFFDF]), 0);
    returns('32u_good2_1', () => m.$('32u_good2', [0xFFDF]), 0);
    returns('32u_good3_1', () => m.$('32u_good3', [0xFFDF]), 0);
    returns('32u_good4_1', () => m.$('32u_good4', [0xFFDF]), 0);
    returns('32u_good5_1', () => m.$('32u_good5', [0xFFDF]), 0);
    returns('32s_good1_1', () => m.$('32s_good1', [0xFFDF]), 0);
    returns('32s_good2_1', () => m.$('32s_good2', [0xFFDF]), 0);
    returns('32s_good3_1', () => m.$('32s_good3', [0xFFDF]), 0);
    returns('32s_good4_1', () => m.$('32s_good4', [0xFFDF]), 0);
    returns('32s_good5_1', () => m.$('32s_good5', [0xFFDF]), 0);
    returns('64_good1_1', () => m.$('64_good1', [0xFFDF]), 0);
    returns('64_good2_1', () => m.$('64_good2', [0xFFDF]), 0);
    returns('64_good3_1', () => m.$('64_good3', [0xFFDF]), 0);
    returns('64_good4_1', () => m.$('64_good4', [0xFFDF]), 0);
    returns('64_good5_1', () => m.$('64_good5', [0xFFDF]), 0);
    returns('8u_good1_2', () => m.$('8u_good1', [0xFFE0]), 0);
    returns('8u_good2_2', () => m.$('8u_good2', [0xFFE0]), 0);
    returns('8u_good3_2', () => m.$('8u_good3', [0xFFE0]), 0);
    returns('8u_good4_2', () => m.$('8u_good4', [0xFFE0]), 0);
    returns('8u_good5_2', () => m.$('8u_good5', [0xFFE0]), 0);
    returns('8s_good1_2', () => m.$('8s_good1', [0xFFE0]), 0);
    returns('8s_good2_2', () => m.$('8s_good2', [0xFFE0]), 0);
    returns('8s_good3_2', () => m.$('8s_good3', [0xFFE0]), 0);
    returns('8s_good4_2', () => m.$('8s_good4', [0xFFE0]), 0);
    returns('8s_good5_2', () => m.$('8s_good5', [0xFFE0]), 0);
    returns('16u_good1_2', () => m.$('16u_good1', [0xFFE0]), 0);
    returns('16u_good2_2', () => m.$('16u_good2', [0xFFE0]), 0);
    returns('16u_good3_2', () => m.$('16u_good3', [0xFFE0]), 0);
    returns('16u_good4_2', () => m.$('16u_good4', [0xFFE0]), 0);
    returns('16u_good5_2', () => m.$('16u_good5', [0xFFE0]), 0);
    returns('16s_good1_2', () => m.$('16s_good1', [0xFFE0]), 0);
    returns('16s_good2_2', () => m.$('16s_good2', [0xFFE0]), 0);
    returns('16s_good3_2', () => m.$('16s_good3', [0xFFE0]), 0);
    returns('16s_good4_2', () => m.$('16s_good4', [0xFFE0]), 0);
    returns('16s_good5_2', () => m.$('16s_good5', [0xFFE0]), 0);
    returns('32u_good1_2', () => m.$('32u_good1', [0xFFE0]), 0);
    returns('32u_good2_2', () => m.$('32u_good2', [0xFFE0]), 0);
    returns('32u_good3_2', () => m.$('32u_good3', [0xFFE0]), 0);
    returns('32u_good4_2', () => m.$('32u_good4', [0xFFE0]), 0);
    returns('32u_good5_2', () => m.$('32u_good5', [0xFFE0]), 0);
    returns('32s_good1_2', () => m.$('32s_good1', [0xFFE0]), 0);
    returns('32s_good2_2', () => m.$('32s_good2', [0xFFE0]), 0);
    returns('32s_good3_2', () => m.$('32s_good3', [0xFFE0]), 0);
    returns('32s_good4_2', () => m.$('32s_good4', [0xFFE0]), 0);
    returns('32s_good5_2', () => m.$('32s_good5', [0xFFE0]), 0);
    returns('64_good1_2', () => m.$('64_good1', [0xFFE0]), 0);
    returns('64_good2_2', () => m.$('64_good2', [0xFFE0]), 0);
    returns('64_good3_2', () => m.$('64_good3', [0xFFE0]), 0);
    returns('64_good4_2', () => m.$('64_good4', [0xFFE0]), 0);
    traps('64_good5_2', () => m.$('64_good5', [0xFFE0]),
        'out of bounds memory access');
    traps('8u_good3_3', () => m.$('8u_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('8s_good3_3', () => m.$('8s_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('16u_good3_3', () => m.$('16u_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('16s_good3_3', () => m.$('16s_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('32u_good3_3', () => m.$('32u_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('32s_good3_3', () => m.$('32s_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('64_good3_3', () => m.$('64_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('8u_bad_0', () => m.$('8u_bad', [0]), 'out of bounds memory access');
    traps('8s_bad_0', () => m.$('8s_bad', [0]), 'out of bounds memory access');
    traps(
        '16u_bad_0', () => m.$('16u_bad', [0]), 'out of bounds memory access');
    traps(
        '16s_bad_0', () => m.$('16s_bad', [0]), 'out of bounds memory access');
    traps(
        '32u_bad_0', () => m.$('32u_bad', [0]), 'out of bounds memory access');
    traps(
        '32s_bad_0', () => m.$('32s_bad', [0]), 'out of bounds memory access');
    traps('64_bad_0', () => m.$('64_bad', [0]), 'out of bounds memory access');
    traps('8u_bad_1', () => m.$('8u_bad', [1]), 'out of bounds memory access');
    traps('8s_bad_1', () => m.$('8s_bad', [1]), 'out of bounds memory access');
    traps(
        '16u_bad_1', () => m.$('16u_bad', [1]), 'out of bounds memory access');
    traps(
        '16s_bad_1', () => m.$('16s_bad', [1]), 'out of bounds memory access');
    traps(
        '32u_bad_1', () => m.$('32u_bad', [0]), 'out of bounds memory access');
    traps(
        '32s_bad_1', () => m.$('32s_bad', [0]), 'out of bounds memory access');
    traps('64_bad_1', () => m.$('64_bad', [1]), 'out of bounds memory access');
  });

  group('address.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/address/address.3.wasm'));
      m = Module(def);
    });

    returns('32_good1_0', () => m.$('32_good1', [0]), $f32('0'));
    returns('32_good2_0', () => m.$('32_good2', [0]), $f32('0'));
    returns('32_good3_0', () => m.$('32_good3', [0]), $f32('0'));
    returns('32_good4_0', () => m.$('32_good4', [0]), $f32('0'));
    returns('32_good5_0', () => m.$('32_good5', [0]), $f32('7FD00001'));
    returns('32_good1_1', () => m.$('32_good1', [0xFFF4]), $f32('0'));
    returns('32_good2_1', () => m.$('32_good2', [0xFFF4]), $f32('0'));
    returns('32_good3_1', () => m.$('32_good3', [0xFFF4]), $f32('0'));
    returns('32_good4_1', () => m.$('32_good4', [0xFFF4]), $f32('0'));
    returns('32_good5_1', () => m.$('32_good5', [0xFFF4]), $f32('0'));
    returns('32_good1_2', () => m.$('32_good1', [0xFFF5]), $f32('0'));
    returns('32_good2_2', () => m.$('32_good2', [0xFFF5]), $f32('0'));
    returns('32_good3_2', () => m.$('32_good3', [0xFFF5]), $f32('0'));
    returns('32_good4_2', () => m.$('32_good4', [0xFFF5]), $f32('0'));
    traps('32_good5_2', () => m.$('32_good5', [0xFFF5]),
        'out of bounds memory access');
    traps('32_good3_3', () => m.$('32_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('32_good3_4', () => m.$('32_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('32_bad_0', () => m.$('32_bad', [0]), 'out of bounds memory access');
    traps('32_bad_1', () => m.$('32_bad', [1]), 'out of bounds memory access');
  });

  group('address.4.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/address/address.4.wasm'));
      m = Module(def);
    });

    returns('64_good1_0', () => m.$('64_good1', [0]), $f64('0'));
    returns('64_good2_0', () => m.$('64_good2', [0]), $f64('0'));
    returns('64_good3_0', () => m.$('64_good3', [0]), $f64('0'));
    returns('64_good4_0', () => m.$('64_good4', [0]), $f64('0'));
    returns('64_good5_0', () => m.$('64_good5', [0]), $f64('7FFC000000000001'));
    returns('64_good1_1', () => m.$('64_good1', [0xFFE6]), $f64('0'));
    returns('64_good2_1', () => m.$('64_good2', [0xFFE6]), $f64('0'));
    returns('64_good3_1', () => m.$('64_good3', [0xFFE6]), $f64('0'));
    returns('64_good4_1', () => m.$('64_good4', [0xFFE6]), $f64('0'));
    returns('64_good5_1', () => m.$('64_good5', [0xFFE6]), $f64('0'));
    returns('64_good1_2', () => m.$('64_good1', [0xFFE7]), $f64('0'));
    returns('64_good2_2', () => m.$('64_good2', [0xFFE7]), $f64('0'));
    returns('64_good3_2', () => m.$('64_good3', [0xFFE7]), $f64('0'));
    returns('64_good4_2', () => m.$('64_good4', [0xFFE7]), $f64('0'));
    traps('64_good5_2', () => m.$('64_good5', [0xFFE7]),
        'out of bounds memory access');
    traps('64_good3_3', () => m.$('64_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('64_good3_4', () => m.$('64_good3', [$i32('FFFFFFFF')]),
        'out of bounds memory access');
    traps('64_bad_0', () => m.$('64_bad', [0]), 'out of bounds memory access');
    traps('64_bad_1', () => m.$('64_bad', [1]), 'out of bounds memory access');
  });
}
