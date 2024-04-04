// Generated from spec/test/core/i32.wast.

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  group('i32.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/i32/i32.0.wasm'));
      m = Module(def);
    });

    returns('add_0', () => m.call('add', [0x1, 0x1]), 0x2);
    returns('add_1', () => m.call('add', [0x1, 0]), 0x1);
    returns('add_2', () => m.call('add', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]),
        $i32('FFFFFFFE'));
    returns('add_3', () => m.call('add', [$i32('FFFFFFFF'), 0x1]), 0);
    returns('add_4', () => m.call('add', [$i32('7FFFFFFF'), 0x1]),
        $i32('80000000'));
    returns('add_5', () => m.call('add', [$i32('80000000'), $i32('FFFFFFFF')]),
        $i32('7FFFFFFF'));
    returns(
        'add_6', () => m.call('add', [$i32('80000000'), $i32('80000000')]), 0);
    returns('add_7', () => m.call('add', [$i32('3FFFFFFF'), 0x1]),
        $i32('40000000'));
    returns('sub_0', () => m.call('sub', [0x1, 0x1]), 0);
    returns('sub_1', () => m.call('sub', [0x1, 0]), 0x1);
    returns(
        'sub_2', () => m.call('sub', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('sub_3', () => m.call('sub', [$i32('7FFFFFFF'), $i32('FFFFFFFF')]),
        $i32('80000000'));
    returns('sub_4', () => m.call('sub', [$i32('80000000'), 0x1]),
        $i32('7FFFFFFF'));
    returns(
        'sub_5', () => m.call('sub', [$i32('80000000'), $i32('80000000')]), 0);
    returns('sub_6', () => m.call('sub', [$i32('3FFFFFFF'), $i32('FFFFFFFF')]),
        $i32('40000000'));
    returns('mul_0', () => m.call('mul', [0x1, 0x1]), 0x1);
    returns('mul_1', () => m.call('mul', [0x1, 0]), 0);
    returns('mul_2', () => m.call('mul', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]),
        0x1);
    returns('mul_3', () => m.call('mul', [$i32('10000000'), 0x1000]), 0);
    returns('mul_4', () => m.call('mul', [$i32('80000000'), 0]), 0);
    returns('mul_5', () => m.call('mul', [$i32('80000000'), $i32('FFFFFFFF')]),
        $i32('80000000'));
    returns('mul_6', () => m.call('mul', [$i32('7FFFFFFF'), $i32('FFFFFFFF')]),
        $i32('80000001'));
    returns('mul_7', () => m.call('mul', [$i32('1234567'), $i32('76543210')]),
        $i32('358E7470'));
    returns('mul_8', () => m.call('mul', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]),
        0x1);
    traps('div_s_0', () => m.call('div_s', [0x1, 0]), 'integer divide by zero');
    traps('div_s_1', () => m.call('div_s', [0, 0]), 'integer divide by zero');
    traps(
      'div_s_2',
      () => m.call('div_s', [$i32('80000000'), $i32('FFFFFFFF')]),
      'integer overflow',
      'skip: see test/spec/_expected_fail.txt',
    );
    traps('div_s_3', () => m.call('div_s', [$i32('80000000'), 0]),
        'integer divide by zero');
    returns('div_s_4', () => m.call('div_s', [0x1, 0x1]), 0x1);
    returns('div_s_5', () => m.call('div_s', [0, 0x1]), 0);
    returns('div_s_6', () => m.call('div_s', [0, $i32('FFFFFFFF')]), 0);
    returns('div_s_7',
        () => m.call('div_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0x1);
    returns('div_s_8', () => m.call('div_s', [$i32('80000000'), 0x2]),
        $i32('C0000000'));
    returns('div_s_9', () => m.call('div_s', [$i32('80000001'), 0x3E8]),
        $i32('FFDF3B65'));
    returns('div_s_10', () => m.call('div_s', [0x5, 0x2]), 0x2);
    returns('div_s_11', () => m.call('div_s', [$i32('FFFFFFFB'), 0x2]),
        $i32('FFFFFFFE'));
    returns('div_s_12', () => m.call('div_s', [0x5, $i32('FFFFFFFE')]),
        $i32('FFFFFFFE'));
    returns('div_s_13',
        () => m.call('div_s', [$i32('FFFFFFFB'), $i32('FFFFFFFE')]), 0x2);
    returns('div_s_14', () => m.call('div_s', [0x7, 0x3]), 0x2);
    returns('div_s_15', () => m.call('div_s', [$i32('FFFFFFF9'), 0x3]),
        $i32('FFFFFFFE'));
    returns('div_s_16', () => m.call('div_s', [0x7, $i32('FFFFFFFD')]),
        $i32('FFFFFFFE'));
    returns('div_s_17',
        () => m.call('div_s', [$i32('FFFFFFF9'), $i32('FFFFFFFD')]), 0x2);
    returns('div_s_18', () => m.call('div_s', [0xB, 0x5]), 0x2);
    returns('div_s_19', () => m.call('div_s', [0x11, 0x7]), 0x2);
    traps('div_u_0', () => m.call('div_u', [0x1, 0]), 'integer divide by zero');
    traps('div_u_1', () => m.call('div_u', [0, 0]), 'integer divide by zero');
    returns('div_u_2', () => m.call('div_u', [0x1, 0x1]), 0x1);
    returns('div_u_3', () => m.call('div_u', [0, 0x1]), 0);
    returns('div_u_4',
        () => m.call('div_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0x1);
    returns('div_u_5',
        () => m.call('div_u', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns('div_u_6', () => m.call('div_u', [$i32('80000000'), 0x2]),
        $i32('40000000'));
    returns(
        'div_u_7', () => m.call('div_u', [$i32('8FF00FF0'), 0x10001]), 0x8FEF);
    returns('div_u_8', () => m.call('div_u', [$i32('80000001'), 0x3E8]),
        $i32('20C49B'));
    returns('div_u_9', () => m.call('div_u', [0x5, 0x2]), 0x2);
    returns('div_u_10', () => m.call('div_u', [$i32('FFFFFFFB'), 0x2]),
        $i32('7FFFFFFD'));
    returns('div_u_11', () => m.call('div_u', [0x5, $i32('FFFFFFFE')]), 0);
    returns('div_u_12',
        () => m.call('div_u', [$i32('FFFFFFFB'), $i32('FFFFFFFE')]), 0);
    returns('div_u_13', () => m.call('div_u', [0x7, 0x3]), 0x2);
    returns('div_u_14', () => m.call('div_u', [0xB, 0x5]), 0x2);
    returns('div_u_15', () => m.call('div_u', [0x11, 0x7]), 0x2);
    traps('rem_s_0', () => m.call('rem_s', [0x1, 0]), 'integer divide by zero');
    traps('rem_s_1', () => m.call('rem_s', [0, 0]), 'integer divide by zero');
    returns('rem_s_2',
        () => m.call('rem_s', [$i32('7FFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('rem_s_3', () => m.call('rem_s', [0x1, 0x1]), 0);
    returns('rem_s_4', () => m.call('rem_s', [0, 0x1]), 0);
    returns('rem_s_5', () => m.call('rem_s', [0, $i32('FFFFFFFF')]), 0);
    returns('rem_s_6',
        () => m.call('rem_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('rem_s_7',
        () => m.call('rem_s', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns('rem_s_8', () => m.call('rem_s', [$i32('80000000'), 0x2]), 0);
    returns('rem_s_9', () => m.call('rem_s', [$i32('80000001'), 0x3E8]),
        $i32('FFFFFD79'));
    returns('rem_s_10', () => m.call('rem_s', [0x5, 0x2]), 0x1);
    returns('rem_s_11', () => m.call('rem_s', [$i32('FFFFFFFB'), 0x2]),
        $i32('FFFFFFFF'));
    returns('rem_s_12', () => m.call('rem_s', [0x5, $i32('FFFFFFFE')]), 0x1);
    returns(
        'rem_s_13',
        () => m.call('rem_s', [$i32('FFFFFFFB'), $i32('FFFFFFFE')]),
        $i32('FFFFFFFF'));
    returns('rem_s_14', () => m.call('rem_s', [0x7, 0x3]), 0x1);
    returns('rem_s_15', () => m.call('rem_s', [$i32('FFFFFFF9'), 0x3]),
        $i32('FFFFFFFF'));
    returns('rem_s_16', () => m.call('rem_s', [0x7, $i32('FFFFFFFD')]), 0x1);
    returns(
        'rem_s_17',
        () => m.call('rem_s', [$i32('FFFFFFF9'), $i32('FFFFFFFD')]),
        $i32('FFFFFFFF'));
    returns('rem_s_18', () => m.call('rem_s', [0xB, 0x5]), 0x1);
    returns('rem_s_19', () => m.call('rem_s', [0x11, 0x7]), 0x3);
    traps('rem_u_0', () => m.call('rem_u', [0x1, 0]), 'integer divide by zero');
    traps('rem_u_1', () => m.call('rem_u', [0, 0]), 'integer divide by zero');
    returns('rem_u_2', () => m.call('rem_u', [0x1, 0x1]), 0);
    returns('rem_u_3', () => m.call('rem_u', [0, 0x1]), 0);
    returns('rem_u_4',
        () => m.call('rem_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns(
        'rem_u_5',
        () => m.call('rem_u', [$i32('80000000'), $i32('FFFFFFFF')]),
        $i32('80000000'));
    returns('rem_u_6', () => m.call('rem_u', [$i32('80000000'), 0x2]), 0);
    returns(
        'rem_u_7', () => m.call('rem_u', [$i32('8FF00FF0'), 0x10001]), 0x8001);
    returns('rem_u_8', () => m.call('rem_u', [$i32('80000001'), 0x3E8]), 0x289);
    returns('rem_u_9', () => m.call('rem_u', [0x5, 0x2]), 0x1);
    returns('rem_u_10', () => m.call('rem_u', [$i32('FFFFFFFB'), 0x2]), 0x1);
    returns('rem_u_11', () => m.call('rem_u', [0x5, $i32('FFFFFFFE')]), 0x5);
    returns(
        'rem_u_12',
        () => m.call('rem_u', [$i32('FFFFFFFB'), $i32('FFFFFFFE')]),
        $i32('FFFFFFFB'));
    returns('rem_u_13', () => m.call('rem_u', [0x7, 0x3]), 0x1);
    returns('rem_u_14', () => m.call('rem_u', [0xB, 0x5]), 0x1);
    returns('rem_u_15', () => m.call('rem_u', [0x11, 0x7]), 0x3);
    returns('and_0', () => m.call('and', [0x1, 0]), 0);
    returns('and_1', () => m.call('and', [0, 0x1]), 0);
    returns('and_2', () => m.call('and', [0x1, 0x1]), 0x1);
    returns('and_3', () => m.call('and', [0, 0]), 0);
    returns(
        'and_4', () => m.call('and', [$i32('7FFFFFFF'), $i32('80000000')]), 0);
    returns('and_5', () => m.call('and', [$i32('7FFFFFFF'), $i32('FFFFFFFF')]),
        $i32('7FFFFFFF'));
    returns('and_6', () => m.call('and', [$i32('F0F0FFFF'), $i32('FFFFF0F0')]),
        $i32('F0F0F0F0'));
    returns('and_7', () => m.call('and', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]),
        $i32('FFFFFFFF'));
    returns('or_0', () => m.call('or', [0x1, 0]), 0x1);
    returns('or_1', () => m.call('or', [0, 0x1]), 0x1);
    returns('or_2', () => m.call('or', [0x1, 0x1]), 0x1);
    returns('or_3', () => m.call('or', [0, 0]), 0);
    returns('or_4', () => m.call('or', [$i32('7FFFFFFF'), $i32('80000000')]),
        $i32('FFFFFFFF'));
    returns(
        'or_5', () => m.call('or', [$i32('80000000'), 0]), $i32('80000000'));
    returns('or_6', () => m.call('or', [$i32('F0F0FFFF'), $i32('FFFFF0F0')]),
        $i32('FFFFFFFF'));
    returns('or_7', () => m.call('or', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]),
        $i32('FFFFFFFF'));
    returns('xor_0', () => m.call('xor', [0x1, 0]), 0x1);
    returns('xor_1', () => m.call('xor', [0, 0x1]), 0x1);
    returns('xor_2', () => m.call('xor', [0x1, 0x1]), 0);
    returns('xor_3', () => m.call('xor', [0, 0]), 0);
    returns('xor_4', () => m.call('xor', [$i32('7FFFFFFF'), $i32('80000000')]),
        $i32('FFFFFFFF'));
    returns(
        'xor_5', () => m.call('xor', [$i32('80000000'), 0]), $i32('80000000'));
    returns('xor_6', () => m.call('xor', [$i32('FFFFFFFF'), $i32('80000000')]),
        $i32('7FFFFFFF'));
    returns('xor_7', () => m.call('xor', [$i32('FFFFFFFF'), $i32('7FFFFFFF')]),
        $i32('80000000'));
    returns('xor_8', () => m.call('xor', [$i32('F0F0FFFF'), $i32('FFFFF0F0')]),
        $i32('F0F0F0F'));
    returns(
        'xor_9', () => m.call('xor', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('shl_0', () => m.call('shl', [0x1, 0x1]), 0x2);
    returns('shl_1', () => m.call('shl', [0x1, 0]), 0x1);
    returns('shl_2', () => m.call('shl', [$i32('7FFFFFFF'), 0x1]),
        $i32('FFFFFFFE'));
    returns('shl_3', () => m.call('shl', [$i32('FFFFFFFF'), 0x1]),
        $i32('FFFFFFFE'));
    returns('shl_4', () => m.call('shl', [$i32('80000000'), 0x1]), 0);
    returns('shl_5', () => m.call('shl', [$i32('40000000'), 0x1]),
        $i32('80000000'));
    returns('shl_6', () => m.call('shl', [0x1, 0x1F]), $i32('80000000'));
    returns('shl_7', () => m.call('shl', [0x1, 0x20]), 0x1);
    returns('shl_8', () => m.call('shl', [0x1, 0x21]), 0x2);
    returns('shl_9', () => m.call('shl', [0x1, $i32('FFFFFFFF')]),
        $i32('80000000'));
    returns('shl_10', () => m.call('shl', [0x1, $i32('7FFFFFFF')]),
        $i32('80000000'));
    returns('shr_s_0', () => m.call('shr_s', [0x1, 0x1]), 0);
    returns('shr_s_1', () => m.call('shr_s', [0x1, 0]), 0x1);
    returns('shr_s_2', () => m.call('shr_s', [$i32('FFFFFFFF'), 0x1]),
        $i32('FFFFFFFF'));
    returns('shr_s_3', () => m.call('shr_s', [$i32('7FFFFFFF'), 0x1]),
        $i32('3FFFFFFF'));
    returns('shr_s_4', () => m.call('shr_s', [$i32('80000000'), 0x1]),
        $i32('C0000000'));
    returns('shr_s_5', () => m.call('shr_s', [$i32('40000000'), 0x1]),
        $i32('20000000'));
    returns('shr_s_6', () => m.call('shr_s', [0x1, 0x20]), 0x1);
    returns('shr_s_7', () => m.call('shr_s', [0x1, 0x21]), 0);
    returns('shr_s_8', () => m.call('shr_s', [0x1, $i32('FFFFFFFF')]), 0);
    returns('shr_s_9', () => m.call('shr_s', [0x1, $i32('7FFFFFFF')]), 0);
    returns('shr_s_10', () => m.call('shr_s', [0x1, $i32('80000000')]), 0x1);
    returns('shr_s_11', () => m.call('shr_s', [$i32('80000000'), 0x1F]),
        $i32('FFFFFFFF'));
    returns('shr_s_12', () => m.call('shr_s', [$i32('FFFFFFFF'), 0x20]),
        $i32('FFFFFFFF'));
    returns('shr_s_13', () => m.call('shr_s', [$i32('FFFFFFFF'), 0x21]),
        $i32('FFFFFFFF'));
    returns(
        'shr_s_14',
        () => m.call('shr_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]),
        $i32('FFFFFFFF'));
    returns(
        'shr_s_15',
        () => m.call('shr_s', [$i32('FFFFFFFF'), $i32('7FFFFFFF')]),
        $i32('FFFFFFFF'));
    returns(
        'shr_s_16',
        () => m.call('shr_s', [$i32('FFFFFFFF'), $i32('80000000')]),
        $i32('FFFFFFFF'));
    returns('shr_u_0', () => m.call('shr_u', [0x1, 0x1]), 0);
    returns('shr_u_1', () => m.call('shr_u', [0x1, 0]), 0x1);
    returns('shr_u_2', () => m.call('shr_u', [$i32('FFFFFFFF'), 0x1]),
        $i32('7FFFFFFF'));
    returns('shr_u_3', () => m.call('shr_u', [$i32('7FFFFFFF'), 0x1]),
        $i32('3FFFFFFF'));
    returns('shr_u_4', () => m.call('shr_u', [$i32('80000000'), 0x1]),
        $i32('40000000'));
    returns('shr_u_5', () => m.call('shr_u', [$i32('40000000'), 0x1]),
        $i32('20000000'));
    returns('shr_u_6', () => m.call('shr_u', [0x1, 0x20]), 0x1);
    returns('shr_u_7', () => m.call('shr_u', [0x1, 0x21]), 0);
    returns('shr_u_8', () => m.call('shr_u', [0x1, $i32('FFFFFFFF')]), 0);
    returns('shr_u_9', () => m.call('shr_u', [0x1, $i32('7FFFFFFF')]), 0);
    returns('shr_u_10', () => m.call('shr_u', [0x1, $i32('80000000')]), 0x1);
    returns('shr_u_11', () => m.call('shr_u', [$i32('80000000'), 0x1F]), 0x1);
    returns('shr_u_12', () => m.call('shr_u', [$i32('FFFFFFFF'), 0x20]),
        $i32('FFFFFFFF'));
    returns('shr_u_13', () => m.call('shr_u', [$i32('FFFFFFFF'), 0x21]),
        $i32('7FFFFFFF'));
    returns('shr_u_14',
        () => m.call('shr_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0x1);
    returns('shr_u_15',
        () => m.call('shr_u', [$i32('FFFFFFFF'), $i32('7FFFFFFF')]), 0x1);
    returns(
        'shr_u_16',
        () => m.call('shr_u', [$i32('FFFFFFFF'), $i32('80000000')]),
        $i32('FFFFFFFF'));
    returns('rotl_0', () => m.call('rotl', [0x1, 0x1]), 0x2);
    returns('rotl_1', () => m.call('rotl', [0x1, 0]), 0x1);
    returns('rotl_2', () => m.call('rotl', [$i32('FFFFFFFF'), 0x1]),
        $i32('FFFFFFFF'));
    returns('rotl_3', () => m.call('rotl', [0x1, 0x20]), 0x1);
    returns('rotl_4', () => m.call('rotl', [$i32('ABCD9876'), 0x1]),
        $i32('579B30ED'));
    returns('rotl_5', () => m.call('rotl', [$i32('FE00DC00'), 0x4]),
        $i32('E00DC00F'));
    returns('rotl_6', () => m.call('rotl', [$i32('B0C1D2E3'), 0x5]),
        $i32('183A5C76'));
    returns('rotl_7', () => m.call('rotl', [0x8000, 0x25]), $i32('100000'));
    returns('rotl_8', () => m.call('rotl', [$i32('B0C1D2E3'), 0xFF05]),
        $i32('183A5C76'));
    returns(
        'rotl_9',
        () => m.call('rotl', [$i32('769ABCDF'), $i32('FFFFFFED')]),
        $i32('579BEED3'));
    returns(
        'rotl_10',
        () => m.call('rotl', [$i32('769ABCDF'), $i32('8000000D')]),
        $i32('579BEED3'));
    returns('rotl_11', () => m.call('rotl', [0x1, 0x1F]), $i32('80000000'));
    returns('rotl_12', () => m.call('rotl', [$i32('80000000'), 0x1]), 0x1);
    returns('rotr_0', () => m.call('rotr', [0x1, 0x1]), $i32('80000000'));
    returns('rotr_1', () => m.call('rotr', [0x1, 0]), 0x1);
    returns('rotr_2', () => m.call('rotr', [$i32('FFFFFFFF'), 0x1]),
        $i32('FFFFFFFF'));
    returns('rotr_3', () => m.call('rotr', [0x1, 0x20]), 0x1);
    returns('rotr_4', () => m.call('rotr', [$i32('FF00CC00'), 0x1]),
        $i32('7F806600'));
    returns('rotr_5', () => m.call('rotr', [0x80000, 0x4]), 0x8000);
    returns('rotr_6', () => m.call('rotr', [$i32('B0C1D2E3'), 0x5]),
        $i32('1D860E97'));
    returns('rotr_7', () => m.call('rotr', [0x8000, 0x25]), 0x400);
    returns('rotr_8', () => m.call('rotr', [$i32('B0C1D2E3'), 0xFF05]),
        $i32('1D860E97'));
    returns(
        'rotr_9',
        () => m.call('rotr', [$i32('769ABCDF'), $i32('FFFFFFED')]),
        $i32('E6FBB4D5'));
    returns(
        'rotr_10',
        () => m.call('rotr', [$i32('769ABCDF'), $i32('8000000D')]),
        $i32('E6FBB4D5'));
    returns('rotr_11', () => m.call('rotr', [0x1, 0x1F]), 0x2);
    returns('rotr_12', () => m.call('rotr', [$i32('80000000'), 0x1F]), 0x1);
    returns('clz_0', () => m.call('clz', [$i32('FFFFFFFF')]), 0);
    returns('clz_1', () => m.call('clz', [0]), 0x20);
    returns('clz_2', () => m.call('clz', [0x8000]), 0x10);
    returns('clz_3', () => m.call('clz', [0xFF]), 0x18);
    returns('clz_4', () => m.call('clz', [$i32('80000000')]), 0);
    returns('clz_5', () => m.call('clz', [0x1]), 0x1F);
    returns('clz_6', () => m.call('clz', [0x2]), 0x1E);
    returns('clz_7', () => m.call('clz', [$i32('7FFFFFFF')]), 0x1);
    returns('ctz_0', () => m.call('ctz', [$i32('FFFFFFFF')]), 0);
    returns('ctz_1', () => m.call('ctz', [0]), 0x20);
    returns('ctz_2', () => m.call('ctz', [0x8000]), 0xF);
    returns('ctz_3', () => m.call('ctz', [0x10000]), 0x10);
    returns('ctz_4', () => m.call('ctz', [$i32('80000000')]), 0x1F);
    returns('ctz_5', () => m.call('ctz', [$i32('7FFFFFFF')]), 0);
    returns('popcnt_0', () => m.call('popcnt', [$i32('FFFFFFFF')]), 0x20);
    returns('popcnt_1', () => m.call('popcnt', [0]), 0);
    returns('popcnt_2', () => m.call('popcnt', [0x8000]), 0x1);
    returns('popcnt_3', () => m.call('popcnt', [$i32('80008000')]), 0x2);
    returns('popcnt_4', () => m.call('popcnt', [$i32('7FFFFFFF')]), 0x1F);
    returns('popcnt_5', () => m.call('popcnt', [$i32('AAAAAAAA')]), 0x10);
    returns('popcnt_6', () => m.call('popcnt', [$i32('55555555')]), 0x10);
    returns('popcnt_7', () => m.call('popcnt', [$i32('DEADBEEF')]), 0x18);
    returns('extend8_s_0', () => m.call('extend8_s', [0]), 0);
    returns('extend8_s_1', () => m.call('extend8_s', [0x7F]), 0x7F);
    returns('extend8_s_2', () => m.call('extend8_s', [0x80]), $i32('FFFFFF80'));
    returns('extend8_s_3', () => m.call('extend8_s', [0xFF]), $i32('FFFFFFFF'));
    returns('extend8_s_4', () => m.call('extend8_s', [$i32('1234500')]), 0);
    returns('extend8_s_5', () => m.call('extend8_s', [$i32('FEDCBA80')]),
        $i32('FFFFFF80'));
    returns('extend8_s_6', () => m.call('extend8_s', [$i32('FFFFFFFF')]),
        $i32('FFFFFFFF'));
    returns('extend16_s_0', () => m.call('extend16_s', [0]), 0);
    returns('extend16_s_1', () => m.call('extend16_s', [0x7FFF]), 0x7FFF);
    returns(
        'extend16_s_2', () => m.call('extend16_s', [0x8000]), $i32('FFFF8000'));
    returns(
        'extend16_s_3', () => m.call('extend16_s', [0xFFFF]), $i32('FFFFFFFF'));
    returns('extend16_s_4', () => m.call('extend16_s', [$i32('1230000')]), 0);
    returns('extend16_s_5', () => m.call('extend16_s', [$i32('FEDC8000')]),
        $i32('FFFF8000'));
    returns('extend16_s_6', () => m.call('extend16_s', [$i32('FFFFFFFF')]),
        $i32('FFFFFFFF'));
    returns('eqz_0', () => m.call('eqz', [0]), 0x1);
    returns('eqz_1', () => m.call('eqz', [0x1]), 0);
    returns('eqz_2', () => m.call('eqz', [$i32('80000000')]), 0);
    returns('eqz_3', () => m.call('eqz', [$i32('7FFFFFFF')]), 0);
    returns('eqz_4', () => m.call('eqz', [$i32('FFFFFFFF')]), 0);
    returns('eq_0', () => m.call('eq', [0, 0]), 0x1);
    returns('eq_1', () => m.call('eq', [0x1, 0x1]), 0x1);
    returns('eq_2', () => m.call('eq', [$i32('FFFFFFFF'), 0x1]), 0);
    returns(
        'eq_3', () => m.call('eq', [$i32('80000000'), $i32('80000000')]), 0x1);
    returns(
        'eq_4', () => m.call('eq', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0x1);
    returns(
        'eq_5', () => m.call('eq', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0x1);
    returns('eq_6', () => m.call('eq', [0x1, 0]), 0);
    returns('eq_7', () => m.call('eq', [0, 0x1]), 0);
    returns('eq_8', () => m.call('eq', [$i32('80000000'), 0]), 0);
    returns('eq_9', () => m.call('eq', [0, $i32('80000000')]), 0);
    returns(
        'eq_10', () => m.call('eq', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns(
        'eq_11', () => m.call('eq', [$i32('FFFFFFFF'), $i32('80000000')]), 0);
    returns(
        'eq_12', () => m.call('eq', [$i32('80000000'), $i32('7FFFFFFF')]), 0);
    returns(
        'eq_13', () => m.call('eq', [$i32('7FFFFFFF'), $i32('80000000')]), 0);
    returns('ne_0', () => m.call('ne', [0, 0]), 0);
    returns('ne_1', () => m.call('ne', [0x1, 0x1]), 0);
    returns('ne_2', () => m.call('ne', [$i32('FFFFFFFF'), 0x1]), 0x1);
    returns(
        'ne_3', () => m.call('ne', [$i32('80000000'), $i32('80000000')]), 0);
    returns(
        'ne_4', () => m.call('ne', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0);
    returns(
        'ne_5', () => m.call('ne', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('ne_6', () => m.call('ne', [0x1, 0]), 0x1);
    returns('ne_7', () => m.call('ne', [0, 0x1]), 0x1);
    returns('ne_8', () => m.call('ne', [$i32('80000000'), 0]), 0x1);
    returns('ne_9', () => m.call('ne', [0, $i32('80000000')]), 0x1);
    returns(
        'ne_10', () => m.call('ne', [$i32('80000000'), $i32('FFFFFFFF')]), 0x1);
    returns(
        'ne_11', () => m.call('ne', [$i32('FFFFFFFF'), $i32('80000000')]), 0x1);
    returns(
        'ne_12', () => m.call('ne', [$i32('80000000'), $i32('7FFFFFFF')]), 0x1);
    returns(
        'ne_13', () => m.call('ne', [$i32('7FFFFFFF'), $i32('80000000')]), 0x1);
    returns('lt_s_0', () => m.call('lt_s', [0, 0]), 0);
    returns('lt_s_1', () => m.call('lt_s', [0x1, 0x1]), 0);
    returns('lt_s_2', () => m.call('lt_s', [$i32('FFFFFFFF'), 0x1]), 0x1);
    returns('lt_s_3',
        () => m.call('lt_s', [$i32('80000000'), $i32('80000000')]), 0);
    returns('lt_s_4',
        () => m.call('lt_s', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0);
    returns('lt_s_5',
        () => m.call('lt_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('lt_s_6', () => m.call('lt_s', [0x1, 0]), 0);
    returns('lt_s_7', () => m.call('lt_s', [0, 0x1]), 0x1);
    returns('lt_s_8', () => m.call('lt_s', [$i32('80000000'), 0]), 0x1);
    returns('lt_s_9', () => m.call('lt_s', [0, $i32('80000000')]), 0);
    returns('lt_s_10',
        () => m.call('lt_s', [$i32('80000000'), $i32('FFFFFFFF')]), 0x1);
    returns('lt_s_11',
        () => m.call('lt_s', [$i32('FFFFFFFF'), $i32('80000000')]), 0);
    returns('lt_s_12',
        () => m.call('lt_s', [$i32('80000000'), $i32('7FFFFFFF')]), 0x1);
    returns('lt_s_13',
        () => m.call('lt_s', [$i32('7FFFFFFF'), $i32('80000000')]), 0);
    returns('lt_u_0', () => m.call('lt_u', [0, 0]), 0);
    returns('lt_u_1', () => m.call('lt_u', [0x1, 0x1]), 0);
    returns('lt_u_2', () => m.call('lt_u', [$i32('FFFFFFFF'), 0x1]), 0);
    returns('lt_u_3',
        () => m.call('lt_u', [$i32('80000000'), $i32('80000000')]), 0);
    returns('lt_u_4',
        () => m.call('lt_u', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0);
    returns('lt_u_5',
        () => m.call('lt_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('lt_u_6', () => m.call('lt_u', [0x1, 0]), 0);
    returns('lt_u_7', () => m.call('lt_u', [0, 0x1]), 0x1);
    returns('lt_u_8', () => m.call('lt_u', [$i32('80000000'), 0]), 0);
    returns('lt_u_9', () => m.call('lt_u', [0, $i32('80000000')]), 0x1);
    returns('lt_u_10',
        () => m.call('lt_u', [$i32('80000000'), $i32('FFFFFFFF')]), 0x1);
    returns('lt_u_11',
        () => m.call('lt_u', [$i32('FFFFFFFF'), $i32('80000000')]), 0);
    returns('lt_u_12',
        () => m.call('lt_u', [$i32('80000000'), $i32('7FFFFFFF')]), 0);
    returns('lt_u_13',
        () => m.call('lt_u', [$i32('7FFFFFFF'), $i32('80000000')]), 0x1);
    returns('le_s_0', () => m.call('le_s', [0, 0]), 0x1);
    returns('le_s_1', () => m.call('le_s', [0x1, 0x1]), 0x1);
    returns('le_s_2', () => m.call('le_s', [$i32('FFFFFFFF'), 0x1]), 0x1);
    returns('le_s_3',
        () => m.call('le_s', [$i32('80000000'), $i32('80000000')]), 0x1);
    returns('le_s_4',
        () => m.call('le_s', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0x1);
    returns('le_s_5',
        () => m.call('le_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0x1);
    returns('le_s_6', () => m.call('le_s', [0x1, 0]), 0);
    returns('le_s_7', () => m.call('le_s', [0, 0x1]), 0x1);
    returns('le_s_8', () => m.call('le_s', [$i32('80000000'), 0]), 0x1);
    returns('le_s_9', () => m.call('le_s', [0, $i32('80000000')]), 0);
    returns('le_s_10',
        () => m.call('le_s', [$i32('80000000'), $i32('FFFFFFFF')]), 0x1);
    returns('le_s_11',
        () => m.call('le_s', [$i32('FFFFFFFF'), $i32('80000000')]), 0);
    returns('le_s_12',
        () => m.call('le_s', [$i32('80000000'), $i32('7FFFFFFF')]), 0x1);
    returns('le_s_13',
        () => m.call('le_s', [$i32('7FFFFFFF'), $i32('80000000')]), 0);
    returns('le_u_0', () => m.call('le_u', [0, 0]), 0x1);
    returns('le_u_1', () => m.call('le_u', [0x1, 0x1]), 0x1);
    returns('le_u_2', () => m.call('le_u', [$i32('FFFFFFFF'), 0x1]), 0);
    returns('le_u_3',
        () => m.call('le_u', [$i32('80000000'), $i32('80000000')]), 0x1);
    returns('le_u_4',
        () => m.call('le_u', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0x1);
    returns('le_u_5',
        () => m.call('le_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0x1);
    returns('le_u_6', () => m.call('le_u', [0x1, 0]), 0);
    returns('le_u_7', () => m.call('le_u', [0, 0x1]), 0x1);
    returns('le_u_8', () => m.call('le_u', [$i32('80000000'), 0]), 0);
    returns('le_u_9', () => m.call('le_u', [0, $i32('80000000')]), 0x1);
    returns('le_u_10',
        () => m.call('le_u', [$i32('80000000'), $i32('FFFFFFFF')]), 0x1);
    returns('le_u_11',
        () => m.call('le_u', [$i32('FFFFFFFF'), $i32('80000000')]), 0);
    returns('le_u_12',
        () => m.call('le_u', [$i32('80000000'), $i32('7FFFFFFF')]), 0);
    returns('le_u_13',
        () => m.call('le_u', [$i32('7FFFFFFF'), $i32('80000000')]), 0x1);
    returns('gt_s_0', () => m.call('gt_s', [0, 0]), 0);
    returns('gt_s_1', () => m.call('gt_s', [0x1, 0x1]), 0);
    returns('gt_s_2', () => m.call('gt_s', [$i32('FFFFFFFF'), 0x1]), 0);
    returns('gt_s_3',
        () => m.call('gt_s', [$i32('80000000'), $i32('80000000')]), 0);
    returns('gt_s_4',
        () => m.call('gt_s', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0);
    returns('gt_s_5',
        () => m.call('gt_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('gt_s_6', () => m.call('gt_s', [0x1, 0]), 0x1);
    returns('gt_s_7', () => m.call('gt_s', [0, 0x1]), 0);
    returns('gt_s_8', () => m.call('gt_s', [$i32('80000000'), 0]), 0);
    returns('gt_s_9', () => m.call('gt_s', [0, $i32('80000000')]), 0x1);
    returns('gt_s_10',
        () => m.call('gt_s', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns('gt_s_11',
        () => m.call('gt_s', [$i32('FFFFFFFF'), $i32('80000000')]), 0x1);
    returns('gt_s_12',
        () => m.call('gt_s', [$i32('80000000'), $i32('7FFFFFFF')]), 0);
    returns('gt_s_13',
        () => m.call('gt_s', [$i32('7FFFFFFF'), $i32('80000000')]), 0x1);
    returns('gt_u_0', () => m.call('gt_u', [0, 0]), 0);
    returns('gt_u_1', () => m.call('gt_u', [0x1, 0x1]), 0);
    returns('gt_u_2', () => m.call('gt_u', [$i32('FFFFFFFF'), 0x1]), 0x1);
    returns('gt_u_3',
        () => m.call('gt_u', [$i32('80000000'), $i32('80000000')]), 0);
    returns('gt_u_4',
        () => m.call('gt_u', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0);
    returns('gt_u_5',
        () => m.call('gt_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0);
    returns('gt_u_6', () => m.call('gt_u', [0x1, 0]), 0x1);
    returns('gt_u_7', () => m.call('gt_u', [0, 0x1]), 0);
    returns('gt_u_8', () => m.call('gt_u', [$i32('80000000'), 0]), 0x1);
    returns('gt_u_9', () => m.call('gt_u', [0, $i32('80000000')]), 0);
    returns('gt_u_10',
        () => m.call('gt_u', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns('gt_u_11',
        () => m.call('gt_u', [$i32('FFFFFFFF'), $i32('80000000')]), 0x1);
    returns('gt_u_12',
        () => m.call('gt_u', [$i32('80000000'), $i32('7FFFFFFF')]), 0x1);
    returns('gt_u_13',
        () => m.call('gt_u', [$i32('7FFFFFFF'), $i32('80000000')]), 0);
    returns('ge_s_0', () => m.call('ge_s', [0, 0]), 0x1);
    returns('ge_s_1', () => m.call('ge_s', [0x1, 0x1]), 0x1);
    returns('ge_s_2', () => m.call('ge_s', [$i32('FFFFFFFF'), 0x1]), 0);
    returns('ge_s_3',
        () => m.call('ge_s', [$i32('80000000'), $i32('80000000')]), 0x1);
    returns('ge_s_4',
        () => m.call('ge_s', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0x1);
    returns('ge_s_5',
        () => m.call('ge_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0x1);
    returns('ge_s_6', () => m.call('ge_s', [0x1, 0]), 0x1);
    returns('ge_s_7', () => m.call('ge_s', [0, 0x1]), 0);
    returns('ge_s_8', () => m.call('ge_s', [$i32('80000000'), 0]), 0);
    returns('ge_s_9', () => m.call('ge_s', [0, $i32('80000000')]), 0x1);
    returns('ge_s_10',
        () => m.call('ge_s', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns('ge_s_11',
        () => m.call('ge_s', [$i32('FFFFFFFF'), $i32('80000000')]), 0x1);
    returns('ge_s_12',
        () => m.call('ge_s', [$i32('80000000'), $i32('7FFFFFFF')]), 0);
    returns('ge_s_13',
        () => m.call('ge_s', [$i32('7FFFFFFF'), $i32('80000000')]), 0x1);
    returns('ge_u_0', () => m.call('ge_u', [0, 0]), 0x1);
    returns('ge_u_1', () => m.call('ge_u', [0x1, 0x1]), 0x1);
    returns('ge_u_2', () => m.call('ge_u', [$i32('FFFFFFFF'), 0x1]), 0x1);
    returns('ge_u_3',
        () => m.call('ge_u', [$i32('80000000'), $i32('80000000')]), 0x1);
    returns('ge_u_4',
        () => m.call('ge_u', [$i32('7FFFFFFF'), $i32('7FFFFFFF')]), 0x1);
    returns('ge_u_5',
        () => m.call('ge_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')]), 0x1);
    returns('ge_u_6', () => m.call('ge_u', [0x1, 0]), 0x1);
    returns('ge_u_7', () => m.call('ge_u', [0, 0x1]), 0);
    returns('ge_u_8', () => m.call('ge_u', [$i32('80000000'), 0]), 0x1);
    returns('ge_u_9', () => m.call('ge_u', [0, $i32('80000000')]), 0);
    returns('ge_u_10',
        () => m.call('ge_u', [$i32('80000000'), $i32('FFFFFFFF')]), 0);
    returns('ge_u_11',
        () => m.call('ge_u', [$i32('FFFFFFFF'), $i32('80000000')]), 0x1);
    returns('ge_u_12',
        () => m.call('ge_u', [$i32('80000000'), $i32('7FFFFFFF')]), 0x1);
    returns('ge_u_13',
        () => m.call('ge_u', [$i32('7FFFFFFF'), $i32('80000000')]), 0);
  });
}
