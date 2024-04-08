// Generated from spec/test/core/i32.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('i32.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/i32/i32.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('add_0', () => m.$('add', [1, 1]), 2);
    returns('add_1', () => m.$('add', [1, 0]), 1);
    returns('add_2', () => m.$('add', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]),
        $i32('FFFFFFFE'));
    returns('add_3', () => m.$('add', [$i32('FFFFFFFF'), 1]), 0);
    returns('add_4', () => m.$('add', [$i32('7FFFFFFF'), 1]), $i32('80000000'));
    returns('add_5', () => m.$('add', [$i32('80000000'), $i32('FFFFFFFF')]),
        $i32('7FFFFFFF'));
    returns('add_6', () => m.$('add', [$i32('80000000'), $i32('80000000')]), 0);
    returns('add_7', () => m.$('add', [$i32('3FFFFFFF'), 1]), $i32('40000000'));
    returns('sub_0', () => m.$('sub', [1, 1]), 0);
    returns('sub_1', () => m.$('sub', [1, 0]), 1);
    returns('sub_2', () => m.$('sub', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('sub_3', () => m.$('sub', [$i32('7FFFFFFF'), $i32('FFFFFFFF')]),
        $i32('80000000'));
    returns('sub_4', () => m.$('sub', [$i32('80000000'), 1]), $i32('7FFFFFFF'));
    returns('sub_5', () => m.$('sub', [$i32('80000000'), $i32('80000000')]), 0);
    returns('sub_6', () => m.$('sub', [$i32('3FFFFFFF'), $i32('FFFFFFFF')]),
        $i32('40000000'));
    returns('mul_0', () => m.$('mul', [1, 1]), 1);
    returns('mul_1', () => m.$('mul', [1, 0]), 0);
    returns('mul_2', () => m.$('mul', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 1);
    returns('mul_3', () => m.$('mul', [$i32('10000000'), 0x1000]), 0);
    returns('mul_4', () => m.$('mul', [$i32('80000000'), 0]), 0);
    returns('mul_5', () => m.$('mul', [$i32('80000000'), $i32('FFFFFFFF')]),
        $i32('80000000'));
    returns('mul_6', () => m.$('mul', [$i32('7FFFFFFF'), $i32('FFFFFFFF')]),
        $i32('80000001'));
    returns('mul_7', () => m.$('mul', [$i32('1234567'), $i32('76543210')]),
        $i32('358E7470'));
    returns('mul_8', () => m.$('mul', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 1);
    traps('div_s_0', () => m.$('div_s', [1, 0]), 'integer divide by zero');
    traps('div_s_1', () => m.$('div_s', [0, 0]), 'integer divide by zero');
    traps(
      'div_s_2',
      () => m.$('div_s', [$i32('80000000'), $i32('FFFFFFFF')]),
      'integer overflow',
      skip: 'see test/spec/_expected_fail.txt',
    );
    traps('div_s_3', () => m.$('div_s', [$i32('80000000'), 0]),
        'integer divide by zero');
    returns('div_s_4', () => m.$('div_s', [1, 1]), 1);
    returns('div_s_5', () => m.$('div_s', [0, 1]), 0);
    returns('div_s_6', () => m.$('div_s', [0, $i32('FFFFFFFF')]), 0);
    returns(
        'div_s_7', () => m.$('div_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 1);
    returns(
        'div_s_8', () => m.$('div_s', [$i32('80000000'), 2]), $i32('C0000000'));
    returns('div_s_9', () => m.$('div_s', [$i32('80000001'), 0x3E8]),
        $i32('FFDF3B65'));
    returns('div_s_10', () => m.$('div_s', [5, 2]), 2);
    returns('div_s_11', () => m.$('div_s', [$i32('FFFFFFFB'), 2]),
        $i32('FFFFFFFE'));
    returns('div_s_12', () => m.$('div_s', [5, $i32('FFFFFFFE')]),
        $i32('FFFFFFFE'));
    returns('div_s_13',
        () => m.$('div_s', [$i32('FFFFFFFB'), $i32('FFFFFFFE')]), 2);
    returns('div_s_14', () => m.$('div_s', [7, 3]), 2);
    returns('div_s_15', () => m.$('div_s', [$i32('FFFFFFF9'), 3]),
        $i32('FFFFFFFE'));
    returns('div_s_16', () => m.$('div_s', [7, $i32('FFFFFFFD')]),
        $i32('FFFFFFFE'));
    returns('div_s_17',
        () => m.$('div_s', [$i32('FFFFFFF9'), $i32('FFFFFFFD')]), 2);
    returns('div_s_18', () => m.$('div_s', [0xB, 5]), 2);
    returns('div_s_19', () => m.$('div_s', [0x11, 7]), 2);
    traps('div_u_0', () => m.$('div_u', [1, 0]), 'integer divide by zero');
    traps('div_u_1', () => m.$('div_u', [0, 0]), 'integer divide by zero');
    returns('div_u_2', () => m.$('div_u', [1, 1]), 1);
    returns('div_u_3', () => m.$('div_u', [0, 1]), 0);
    returns(
        'div_u_4', () => m.$('div_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 1);
    returns(
        'div_u_5', () => m.$('div_u', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns(
        'div_u_6', () => m.$('div_u', [$i32('80000000'), 2]), $i32('40000000'));
    returns('div_u_7', () => m.$('div_u', [$i32('8FF00FF0'), 0x10001]), 0x8FEF);
    returns('div_u_8', () => m.$('div_u', [$i32('80000001'), 0x3E8]),
        $i32('20C49B'));
    returns('div_u_9', () => m.$('div_u', [5, 2]), 2);
    returns('div_u_10', () => m.$('div_u', [$i32('FFFFFFFB'), 2]),
        $i32('7FFFFFFD'));
    returns('div_u_11', () => m.$('div_u', [5, $i32('FFFFFFFE')]), 0);
    returns('div_u_12',
        () => m.$('div_u', [$i32('FFFFFFFB'), $i32('FFFFFFFE')]), 0);
    returns('div_u_13', () => m.$('div_u', [7, 3]), 2);
    returns('div_u_14', () => m.$('div_u', [0xB, 5]), 2);
    returns('div_u_15', () => m.$('div_u', [0x11, 7]), 2);
    traps('rem_s_0', () => m.$('rem_s', [1, 0]), 'integer divide by zero');
    traps('rem_s_1', () => m.$('rem_s', [0, 0]), 'integer divide by zero');
    returns(
        'rem_s_2', () => m.$('rem_s', [$i32('7FFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('rem_s_3', () => m.$('rem_s', [1, 1]), 0);
    returns('rem_s_4', () => m.$('rem_s', [0, 1]), 0);
    returns('rem_s_5', () => m.$('rem_s', [0, $i32('FFFFFFFF')]), 0);
    returns(
        'rem_s_6', () => m.$('rem_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns(
        'rem_s_7', () => m.$('rem_s', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns('rem_s_8', () => m.$('rem_s', [$i32('80000000'), 2]), 0);
    returns('rem_s_9', () => m.$('rem_s', [$i32('80000001'), 0x3E8]),
        $i32('FFFFFD79'));
    returns('rem_s_10', () => m.$('rem_s', [5, 2]), 1);
    returns('rem_s_11', () => m.$('rem_s', [$i32('FFFFFFFB'), 2]),
        $i32('FFFFFFFF'));
    returns('rem_s_12', () => m.$('rem_s', [5, $i32('FFFFFFFE')]), 1);
    returns(
        'rem_s_13',
        () => m.$('rem_s', [$i32('FFFFFFFB'), $i32('FFFFFFFE')]),
        $i32('FFFFFFFF'));
    returns('rem_s_14', () => m.$('rem_s', [7, 3]), 1);
    returns('rem_s_15', () => m.$('rem_s', [$i32('FFFFFFF9'), 3]),
        $i32('FFFFFFFF'));
    returns('rem_s_16', () => m.$('rem_s', [7, $i32('FFFFFFFD')]), 1);
    returns(
        'rem_s_17',
        () => m.$('rem_s', [$i32('FFFFFFF9'), $i32('FFFFFFFD')]),
        $i32('FFFFFFFF'));
    returns('rem_s_18', () => m.$('rem_s', [0xB, 5]), 1);
    returns('rem_s_19', () => m.$('rem_s', [0x11, 7]), 3);
    traps('rem_u_0', () => m.$('rem_u', [1, 0]), 'integer divide by zero');
    traps('rem_u_1', () => m.$('rem_u', [0, 0]), 'integer divide by zero');
    returns('rem_u_2', () => m.$('rem_u', [1, 1]), 0);
    returns('rem_u_3', () => m.$('rem_u', [0, 1]), 0);
    returns(
        'rem_u_4', () => m.$('rem_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('rem_u_5', () => m.$('rem_u', [$i32('80000000'), $i32('FFFFFFFF')]),
        $i32('80000000'));
    returns('rem_u_6', () => m.$('rem_u', [$i32('80000000'), 2]), 0);
    returns('rem_u_7', () => m.$('rem_u', [$i32('8FF00FF0'), 0x10001]), 0x8001);
    returns('rem_u_8', () => m.$('rem_u', [$i32('80000001'), 0x3E8]), 0x289);
    returns('rem_u_9', () => m.$('rem_u', [5, 2]), 1);
    returns('rem_u_10', () => m.$('rem_u', [$i32('FFFFFFFB'), 2]), 1);
    returns('rem_u_11', () => m.$('rem_u', [5, $i32('FFFFFFFE')]), 5);
    returns(
        'rem_u_12',
        () => m.$('rem_u', [$i32('FFFFFFFB'), $i32('FFFFFFFE')]),
        $i32('FFFFFFFB'));
    returns('rem_u_13', () => m.$('rem_u', [7, 3]), 1);
    returns('rem_u_14', () => m.$('rem_u', [0xB, 5]), 1);
    returns('rem_u_15', () => m.$('rem_u', [0x11, 7]), 3);
    returns('and_0', () => m.$('and', [1, 0]), 0);
    returns('and_1', () => m.$('and', [0, 1]), 0);
    returns('and_2', () => m.$('and', [1, 1]), 1);
    returns('and_3', () => m.$('and', [0, 0]), 0);
    returns('and_4', () => m.$('and', [$i32('7FFFFFFF'), $i32('80000000')]), 0);
    returns('and_5', () => m.$('and', [$i32('7FFFFFFF'), $i32('FFFFFFFF')]),
        $i32('7FFFFFFF'));
    returns('and_6', () => m.$('and', [$i32('F0F0FFFF'), $i32('FFFFF0F0')]),
        $i32('F0F0F0F0'));
    returns('and_7', () => m.$('and', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]),
        $i32('FFFFFFFF'));
    returns('or_0', () => m.$('or', [1, 0]), 1);
    returns('or_1', () => m.$('or', [0, 1]), 1);
    returns('or_2', () => m.$('or', [1, 1]), 1);
    returns('or_3', () => m.$('or', [0, 0]), 0);
    returns('or_4', () => m.$('or', [$i32('7FFFFFFF'), $i32('80000000')]),
        $i32('FFFFFFFF'));
    returns('or_5', () => m.$('or', [$i32('80000000'), 0]), $i32('80000000'));
    returns('or_6', () => m.$('or', [$i32('F0F0FFFF'), $i32('FFFFF0F0')]),
        $i32('FFFFFFFF'));
    returns('or_7', () => m.$('or', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]),
        $i32('FFFFFFFF'));
    returns('xor_0', () => m.$('xor', [1, 0]), 1);
    returns('xor_1', () => m.$('xor', [0, 1]), 1);
    returns('xor_2', () => m.$('xor', [1, 1]), 0);
    returns('xor_3', () => m.$('xor', [0, 0]), 0);
    returns('xor_4', () => m.$('xor', [$i32('7FFFFFFF'), $i32('80000000')]),
        $i32('FFFFFFFF'));
    returns('xor_5', () => m.$('xor', [$i32('80000000'), 0]), $i32('80000000'));
    returns('xor_6', () => m.$('xor', [$i32('FFFFFFFF'), $i32('80000000')]),
        $i32('7FFFFFFF'));
    returns('xor_7', () => m.$('xor', [$i32('FFFFFFFF'), $i32('7FFFFFFF')]),
        $i32('80000000'));
    returns('xor_8', () => m.$('xor', [$i32('F0F0FFFF'), $i32('FFFFF0F0')]),
        $i32('F0F0F0F'));
    returns('xor_9', () => m.$('xor', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('shl_0', () => m.$('shl', [1, 1]), 2);
    returns('shl_1', () => m.$('shl', [1, 0]), 1);
    returns('shl_2', () => m.$('shl', [$i32('7FFFFFFF'), 1]), $i32('FFFFFFFE'));
    returns('shl_3', () => m.$('shl', [$i32('FFFFFFFF'), 1]), $i32('FFFFFFFE'));
    returns('shl_4', () => m.$('shl', [$i32('80000000'), 1]), 0);
    returns('shl_5', () => m.$('shl', [$i32('40000000'), 1]), $i32('80000000'));
    returns('shl_6', () => m.$('shl', [1, 0x1F]), $i32('80000000'));
    returns('shl_7', () => m.$('shl', [1, 0x20]), 1);
    returns('shl_8', () => m.$('shl', [1, 0x21]), 2);
    returns('shl_9', () => m.$('shl', [1, $i32('FFFFFFFF')]), $i32('80000000'));
    returns(
        'shl_10', () => m.$('shl', [1, $i32('7FFFFFFF')]), $i32('80000000'));
    returns('shr_s_0', () => m.$('shr_s', [1, 1]), 0);
    returns('shr_s_1', () => m.$('shr_s', [1, 0]), 1);
    returns(
        'shr_s_2', () => m.$('shr_s', [$i32('FFFFFFFF'), 1]), $i32('FFFFFFFF'));
    returns(
        'shr_s_3', () => m.$('shr_s', [$i32('7FFFFFFF'), 1]), $i32('3FFFFFFF'));
    returns(
        'shr_s_4', () => m.$('shr_s', [$i32('80000000'), 1]), $i32('C0000000'));
    returns(
        'shr_s_5', () => m.$('shr_s', [$i32('40000000'), 1]), $i32('20000000'));
    returns('shr_s_6', () => m.$('shr_s', [1, 0x20]), 1);
    returns('shr_s_7', () => m.$('shr_s', [1, 0x21]), 0);
    returns('shr_s_8', () => m.$('shr_s', [1, $i32('FFFFFFFF')]), 0);
    returns('shr_s_9', () => m.$('shr_s', [1, $i32('7FFFFFFF')]), 0);
    returns('shr_s_10', () => m.$('shr_s', [1, $i32('80000000')]), 1);
    returns('shr_s_11', () => m.$('shr_s', [$i32('80000000'), 0x1F]),
        $i32('FFFFFFFF'));
    returns('shr_s_12', () => m.$('shr_s', [$i32('FFFFFFFF'), 0x20]),
        $i32('FFFFFFFF'));
    returns('shr_s_13', () => m.$('shr_s', [$i32('FFFFFFFF'), 0x21]),
        $i32('FFFFFFFF'));
    returns(
        'shr_s_14',
        () => m.$('shr_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]),
        $i32('FFFFFFFF'));
    returns(
        'shr_s_15',
        () => m.$('shr_s', [$i32('FFFFFFFF'), $i32('7FFFFFFF')]),
        $i32('FFFFFFFF'));
    returns(
        'shr_s_16',
        () => m.$('shr_s', [$i32('FFFFFFFF'), $i32('80000000')]),
        $i32('FFFFFFFF'));
    returns('shr_u_0', () => m.$('shr_u', [1, 1]), 0);
    returns('shr_u_1', () => m.$('shr_u', [1, 0]), 1);
    returns(
        'shr_u_2', () => m.$('shr_u', [$i32('FFFFFFFF'), 1]), $i32('7FFFFFFF'));
    returns(
        'shr_u_3', () => m.$('shr_u', [$i32('7FFFFFFF'), 1]), $i32('3FFFFFFF'));
    returns(
        'shr_u_4', () => m.$('shr_u', [$i32('80000000'), 1]), $i32('40000000'));
    returns(
        'shr_u_5', () => m.$('shr_u', [$i32('40000000'), 1]), $i32('20000000'));
    returns('shr_u_6', () => m.$('shr_u', [1, 0x20]), 1);
    returns('shr_u_7', () => m.$('shr_u', [1, 0x21]), 0);
    returns('shr_u_8', () => m.$('shr_u', [1, $i32('FFFFFFFF')]), 0);
    returns('shr_u_9', () => m.$('shr_u', [1, $i32('7FFFFFFF')]), 0);
    returns('shr_u_10', () => m.$('shr_u', [1, $i32('80000000')]), 1);
    returns('shr_u_11', () => m.$('shr_u', [$i32('80000000'), 0x1F]), 1);
    returns('shr_u_12', () => m.$('shr_u', [$i32('FFFFFFFF'), 0x20]),
        $i32('FFFFFFFF'));
    returns('shr_u_13', () => m.$('shr_u', [$i32('FFFFFFFF'), 0x21]),
        $i32('7FFFFFFF'));
    returns('shr_u_14',
        () => m.$('shr_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 1);
    returns('shr_u_15',
        () => m.$('shr_u', [$i32('FFFFFFFF'), $i32('7FFFFFFF')]), 1);
    returns(
        'shr_u_16',
        () => m.$('shr_u', [$i32('FFFFFFFF'), $i32('80000000')]),
        $i32('FFFFFFFF'));
    returns('rotl_0', () => m.$('rotl', [1, 1]), 2);
    returns('rotl_1', () => m.$('rotl', [1, 0]), 1);
    returns(
        'rotl_2', () => m.$('rotl', [$i32('FFFFFFFF'), 1]), $i32('FFFFFFFF'));
    returns('rotl_3', () => m.$('rotl', [1, 0x20]), 1);
    returns(
        'rotl_4', () => m.$('rotl', [$i32('ABCD9876'), 1]), $i32('579B30ED'));
    returns(
        'rotl_5', () => m.$('rotl', [$i32('FE00DC00'), 4]), $i32('E00DC00F'));
    returns(
        'rotl_6', () => m.$('rotl', [$i32('B0C1D2E3'), 5]), $i32('183A5C76'));
    returns('rotl_7', () => m.$('rotl', [0x8000, 0x25]), $i32('100000'));
    returns('rotl_8', () => m.$('rotl', [$i32('B0C1D2E3'), 0xFF05]),
        $i32('183A5C76'));
    returns('rotl_9', () => m.$('rotl', [$i32('769ABCDF'), $i32('FFFFFFED')]),
        $i32('579BEED3'));
    returns('rotl_10', () => m.$('rotl', [$i32('769ABCDF'), $i32('8000000D')]),
        $i32('579BEED3'));
    returns('rotl_11', () => m.$('rotl', [1, 0x1F]), $i32('80000000'));
    returns('rotl_12', () => m.$('rotl', [$i32('80000000'), 1]), 1);
    returns('rotr_0', () => m.$('rotr', [1, 1]), $i32('80000000'));
    returns('rotr_1', () => m.$('rotr', [1, 0]), 1);
    returns(
        'rotr_2', () => m.$('rotr', [$i32('FFFFFFFF'), 1]), $i32('FFFFFFFF'));
    returns('rotr_3', () => m.$('rotr', [1, 0x20]), 1);
    returns(
        'rotr_4', () => m.$('rotr', [$i32('FF00CC00'), 1]), $i32('7F806600'));
    returns('rotr_5', () => m.$('rotr', [0x80000, 4]), 0x8000);
    returns(
        'rotr_6', () => m.$('rotr', [$i32('B0C1D2E3'), 5]), $i32('1D860E97'));
    returns('rotr_7', () => m.$('rotr', [0x8000, 0x25]), 0x400);
    returns('rotr_8', () => m.$('rotr', [$i32('B0C1D2E3'), 0xFF05]),
        $i32('1D860E97'));
    returns('rotr_9', () => m.$('rotr', [$i32('769ABCDF'), $i32('FFFFFFED')]),
        $i32('E6FBB4D5'));
    returns('rotr_10', () => m.$('rotr', [$i32('769ABCDF'), $i32('8000000D')]),
        $i32('E6FBB4D5'));
    returns('rotr_11', () => m.$('rotr', [1, 0x1F]), 2);
    returns('rotr_12', () => m.$('rotr', [$i32('80000000'), 0x1F]), 1);
    returns('clz_0', () => m.$('clz', [$i32('FFFFFFFF')]), 0);
    returns('clz_1', () => m.$('clz', [0]), 0x20);
    returns('clz_2', () => m.$('clz', [0x8000]), 0x10);
    returns('clz_3', () => m.$('clz', [0xFF]), 0x18);
    returns('clz_4', () => m.$('clz', [$i32('80000000')]), 0);
    returns('clz_5', () => m.$('clz', [1]), 0x1F);
    returns('clz_6', () => m.$('clz', [2]), 0x1E);
    returns('clz_7', () => m.$('clz', [$i32('7FFFFFFF')]), 1);
    returns('ctz_0', () => m.$('ctz', [$i32('FFFFFFFF')]), 0);
    returns('ctz_1', () => m.$('ctz', [0]), 0x20);
    returns('ctz_2', () => m.$('ctz', [0x8000]), 0xF);
    returns('ctz_3', () => m.$('ctz', [0x10000]), 0x10);
    returns('ctz_4', () => m.$('ctz', [$i32('80000000')]), 0x1F);
    returns('ctz_5', () => m.$('ctz', [$i32('7FFFFFFF')]), 0);
    returns('popcnt_0', () => m.$('popcnt', [$i32('FFFFFFFF')]), 0x20);
    returns('popcnt_1', () => m.$('popcnt', [0]), 0);
    returns('popcnt_2', () => m.$('popcnt', [0x8000]), 1);
    returns('popcnt_3', () => m.$('popcnt', [$i32('80008000')]), 2);
    returns('popcnt_4', () => m.$('popcnt', [$i32('7FFFFFFF')]), 0x1F);
    returns('popcnt_5', () => m.$('popcnt', [$i32('AAAAAAAA')]), 0x10);
    returns('popcnt_6', () => m.$('popcnt', [$i32('55555555')]), 0x10);
    returns('popcnt_7', () => m.$('popcnt', [$i32('DEADBEEF')]), 0x18);
    returns('extend8_s_0', () => m.$('extend8_s', [0]), 0);
    returns('extend8_s_1', () => m.$('extend8_s', [0x7F]), 0x7F);
    returns('extend8_s_2', () => m.$('extend8_s', [0x80]), $i32('FFFFFF80'));
    returns('extend8_s_3', () => m.$('extend8_s', [0xFF]), $i32('FFFFFFFF'));
    returns('extend8_s_4', () => m.$('extend8_s', [$i32('1234500')]), 0);
    returns('extend8_s_5', () => m.$('extend8_s', [$i32('FEDCBA80')]),
        $i32('FFFFFF80'));
    returns('extend8_s_6', () => m.$('extend8_s', [$i32('FFFFFFFF')]),
        $i32('FFFFFFFF'));
    returns('extend16_s_0', () => m.$('extend16_s', [0]), 0);
    returns('extend16_s_1', () => m.$('extend16_s', [0x7FFF]), 0x7FFF);
    returns(
        'extend16_s_2', () => m.$('extend16_s', [0x8000]), $i32('FFFF8000'));
    returns(
        'extend16_s_3', () => m.$('extend16_s', [0xFFFF]), $i32('FFFFFFFF'));
    returns('extend16_s_4', () => m.$('extend16_s', [$i32('1230000')]), 0);
    returns('extend16_s_5', () => m.$('extend16_s', [$i32('FEDC8000')]),
        $i32('FFFF8000'));
    returns('extend16_s_6', () => m.$('extend16_s', [$i32('FFFFFFFF')]),
        $i32('FFFFFFFF'));
    returns('eqz_0', () => m.$('eqz', [0]), 1);
    returns('eqz_1', () => m.$('eqz', [1]), 0);
    returns('eqz_2', () => m.$('eqz', [$i32('80000000')]), 0);
    returns('eqz_3', () => m.$('eqz', [$i32('7FFFFFFF')]), 0);
    returns('eqz_4', () => m.$('eqz', [$i32('FFFFFFFF')]), 0);
    returns('eq_0', () => m.$('eq', [0, 0]), 1);
    returns('eq_1', () => m.$('eq', [1, 1]), 1);
    returns('eq_2', () => m.$('eq', [$i32('FFFFFFFF'), 1]), 0);
    returns('eq_3', () => m.$('eq', [$i32('80000000'), $i32('80000000')]), 1);
    returns('eq_4', () => m.$('eq', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 1);
    returns('eq_5', () => m.$('eq', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 1);
    returns('eq_6', () => m.$('eq', [1, 0]), 0);
    returns('eq_7', () => m.$('eq', [0, 1]), 0);
    returns('eq_8', () => m.$('eq', [$i32('80000000'), 0]), 0);
    returns('eq_9', () => m.$('eq', [0, $i32('80000000')]), 0);
    returns('eq_10', () => m.$('eq', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns('eq_11', () => m.$('eq', [$i32('FFFFFFFF'), $i32('80000000')]), 0);
    returns('eq_12', () => m.$('eq', [$i32('80000000'), $i32('7FFFFFFF')]), 0);
    returns('eq_13', () => m.$('eq', [$i32('7FFFFFFF'), $i32('80000000')]), 0);
    returns('ne_0', () => m.$('ne', [0, 0]), 0);
    returns('ne_1', () => m.$('ne', [1, 1]), 0);
    returns('ne_2', () => m.$('ne', [$i32('FFFFFFFF'), 1]), 1);
    returns('ne_3', () => m.$('ne', [$i32('80000000'), $i32('80000000')]), 0);
    returns('ne_4', () => m.$('ne', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0);
    returns('ne_5', () => m.$('ne', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('ne_6', () => m.$('ne', [1, 0]), 1);
    returns('ne_7', () => m.$('ne', [0, 1]), 1);
    returns('ne_8', () => m.$('ne', [$i32('80000000'), 0]), 1);
    returns('ne_9', () => m.$('ne', [0, $i32('80000000')]), 1);
    returns('ne_10', () => m.$('ne', [$i32('80000000'), $i32('FFFFFFFF')]), 1);
    returns('ne_11', () => m.$('ne', [$i32('FFFFFFFF'), $i32('80000000')]), 1);
    returns('ne_12', () => m.$('ne', [$i32('80000000'), $i32('7FFFFFFF')]), 1);
    returns('ne_13', () => m.$('ne', [$i32('7FFFFFFF'), $i32('80000000')]), 1);
    returns('lt_s_0', () => m.$('lt_s', [0, 0]), 0);
    returns('lt_s_1', () => m.$('lt_s', [1, 1]), 0);
    returns('lt_s_2', () => m.$('lt_s', [$i32('FFFFFFFF'), 1]), 1);
    returns(
        'lt_s_3', () => m.$('lt_s', [$i32('80000000'), $i32('80000000')]), 0);
    returns(
        'lt_s_4', () => m.$('lt_s', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0);
    returns(
        'lt_s_5', () => m.$('lt_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('lt_s_6', () => m.$('lt_s', [1, 0]), 0);
    returns('lt_s_7', () => m.$('lt_s', [0, 1]), 1);
    returns('lt_s_8', () => m.$('lt_s', [$i32('80000000'), 0]), 1);
    returns('lt_s_9', () => m.$('lt_s', [0, $i32('80000000')]), 0);
    returns(
        'lt_s_10', () => m.$('lt_s', [$i32('80000000'), $i32('FFFFFFFF')]), 1);
    returns(
        'lt_s_11', () => m.$('lt_s', [$i32('FFFFFFFF'), $i32('80000000')]), 0);
    returns(
        'lt_s_12', () => m.$('lt_s', [$i32('80000000'), $i32('7FFFFFFF')]), 1);
    returns(
        'lt_s_13', () => m.$('lt_s', [$i32('7FFFFFFF'), $i32('80000000')]), 0);
    returns('lt_u_0', () => m.$('lt_u', [0, 0]), 0);
    returns('lt_u_1', () => m.$('lt_u', [1, 1]), 0);
    returns('lt_u_2', () => m.$('lt_u', [$i32('FFFFFFFF'), 1]), 0);
    returns(
        'lt_u_3', () => m.$('lt_u', [$i32('80000000'), $i32('80000000')]), 0);
    returns(
        'lt_u_4', () => m.$('lt_u', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0);
    returns(
        'lt_u_5', () => m.$('lt_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('lt_u_6', () => m.$('lt_u', [1, 0]), 0);
    returns('lt_u_7', () => m.$('lt_u', [0, 1]), 1);
    returns('lt_u_8', () => m.$('lt_u', [$i32('80000000'), 0]), 0);
    returns('lt_u_9', () => m.$('lt_u', [0, $i32('80000000')]), 1);
    returns(
        'lt_u_10', () => m.$('lt_u', [$i32('80000000'), $i32('FFFFFFFF')]), 1);
    returns(
        'lt_u_11', () => m.$('lt_u', [$i32('FFFFFFFF'), $i32('80000000')]), 0);
    returns(
        'lt_u_12', () => m.$('lt_u', [$i32('80000000'), $i32('7FFFFFFF')]), 0);
    returns(
        'lt_u_13', () => m.$('lt_u', [$i32('7FFFFFFF'), $i32('80000000')]), 1);
    returns('le_s_0', () => m.$('le_s', [0, 0]), 1);
    returns('le_s_1', () => m.$('le_s', [1, 1]), 1);
    returns('le_s_2', () => m.$('le_s', [$i32('FFFFFFFF'), 1]), 1);
    returns(
        'le_s_3', () => m.$('le_s', [$i32('80000000'), $i32('80000000')]), 1);
    returns(
        'le_s_4', () => m.$('le_s', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 1);
    returns(
        'le_s_5', () => m.$('le_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 1);
    returns('le_s_6', () => m.$('le_s', [1, 0]), 0);
    returns('le_s_7', () => m.$('le_s', [0, 1]), 1);
    returns('le_s_8', () => m.$('le_s', [$i32('80000000'), 0]), 1);
    returns('le_s_9', () => m.$('le_s', [0, $i32('80000000')]), 0);
    returns(
        'le_s_10', () => m.$('le_s', [$i32('80000000'), $i32('FFFFFFFF')]), 1);
    returns(
        'le_s_11', () => m.$('le_s', [$i32('FFFFFFFF'), $i32('80000000')]), 0);
    returns(
        'le_s_12', () => m.$('le_s', [$i32('80000000'), $i32('7FFFFFFF')]), 1);
    returns(
        'le_s_13', () => m.$('le_s', [$i32('7FFFFFFF'), $i32('80000000')]), 0);
    returns('le_u_0', () => m.$('le_u', [0, 0]), 1);
    returns('le_u_1', () => m.$('le_u', [1, 1]), 1);
    returns('le_u_2', () => m.$('le_u', [$i32('FFFFFFFF'), 1]), 0);
    returns(
        'le_u_3', () => m.$('le_u', [$i32('80000000'), $i32('80000000')]), 1);
    returns(
        'le_u_4', () => m.$('le_u', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 1);
    returns(
        'le_u_5', () => m.$('le_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 1);
    returns('le_u_6', () => m.$('le_u', [1, 0]), 0);
    returns('le_u_7', () => m.$('le_u', [0, 1]), 1);
    returns('le_u_8', () => m.$('le_u', [$i32('80000000'), 0]), 0);
    returns('le_u_9', () => m.$('le_u', [0, $i32('80000000')]), 1);
    returns(
        'le_u_10', () => m.$('le_u', [$i32('80000000'), $i32('FFFFFFFF')]), 1);
    returns(
        'le_u_11', () => m.$('le_u', [$i32('FFFFFFFF'), $i32('80000000')]), 0);
    returns(
        'le_u_12', () => m.$('le_u', [$i32('80000000'), $i32('7FFFFFFF')]), 0);
    returns(
        'le_u_13', () => m.$('le_u', [$i32('7FFFFFFF'), $i32('80000000')]), 1);
    returns('gt_s_0', () => m.$('gt_s', [0, 0]), 0);
    returns('gt_s_1', () => m.$('gt_s', [1, 1]), 0);
    returns('gt_s_2', () => m.$('gt_s', [$i32('FFFFFFFF'), 1]), 0);
    returns(
        'gt_s_3', () => m.$('gt_s', [$i32('80000000'), $i32('80000000')]), 0);
    returns(
        'gt_s_4', () => m.$('gt_s', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0);
    returns(
        'gt_s_5', () => m.$('gt_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('gt_s_6', () => m.$('gt_s', [1, 0]), 1);
    returns('gt_s_7', () => m.$('gt_s', [0, 1]), 0);
    returns('gt_s_8', () => m.$('gt_s', [$i32('80000000'), 0]), 0);
    returns('gt_s_9', () => m.$('gt_s', [0, $i32('80000000')]), 1);
    returns(
        'gt_s_10', () => m.$('gt_s', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns(
        'gt_s_11', () => m.$('gt_s', [$i32('FFFFFFFF'), $i32('80000000')]), 1);
    returns(
        'gt_s_12', () => m.$('gt_s', [$i32('80000000'), $i32('7FFFFFFF')]), 0);
    returns(
        'gt_s_13', () => m.$('gt_s', [$i32('7FFFFFFF'), $i32('80000000')]), 1);
    returns('gt_u_0', () => m.$('gt_u', [0, 0]), 0);
    returns('gt_u_1', () => m.$('gt_u', [1, 1]), 0);
    returns('gt_u_2', () => m.$('gt_u', [$i32('FFFFFFFF'), 1]), 1);
    returns(
        'gt_u_3', () => m.$('gt_u', [$i32('80000000'), $i32('80000000')]), 0);
    returns(
        'gt_u_4', () => m.$('gt_u', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0);
    returns(
        'gt_u_5', () => m.$('gt_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('gt_u_6', () => m.$('gt_u', [1, 0]), 1);
    returns('gt_u_7', () => m.$('gt_u', [0, 1]), 0);
    returns('gt_u_8', () => m.$('gt_u', [$i32('80000000'), 0]), 1);
    returns('gt_u_9', () => m.$('gt_u', [0, $i32('80000000')]), 0);
    returns(
        'gt_u_10', () => m.$('gt_u', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns(
        'gt_u_11', () => m.$('gt_u', [$i32('FFFFFFFF'), $i32('80000000')]), 1);
    returns(
        'gt_u_12', () => m.$('gt_u', [$i32('80000000'), $i32('7FFFFFFF')]), 1);
    returns(
        'gt_u_13', () => m.$('gt_u', [$i32('7FFFFFFF'), $i32('80000000')]), 0);
    returns('ge_s_0', () => m.$('ge_s', [0, 0]), 1);
    returns('ge_s_1', () => m.$('ge_s', [1, 1]), 1);
    returns('ge_s_2', () => m.$('ge_s', [$i32('FFFFFFFF'), 1]), 0);
    returns(
        'ge_s_3', () => m.$('ge_s', [$i32('80000000'), $i32('80000000')]), 1);
    returns(
        'ge_s_4', () => m.$('ge_s', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 1);
    returns(
        'ge_s_5', () => m.$('ge_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 1);
    returns('ge_s_6', () => m.$('ge_s', [1, 0]), 1);
    returns('ge_s_7', () => m.$('ge_s', [0, 1]), 0);
    returns('ge_s_8', () => m.$('ge_s', [$i32('80000000'), 0]), 0);
    returns('ge_s_9', () => m.$('ge_s', [0, $i32('80000000')]), 1);
    returns(
        'ge_s_10', () => m.$('ge_s', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns(
        'ge_s_11', () => m.$('ge_s', [$i32('FFFFFFFF'), $i32('80000000')]), 1);
    returns(
        'ge_s_12', () => m.$('ge_s', [$i32('80000000'), $i32('7FFFFFFF')]), 0);
    returns(
        'ge_s_13', () => m.$('ge_s', [$i32('7FFFFFFF'), $i32('80000000')]), 1);
    returns('ge_u_0', () => m.$('ge_u', [0, 0]), 1);
    returns('ge_u_1', () => m.$('ge_u', [1, 1]), 1);
    returns('ge_u_2', () => m.$('ge_u', [$i32('FFFFFFFF'), 1]), 1);
    returns(
        'ge_u_3', () => m.$('ge_u', [$i32('80000000'), $i32('80000000')]), 1);
    returns(
        'ge_u_4', () => m.$('ge_u', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 1);
    returns(
        'ge_u_5', () => m.$('ge_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 1);
    returns('ge_u_6', () => m.$('ge_u', [1, 0]), 1);
    returns('ge_u_7', () => m.$('ge_u', [0, 1]), 0);
    returns('ge_u_8', () => m.$('ge_u', [$i32('80000000'), 0]), 1);
    returns('ge_u_9', () => m.$('ge_u', [0, $i32('80000000')]), 0);
    returns(
        'ge_u_10', () => m.$('ge_u', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns(
        'ge_u_11', () => m.$('ge_u', [$i32('FFFFFFFF'), $i32('80000000')]), 1);
    returns(
        'ge_u_12', () => m.$('ge_u', [$i32('80000000'), $i32('7FFFFFFF')]), 1);
    returns(
        'ge_u_13', () => m.$('ge_u', [$i32('7FFFFFFF'), $i32('80000000')]), 0);
  });

  // assertInvalid('invalid i32.1.wasm', 'i32/i32.1.wasm', 'type mismatch');
  // assertInvalid('invalid i32.2.wasm', 'i32/i32.2.wasm', 'type mismatch');
  // assertInvalid('invalid i32.3.wasm', 'i32/i32.3.wasm', 'type mismatch');
  // assertInvalid('invalid i32.4.wasm', 'i32/i32.4.wasm', 'type mismatch');
  // assertInvalid('invalid i32.5.wasm', 'i32/i32.5.wasm', 'type mismatch');
  // assertInvalid('invalid i32.6.wasm', 'i32/i32.6.wasm', 'type mismatch');
  // assertInvalid('invalid i32.7.wasm', 'i32/i32.7.wasm', 'type mismatch');
  // assertInvalid('invalid i32.8.wasm', 'i32/i32.8.wasm', 'type mismatch');
  // assertInvalid('invalid i32.9.wasm', 'i32/i32.9.wasm', 'type mismatch');
  // assertInvalid('invalid i32.10.wasm', 'i32/i32.10.wasm', 'type mismatch');
  // assertInvalid('invalid i32.11.wasm', 'i32/i32.11.wasm', 'type mismatch');
  // assertInvalid('invalid i32.12.wasm', 'i32/i32.12.wasm', 'type mismatch');
  // assertInvalid('invalid i32.13.wasm', 'i32/i32.13.wasm', 'type mismatch');
  // assertInvalid('invalid i32.14.wasm', 'i32/i32.14.wasm', 'type mismatch');
  // assertInvalid('invalid i32.15.wasm', 'i32/i32.15.wasm', 'type mismatch');
  // assertInvalid('invalid i32.16.wasm', 'i32/i32.16.wasm', 'type mismatch');
  // assertInvalid('invalid i32.17.wasm', 'i32/i32.17.wasm', 'type mismatch');
  // assertInvalid('invalid i32.18.wasm', 'i32/i32.18.wasm', 'type mismatch');
  // assertInvalid('invalid i32.19.wasm', 'i32/i32.19.wasm', 'type mismatch');
  // assertInvalid('invalid i32.20.wasm', 'i32/i32.20.wasm', 'type mismatch');
  // assertInvalid('invalid i32.21.wasm', 'i32/i32.21.wasm', 'type mismatch');
  // assertInvalid('invalid i32.22.wasm', 'i32/i32.22.wasm', 'type mismatch');
  // assertInvalid('invalid i32.23.wasm', 'i32/i32.23.wasm', 'type mismatch');
  // assertInvalid('invalid i32.24.wasm', 'i32/i32.24.wasm', 'type mismatch');
  // assertInvalid('invalid i32.25.wasm', 'i32/i32.25.wasm', 'type mismatch');
  // assertInvalid('invalid i32.26.wasm', 'i32/i32.26.wasm', 'type mismatch');
  // assertInvalid('invalid i32.27.wasm', 'i32/i32.27.wasm', 'type mismatch');
  // assertInvalid('invalid i32.28.wasm', 'i32/i32.28.wasm', 'type mismatch');
  // assertInvalid('invalid i32.29.wasm', 'i32/i32.29.wasm', 'type mismatch');
  // assertInvalid('invalid i32.30.wasm', 'i32/i32.30.wasm', 'type mismatch');
  // assertInvalid('invalid i32.31.wasm', 'i32/i32.31.wasm', 'type mismatch');
  // assertInvalid('invalid i32.32.wasm', 'i32/i32.32.wasm', 'type mismatch');
  // assertInvalid('invalid i32.33.wasm', 'i32/i32.33.wasm', 'type mismatch');
  // assertInvalid('invalid i32.34.wasm', 'i32/i32.34.wasm', 'type mismatch');
  // assertInvalid('invalid i32.35.wasm', 'i32/i32.35.wasm', 'type mismatch');
  // assertInvalid('invalid i32.36.wasm', 'i32/i32.36.wasm', 'type mismatch');
  // assertInvalid('invalid i32.37.wasm', 'i32/i32.37.wasm', 'type mismatch');
  // assertInvalid('invalid i32.38.wasm', 'i32/i32.38.wasm', 'type mismatch');
  // assertInvalid('invalid i32.39.wasm', 'i32/i32.39.wasm', 'type mismatch');
  // assertInvalid('invalid i32.40.wasm', 'i32/i32.40.wasm', 'type mismatch');
  // assertInvalid('invalid i32.41.wasm', 'i32/i32.41.wasm', 'type mismatch');
  // assertInvalid('invalid i32.42.wasm', 'i32/i32.42.wasm', 'type mismatch');
  // assertInvalid('invalid i32.43.wasm', 'i32/i32.43.wasm', 'type mismatch');
  // assertInvalid('invalid i32.44.wasm', 'i32/i32.44.wasm', 'type mismatch');
  // assertInvalid('invalid i32.45.wasm', 'i32/i32.45.wasm', 'type mismatch');
  // assertInvalid('invalid i32.46.wasm', 'i32/i32.46.wasm', 'type mismatch');
  // assertInvalid('invalid i32.47.wasm', 'i32/i32.47.wasm', 'type mismatch');
  // assertInvalid('invalid i32.48.wasm', 'i32/i32.48.wasm', 'type mismatch');
  // assertInvalid('invalid i32.49.wasm', 'i32/i32.49.wasm', 'type mismatch');
  // assertInvalid('invalid i32.50.wasm', 'i32/i32.50.wasm', 'type mismatch');
  // assertInvalid('invalid i32.51.wasm', 'i32/i32.51.wasm', 'type mismatch');
  // assertInvalid('invalid i32.52.wasm', 'i32/i32.52.wasm', 'type mismatch');
  // assertInvalid('invalid i32.53.wasm', 'i32/i32.53.wasm', 'type mismatch');
  // assertInvalid('invalid i32.54.wasm', 'i32/i32.54.wasm', 'type mismatch');
  // assertInvalid('invalid i32.55.wasm', 'i32/i32.55.wasm', 'type mismatch');
  // assertInvalid('invalid i32.56.wasm', 'i32/i32.56.wasm', 'type mismatch');
  // assertInvalid('invalid i32.57.wasm', 'i32/i32.57.wasm', 'type mismatch');
  // assertInvalid('invalid i32.58.wasm', 'i32/i32.58.wasm', 'type mismatch');
  // assertInvalid('invalid i32.59.wasm', 'i32/i32.59.wasm', 'type mismatch');
  // assertInvalid('invalid i32.60.wasm', 'i32/i32.60.wasm', 'type mismatch');
  // assertInvalid('invalid i32.61.wasm', 'i32/i32.61.wasm', 'type mismatch');
  // assertInvalid('invalid i32.62.wasm', 'i32/i32.62.wasm', 'type mismatch');
  // assertInvalid('invalid i32.63.wasm', 'i32/i32.63.wasm', 'type mismatch');
  // assertInvalid('invalid i32.64.wasm', 'i32/i32.64.wasm', 'type mismatch');
  // assertInvalid('invalid i32.65.wasm', 'i32/i32.65.wasm', 'type mismatch');
  // assertInvalid('invalid i32.66.wasm', 'i32/i32.66.wasm', 'type mismatch');
  // assertInvalid('invalid i32.67.wasm', 'i32/i32.67.wasm', 'type mismatch');
  // assertInvalid('invalid i32.68.wasm', 'i32/i32.68.wasm', 'type mismatch');
  // assertInvalid('invalid i32.69.wasm', 'i32/i32.69.wasm', 'type mismatch');
  // assertInvalid('invalid i32.70.wasm', 'i32/i32.70.wasm', 'type mismatch');
  // assertInvalid('invalid i32.71.wasm', 'i32/i32.71.wasm', 'type mismatch');
  // assertInvalid('invalid i32.72.wasm', 'i32/i32.72.wasm', 'type mismatch');
  // assertInvalid('invalid i32.73.wasm', 'i32/i32.73.wasm', 'type mismatch');
  // assertInvalid('invalid i32.74.wasm', 'i32/i32.74.wasm', 'type mismatch');
  // assertInvalid('invalid i32.75.wasm', 'i32/i32.75.wasm', 'type mismatch');
  // assertInvalid('invalid i32.76.wasm', 'i32/i32.76.wasm', 'type mismatch');
  // assertInvalid('invalid i32.77.wasm', 'i32/i32.77.wasm', 'type mismatch');
  // assertInvalid('invalid i32.78.wasm', 'i32/i32.78.wasm', 'type mismatch');
  // assertInvalid('invalid i32.79.wasm', 'i32/i32.79.wasm', 'type mismatch');
  // assertInvalid('invalid i32.80.wasm', 'i32/i32.80.wasm', 'type mismatch');
  // assertInvalid('invalid i32.81.wasm', 'i32/i32.81.wasm', 'type mismatch');
  // assertInvalid('invalid i32.82.wasm', 'i32/i32.82.wasm', 'type mismatch');
  // assertInvalid('invalid i32.83.wasm', 'i32/i32.83.wasm', 'type mismatch');
}
