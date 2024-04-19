// Generated from spec/test/core/i64.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('i64', () {
    group('i64.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/i64/i64.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('add_0', () => m.$('add', [1, 1]), 2);
      returns('add_1', () => m.$('add', [1, 0]), 1);
      returns(
          'add_2',
          () =>
              m.$('add', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          $i64('FFFFFFFFFFFFFFFE'));
      returns('add_3', () => m.$('add', [$i64('FFFFFFFFFFFFFFFF'), 1]), 0);
      returns('add_4', () => m.$('add', [$i64('7FFFFFFFFFFFFFFF'), 1]),
          $i64('8000000000000000'));
      returns(
          'add_5',
          () =>
              m.$('add', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          $i64('7FFFFFFFFFFFFFFF'));
      returns(
          'add_6',
          () =>
              m.$('add', [$i64('8000000000000000'), $i64('8000000000000000')]),
          0);
      returns(
          'add_7', () => m.$('add', [$i64('3FFFFFFF'), 1]), $i64('40000000'));
      returns('sub_0', () => m.$('sub', [1, 1]), 0);
      returns('sub_1', () => m.$('sub', [1, 0]), 1);
      returns(
          'sub_2',
          () =>
              m.$('sub', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns(
          'sub_3',
          () =>
              m.$('sub', [$i64('7FFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          $i64('8000000000000000'));
      returns('sub_4', () => m.$('sub', [$i64('8000000000000000'), 1]),
          $i64('7FFFFFFFFFFFFFFF'));
      returns(
          'sub_5',
          () =>
              m.$('sub', [$i64('8000000000000000'), $i64('8000000000000000')]),
          0);
      returns(
          'sub_6',
          () => m.$('sub', [$i64('3FFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          $i64('40000000'));
      returns('mul_0', () => m.$('mul', [1, 1]), 1);
      returns('mul_1', () => m.$('mul', [1, 0]), 0);
      returns(
          'mul_2',
          () =>
              m.$('mul', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns('mul_3', () => m.$('mul', [$i64('1000000000000000'), 0x1000]), 0);
      returns('mul_4', () => m.$('mul', [$i64('8000000000000000'), 0]), 0);
      returns(
          'mul_5',
          () =>
              m.$('mul', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          $i64('8000000000000000'));
      returns(
          'mul_6',
          () =>
              m.$('mul', [$i64('7FFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          $i64('8000000000000001'));
      returns(
          'mul_7',
          () => m.$('mul', [$i64('123456789ABCDEF'), $i64('FEDCBA9876543210')]),
          $i64('2236D88FE5618CF0'));
      returns(
          'mul_8',
          () =>
              m.$('mul', [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          1);
      traps('div_s_0', () => m.$('div_s', [1, 0]), 'integer divide by zero');
      traps('div_s_1', () => m.$('div_s', [0, 0]), 'integer divide by zero');
      traps(
        'div_s_2',
        () =>
            m.$('div_s', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
        'integer overflow',
        skip: 'failed',
      );
      traps('div_s_3', () => m.$('div_s', [$i64('8000000000000000'), 0]),
          'integer divide by zero');
      returns('div_s_4', () => m.$('div_s', [1, 1]), 1);
      returns('div_s_5', () => m.$('div_s', [0, 1]), 0);
      returns('div_s_6', () => m.$('div_s', [0, $i64('FFFFFFFFFFFFFFFF')]), 0);
      returns(
          'div_s_7',
          () => m
              .$('div_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns('div_s_8', () => m.$('div_s', [$i64('8000000000000000'), 2]),
          $i64('C000000000000000'));
      returns('div_s_9', () => m.$('div_s', [$i64('8000000000000001'), 0x3E8]),
          $i64('FFDF3B645A1CAC09'));
      returns('div_s_10', () => m.$('div_s', [5, 2]), 2);
      returns('div_s_11', () => m.$('div_s', [$i64('FFFFFFFFFFFFFFFB'), 2]),
          $i64('FFFFFFFFFFFFFFFE'));
      returns('div_s_12', () => m.$('div_s', [5, $i64('FFFFFFFFFFFFFFFE')]),
          $i64('FFFFFFFFFFFFFFFE'));
      returns(
          'div_s_13',
          () => m
              .$('div_s', [$i64('FFFFFFFFFFFFFFFB'), $i64('FFFFFFFFFFFFFFFE')]),
          2);
      returns('div_s_14', () => m.$('div_s', [7, 3]), 2);
      returns('div_s_15', () => m.$('div_s', [$i64('FFFFFFFFFFFFFFF9'), 3]),
          $i64('FFFFFFFFFFFFFFFE'));
      returns('div_s_16', () => m.$('div_s', [7, $i64('FFFFFFFFFFFFFFFD')]),
          $i64('FFFFFFFFFFFFFFFE'));
      returns(
          'div_s_17',
          () => m
              .$('div_s', [$i64('FFFFFFFFFFFFFFF9'), $i64('FFFFFFFFFFFFFFFD')]),
          2);
      returns('div_s_18', () => m.$('div_s', [0xB, 5]), 2);
      returns('div_s_19', () => m.$('div_s', [0x11, 7]), 2);
      traps('div_u_0', () => m.$('div_u', [1, 0]), 'integer divide by zero');
      traps('div_u_1', () => m.$('div_u', [0, 0]), 'integer divide by zero');
      returns('div_u_2', () => m.$('div_u', [1, 1]), 1);
      returns('div_u_3', () => m.$('div_u', [0, 1]), 0);
      returns(
          'div_u_4',
          () => m
              .$('div_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns(
        'div_u_5',
        () =>
            m.$('div_u', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
        0,
        skip: 'failed',
      );
      returns(
        'div_u_6',
        () => m.$('div_u', [$i64('8000000000000000'), 2]),
        $i64('4000000000000000'),
        skip: 'failed',
      );
      returns(
        'div_u_7',
        () => m.$('div_u', [$i64('8FF00FF00FF00FF0'), $i64('100000001')]),
        $i64('8FF00FEF'),
        skip: 'failed',
      );
      returns(
        'div_u_8',
        () => m.$('div_u', [$i64('8000000000000001'), 0x3E8]),
        $i64('20C49BA5E353F7'),
        skip: 'failed',
      );
      returns('div_u_9', () => m.$('div_u', [5, 2]), 2);
      returns(
        'div_u_10',
        () => m.$('div_u', [$i64('FFFFFFFFFFFFFFFB'), 2]),
        $i64('7FFFFFFFFFFFFFFD'),
        skip: 'failed',
      );
      returns(
        'div_u_11',
        () => m.$('div_u', [5, $i64('FFFFFFFFFFFFFFFE')]),
        0,
        skip: 'failed',
      );
      returns(
        'div_u_12',
        () =>
            m.$('div_u', [$i64('FFFFFFFFFFFFFFFB'), $i64('FFFFFFFFFFFFFFFE')]),
        0,
        skip: 'failed',
      );
      returns('div_u_13', () => m.$('div_u', [7, 3]), 2);
      returns('div_u_14', () => m.$('div_u', [0xB, 5]), 2);
      returns('div_u_15', () => m.$('div_u', [0x11, 7]), 2);
      traps('rem_s_0', () => m.$('rem_s', [1, 0]), 'integer divide by zero');
      traps('rem_s_1', () => m.$('rem_s', [0, 0]), 'integer divide by zero');
      returns(
          'rem_s_2',
          () => m
              .$('rem_s', [$i64('7FFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns('rem_s_3', () => m.$('rem_s', [1, 1]), 0);
      returns('rem_s_4', () => m.$('rem_s', [0, 1]), 0);
      returns('rem_s_5', () => m.$('rem_s', [0, $i64('FFFFFFFFFFFFFFFF')]), 0);
      returns(
          'rem_s_6',
          () => m
              .$('rem_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns(
          'rem_s_7',
          () => m
              .$('rem_s', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns('rem_s_8', () => m.$('rem_s', [$i64('8000000000000000'), 2]), 0);
      returns('rem_s_9', () => m.$('rem_s', [$i64('8000000000000001'), 0x3E8]),
          $i64('FFFFFFFFFFFFFCD9'));
      returns('rem_s_10', () => m.$('rem_s', [5, 2]), 1);
      returns('rem_s_11', () => m.$('rem_s', [$i64('FFFFFFFFFFFFFFFB'), 2]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('rem_s_12', () => m.$('rem_s', [5, $i64('FFFFFFFFFFFFFFFE')]), 1);
      returns(
          'rem_s_13',
          () => m
              .$('rem_s', [$i64('FFFFFFFFFFFFFFFB'), $i64('FFFFFFFFFFFFFFFE')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('rem_s_14', () => m.$('rem_s', [7, 3]), 1);
      returns('rem_s_15', () => m.$('rem_s', [$i64('FFFFFFFFFFFFFFF9'), 3]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('rem_s_16', () => m.$('rem_s', [7, $i64('FFFFFFFFFFFFFFFD')]), 1);
      returns(
          'rem_s_17',
          () => m
              .$('rem_s', [$i64('FFFFFFFFFFFFFFF9'), $i64('FFFFFFFFFFFFFFFD')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('rem_s_18', () => m.$('rem_s', [0xB, 5]), 1);
      returns('rem_s_19', () => m.$('rem_s', [0x11, 7]), 3);
      traps('rem_u_0', () => m.$('rem_u', [1, 0]), 'integer divide by zero');
      traps('rem_u_1', () => m.$('rem_u', [0, 0]), 'integer divide by zero');
      returns('rem_u_2', () => m.$('rem_u', [1, 1]), 0);
      returns('rem_u_3', () => m.$('rem_u', [0, 1]), 0);
      returns(
          'rem_u_4',
          () => m
              .$('rem_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns(
        'rem_u_5',
        () =>
            m.$('rem_u', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
        $i64('8000000000000000'),
        skip: 'failed',
      );
      returns('rem_u_6', () => m.$('rem_u', [$i64('8000000000000000'), 2]), 0);
      returns(
        'rem_u_7',
        () => m.$('rem_u', [$i64('8FF00FF00FF00FF0'), $i64('100000001')]),
        $i64('80000001'),
        skip: 'failed',
      );
      returns(
        'rem_u_8',
        () => m.$('rem_u', [$i64('8000000000000001'), 0x3E8]),
        0x329,
        skip: 'failed',
      );
      returns('rem_u_9', () => m.$('rem_u', [5, 2]), 1);
      returns(
        'rem_u_10',
        () => m.$('rem_u', [$i64('FFFFFFFFFFFFFFFB'), 2]),
        1,
        skip: 'failed',
      );
      returns(
        'rem_u_11',
        () => m.$('rem_u', [5, $i64('FFFFFFFFFFFFFFFE')]),
        5,
        skip: 'failed',
      );
      returns(
        'rem_u_12',
        () =>
            m.$('rem_u', [$i64('FFFFFFFFFFFFFFFB'), $i64('FFFFFFFFFFFFFFFE')]),
        $i64('FFFFFFFFFFFFFFFB'),
        skip: 'failed',
      );
      returns('rem_u_13', () => m.$('rem_u', [7, 3]), 1);
      returns('rem_u_14', () => m.$('rem_u', [0xB, 5]), 1);
      returns('rem_u_15', () => m.$('rem_u', [0x11, 7]), 3);
      returns('and_0', () => m.$('and', [1, 0]), 0);
      returns('and_1', () => m.$('and', [0, 1]), 0);
      returns('and_2', () => m.$('and', [1, 1]), 1);
      returns('and_3', () => m.$('and', [0, 0]), 0);
      returns(
          'and_4',
          () =>
              m.$('and', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          0);
      returns(
          'and_5',
          () =>
              m.$('and', [$i64('7FFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          $i64('7FFFFFFFFFFFFFFF'));
      returns('and_6', () => m.$('and', [$i64('F0F0FFFF'), $i64('FFFFF0F0')]),
          $i64('F0F0F0F0'));
      returns(
          'and_7',
          () =>
              m.$('and', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('or_0', () => m.$('or', [1, 0]), 1);
      returns('or_1', () => m.$('or', [0, 1]), 1);
      returns('or_2', () => m.$('or', [1, 1]), 1);
      returns('or_3', () => m.$('or', [0, 0]), 0);
      returns(
          'or_4',
          () => m.$('or', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('or_5', () => m.$('or', [$i64('8000000000000000'), 0]),
          $i64('8000000000000000'));
      returns('or_6', () => m.$('or', [$i64('F0F0FFFF'), $i64('FFFFF0F0')]),
          $i64('FFFFFFFF'));
      returns(
          'or_7',
          () => m.$('or', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('xor_0', () => m.$('xor', [1, 0]), 1);
      returns('xor_1', () => m.$('xor', [0, 1]), 1);
      returns('xor_2', () => m.$('xor', [1, 1]), 0);
      returns('xor_3', () => m.$('xor', [0, 0]), 0);
      returns(
          'xor_4',
          () =>
              m.$('xor', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('xor_5', () => m.$('xor', [$i64('8000000000000000'), 0]),
          $i64('8000000000000000'));
      returns(
          'xor_6',
          () =>
              m.$('xor', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          $i64('7FFFFFFFFFFFFFFF'));
      returns(
          'xor_7',
          () =>
              m.$('xor', [$i64('FFFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          $i64('8000000000000000'));
      returns('xor_8', () => m.$('xor', [$i64('F0F0FFFF'), $i64('FFFFF0F0')]),
          $i64('F0F0F0F'));
      returns(
          'xor_9',
          () =>
              m.$('xor', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns('shl_0', () => m.$('shl', [1, 1]), 2);
      returns('shl_1', () => m.$('shl', [1, 0]), 1);
      returns('shl_2', () => m.$('shl', [$i64('7FFFFFFFFFFFFFFF'), 1]),
          $i64('FFFFFFFFFFFFFFFE'));
      returns('shl_3', () => m.$('shl', [$i64('FFFFFFFFFFFFFFFF'), 1]),
          $i64('FFFFFFFFFFFFFFFE'));
      returns('shl_4', () => m.$('shl', [$i64('8000000000000000'), 1]), 0);
      returns('shl_5', () => m.$('shl', [$i64('4000000000000000'), 1]),
          $i64('8000000000000000'));
      returns('shl_6', () => m.$('shl', [1, 0x3F]), $i64('8000000000000000'));
      returns('shl_7', () => m.$('shl', [1, 0x40]), 1);
      returns('shl_8', () => m.$('shl', [1, 0x41]), 2);
      returns('shl_9', () => m.$('shl', [1, $i64('FFFFFFFFFFFFFFFF')]),
          $i64('8000000000000000'));
      returns('shl_10', () => m.$('shl', [1, $i64('7FFFFFFFFFFFFFFF')]),
          $i64('8000000000000000'));
      returns('shr_s_0', () => m.$('shr_s', [1, 1]), 0);
      returns('shr_s_1', () => m.$('shr_s', [1, 0]), 1);
      returns('shr_s_2', () => m.$('shr_s', [$i64('FFFFFFFFFFFFFFFF'), 1]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('shr_s_3', () => m.$('shr_s', [$i64('7FFFFFFFFFFFFFFF'), 1]),
          $i64('3FFFFFFFFFFFFFFF'));
      returns('shr_s_4', () => m.$('shr_s', [$i64('8000000000000000'), 1]),
          $i64('C000000000000000'));
      returns('shr_s_5', () => m.$('shr_s', [$i64('4000000000000000'), 1]),
          $i64('2000000000000000'));
      returns('shr_s_6', () => m.$('shr_s', [1, 0x40]), 1);
      returns('shr_s_7', () => m.$('shr_s', [1, 0x41]), 0);
      returns('shr_s_8', () => m.$('shr_s', [1, $i64('FFFFFFFFFFFFFFFF')]), 0);
      returns('shr_s_9', () => m.$('shr_s', [1, $i64('7FFFFFFFFFFFFFFF')]), 0);
      returns('shr_s_10', () => m.$('shr_s', [1, $i64('8000000000000000')]), 1);
      returns('shr_s_11', () => m.$('shr_s', [$i64('8000000000000000'), 0x3F]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('shr_s_12', () => m.$('shr_s', [$i64('FFFFFFFFFFFFFFFF'), 0x40]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('shr_s_13', () => m.$('shr_s', [$i64('FFFFFFFFFFFFFFFF'), 0x41]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns(
          'shr_s_14',
          () => m
              .$('shr_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns(
          'shr_s_15',
          () => m
              .$('shr_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns(
          'shr_s_16',
          () => m
              .$('shr_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('shr_u_0', () => m.$('shr_u', [1, 1]), 0);
      returns('shr_u_1', () => m.$('shr_u', [1, 0]), 1);
      returns('shr_u_2', () => m.$('shr_u', [$i64('FFFFFFFFFFFFFFFF'), 1]),
          $i64('7FFFFFFFFFFFFFFF'));
      returns('shr_u_3', () => m.$('shr_u', [$i64('7FFFFFFFFFFFFFFF'), 1]),
          $i64('3FFFFFFFFFFFFFFF'));
      returns('shr_u_4', () => m.$('shr_u', [$i64('8000000000000000'), 1]),
          $i64('4000000000000000'));
      returns('shr_u_5', () => m.$('shr_u', [$i64('4000000000000000'), 1]),
          $i64('2000000000000000'));
      returns('shr_u_6', () => m.$('shr_u', [1, 0x40]), 1);
      returns('shr_u_7', () => m.$('shr_u', [1, 0x41]), 0);
      returns('shr_u_8', () => m.$('shr_u', [1, $i64('FFFFFFFFFFFFFFFF')]), 0);
      returns('shr_u_9', () => m.$('shr_u', [1, $i64('7FFFFFFFFFFFFFFF')]), 0);
      returns('shr_u_10', () => m.$('shr_u', [1, $i64('8000000000000000')]), 1);
      returns(
          'shr_u_11', () => m.$('shr_u', [$i64('8000000000000000'), 0x3F]), 1);
      returns('shr_u_12', () => m.$('shr_u', [$i64('FFFFFFFFFFFFFFFF'), 0x40]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('shr_u_13', () => m.$('shr_u', [$i64('FFFFFFFFFFFFFFFF'), 0x41]),
          $i64('7FFFFFFFFFFFFFFF'));
      returns(
          'shr_u_14',
          () => m
              .$('shr_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns(
          'shr_u_15',
          () => m
              .$('shr_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          1);
      returns(
          'shr_u_16',
          () => m
              .$('shr_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('rotl_0', () => m.$('rotl', [1, 1]), 2);
      returns('rotl_1', () => m.$('rotl', [1, 0]), 1);
      returns('rotl_2', () => m.$('rotl', [$i64('FFFFFFFFFFFFFFFF'), 1]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('rotl_3', () => m.$('rotl', [1, 0x40]), 1);
      returns('rotl_4', () => m.$('rotl', [$i64('ABCD987602468ACE'), 1]),
          $i64('579B30EC048D159D'));
      returns('rotl_5', () => m.$('rotl', [$i64('FE000000DC000000'), 4]),
          $i64('E000000DC000000F'));
      returns('rotl_6', () => m.$('rotl', [$i64('ABCD1234EF567809'), 0x35]),
          $i64('13579A2469DEACF'));
      returns('rotl_7', () => m.$('rotl', [$i64('ABD1234EF567809C'), 0x3F]),
          $i64('55E891A77AB3C04E'));
      returns('rotl_8', () => m.$('rotl', [$i64('ABCD1234EF567809'), 0xF5]),
          $i64('13579A2469DEACF'));
      returns(
          'rotl_9',
          () =>
              m.$('rotl', [$i64('ABCD7294EF567809'), $i64('FFFFFFFFFFFFFFED')]),
          $i64('CF013579AE529DEA'));
      returns(
          'rotl_10',
          () =>
              m.$('rotl', [$i64('ABD1234EF567809C'), $i64('800000000000003F')]),
          $i64('55E891A77AB3C04E'));
      returns(
          'rotl_11', () => m.$('rotl', [1, 0x3F]), $i64('8000000000000000'));
      returns('rotl_12', () => m.$('rotl', [$i64('8000000000000000'), 1]), 1);
      returns('rotr_0', () => m.$('rotr', [1, 1]), $i64('8000000000000000'));
      returns('rotr_1', () => m.$('rotr', [1, 0]), 1);
      returns('rotr_2', () => m.$('rotr', [$i64('FFFFFFFFFFFFFFFF'), 1]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('rotr_3', () => m.$('rotr', [1, 0x40]), 1);
      returns('rotr_4', () => m.$('rotr', [$i64('ABCD987602468ACE'), 1]),
          $i64('55E6CC3B01234567'));
      returns('rotr_5', () => m.$('rotr', [$i64('FE000000DC000000'), 4]),
          $i64('FE000000DC00000'));
      returns('rotr_6', () => m.$('rotr', [$i64('ABCD1234EF567809'), 0x35]),
          $i64('6891A77AB3C04D5E'));
      returns('rotr_7', () => m.$('rotr', [$i64('ABD1234EF567809C'), 0x3F]),
          $i64('57A2469DEACF0139'));
      returns('rotr_8', () => m.$('rotr', [$i64('ABCD1234EF567809'), 0xF5]),
          $i64('6891A77AB3C04D5E'));
      returns(
          'rotr_9',
          () =>
              m.$('rotr', [$i64('ABCD7294EF567809'), $i64('FFFFFFFFFFFFFFED')]),
          $i64('94A77AB3C04D5E6B'));
      returns(
          'rotr_10',
          () =>
              m.$('rotr', [$i64('ABD1234EF567809C'), $i64('800000000000003F')]),
          $i64('57A2469DEACF0139'));
      returns('rotr_11', () => m.$('rotr', [1, 0x3F]), 2);
      returns(
          'rotr_12', () => m.$('rotr', [$i64('8000000000000000'), 0x3F]), 1);
      returns('clz_0', () => m.$('clz', [$i64('FFFFFFFFFFFFFFFF')]), 0);
      returns('clz_1', () => m.$('clz', [0]), 0x40);
      returns('clz_2', () => m.$('clz', [0x8000]), 0x30);
      returns('clz_3', () => m.$('clz', [0xFF]), 0x38);
      returns('clz_4', () => m.$('clz', [$i64('8000000000000000')]), 0);
      returns('clz_5', () => m.$('clz', [1]), 0x3F);
      returns('clz_6', () => m.$('clz', [2]), 0x3E);
      returns('clz_7', () => m.$('clz', [$i64('7FFFFFFFFFFFFFFF')]), 1);
      returns('ctz_0', () => m.$('ctz', [$i64('FFFFFFFFFFFFFFFF')]), 0);
      returns('ctz_1', () => m.$('ctz', [0]), 0x40);
      returns('ctz_2', () => m.$('ctz', [0x8000]), 0xF);
      returns('ctz_3', () => m.$('ctz', [0x10000]), 0x10);
      returns('ctz_4', () => m.$('ctz', [$i64('8000000000000000')]), 0x3F);
      returns('ctz_5', () => m.$('ctz', [$i64('7FFFFFFFFFFFFFFF')]), 0);
      returns(
          'popcnt_0', () => m.$('popcnt', [$i64('FFFFFFFFFFFFFFFF')]), 0x40);
      returns('popcnt_1', () => m.$('popcnt', [0]), 0);
      returns('popcnt_2', () => m.$('popcnt', [0x8000]), 1);
      returns('popcnt_3', () => m.$('popcnt', [$i64('8000800080008000')]), 4);
      returns(
          'popcnt_4', () => m.$('popcnt', [$i64('7FFFFFFFFFFFFFFF')]), 0x3F);
      returns(
          'popcnt_5', () => m.$('popcnt', [$i64('AAAAAAAA55555555')]), 0x20);
      returns(
          'popcnt_6', () => m.$('popcnt', [$i64('99999999AAAAAAAA')]), 0x20);
      returns(
          'popcnt_7', () => m.$('popcnt', [$i64('DEADBEEFDEADBEEF')]), 0x30);
      returns('extend8_s_0', () => m.$('extend8_s', [0]), 0);
      returns('extend8_s_1', () => m.$('extend8_s', [0x7F]), 0x7F);
      returns('extend8_s_2', () => m.$('extend8_s', [0x80]),
          $i64('FFFFFFFFFFFFFF80'));
      returns('extend8_s_3', () => m.$('extend8_s', [0xFF]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns(
          'extend8_s_4', () => m.$('extend8_s', [$i64('123456789ABCD00')]), 0);
      returns('extend8_s_5', () => m.$('extend8_s', [$i64('FEDCBA9876543280')]),
          $i64('FFFFFFFFFFFFFF80'));
      returns('extend8_s_6', () => m.$('extend8_s', [$i64('FFFFFFFFFFFFFFFF')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('extend16_s_0', () => m.$('extend16_s', [0]), 0);
      returns('extend16_s_1', () => m.$('extend16_s', [0x7FFF]), 0x7FFF);
      returns('extend16_s_2', () => m.$('extend16_s', [0x8000]),
          $i64('FFFFFFFFFFFF8000'));
      returns('extend16_s_3', () => m.$('extend16_s', [0xFFFF]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('extend16_s_4',
          () => m.$('extend16_s', [$i64('123456789ABC0000')]), 0);
      returns(
          'extend16_s_5',
          () => m.$('extend16_s', [$i64('FEDCBA9876548000')]),
          $i64('FFFFFFFFFFFF8000'));
      returns(
          'extend16_s_6',
          () => m.$('extend16_s', [$i64('FFFFFFFFFFFFFFFF')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('extend32_s_0', () => m.$('extend32_s', [0]), 0);
      returns('extend32_s_1', () => m.$('extend32_s', [0x7FFF]), 0x7FFF);
      returns('extend32_s_2', () => m.$('extend32_s', [0x8000]), 0x8000);
      returns('extend32_s_3', () => m.$('extend32_s', [0xFFFF]), 0xFFFF);
      returns('extend32_s_4', () => m.$('extend32_s', [$i64('7FFFFFFF')]),
          $i64('7FFFFFFF'));
      returns('extend32_s_5', () => m.$('extend32_s', [$i64('80000000')]),
          $i64('FFFFFFFF80000000'));
      returns('extend32_s_6', () => m.$('extend32_s', [$i64('FFFFFFFF')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('extend32_s_7',
          () => m.$('extend32_s', [$i64('123456700000000')]), 0);
      returns(
          'extend32_s_8',
          () => m.$('extend32_s', [$i64('FEDCBA9880000000')]),
          $i64('FFFFFFFF80000000'));
      returns(
          'extend32_s_9',
          () => m.$('extend32_s', [$i64('FFFFFFFFFFFFFFFF')]),
          $i64('FFFFFFFFFFFFFFFF'));
      returns('eqz_0', () => m.$('eqz', [0]), 1);
      returns('eqz_1', () => m.$('eqz', [1]), 0);
      returns('eqz_2', () => m.$('eqz', [$i64('8000000000000000')]), 0);
      returns('eqz_3', () => m.$('eqz', [$i64('7FFFFFFFFFFFFFFF')]), 0);
      returns('eqz_4', () => m.$('eqz', [$i64('FFFFFFFFFFFFFFFF')]), 0);
      returns('eq_0', () => m.$('eq', [0, 0]), 1);
      returns('eq_1', () => m.$('eq', [1, 1]), 1);
      returns('eq_2', () => m.$('eq', [$i64('FFFFFFFFFFFFFFFF'), 1]), 0);
      returns(
          'eq_3',
          () => m.$('eq', [$i64('8000000000000000'), $i64('8000000000000000')]),
          1);
      returns(
          'eq_4',
          () => m.$('eq', [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          1);
      returns(
          'eq_5',
          () => m.$('eq', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns('eq_6', () => m.$('eq', [1, 0]), 0);
      returns('eq_7', () => m.$('eq', [0, 1]), 0);
      returns('eq_8', () => m.$('eq', [$i64('8000000000000000'), 0]), 0);
      returns('eq_9', () => m.$('eq', [0, $i64('8000000000000000')]), 0);
      returns(
          'eq_10',
          () => m.$('eq', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns(
          'eq_11',
          () => m.$('eq', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          0);
      returns(
          'eq_12',
          () => m.$('eq', [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')]),
          0);
      returns(
          'eq_13',
          () => m.$('eq', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          0);
      returns('ne_0', () => m.$('ne', [0, 0]), 0);
      returns('ne_1', () => m.$('ne', [1, 1]), 0);
      returns('ne_2', () => m.$('ne', [$i64('FFFFFFFFFFFFFFFF'), 1]), 1);
      returns(
          'ne_3',
          () => m.$('ne', [$i64('8000000000000000'), $i64('8000000000000000')]),
          0);
      returns(
          'ne_4',
          () => m.$('ne', [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          0);
      returns(
          'ne_5',
          () => m.$('ne', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns('ne_6', () => m.$('ne', [1, 0]), 1);
      returns('ne_7', () => m.$('ne', [0, 1]), 1);
      returns('ne_8', () => m.$('ne', [$i64('8000000000000000'), 0]), 1);
      returns('ne_9', () => m.$('ne', [0, $i64('8000000000000000')]), 1);
      returns(
          'ne_10',
          () => m.$('ne', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns(
          'ne_11',
          () => m.$('ne', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          1);
      returns(
          'ne_12',
          () => m.$('ne', [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')]),
          1);
      returns(
          'ne_13',
          () => m.$('ne', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          1);
      returns('lt_s_0', () => m.$('lt_s', [0, 0]), 0);
      returns('lt_s_1', () => m.$('lt_s', [1, 1]), 0);
      returns('lt_s_2', () => m.$('lt_s', [$i64('FFFFFFFFFFFFFFFF'), 1]), 1);
      returns(
          'lt_s_3',
          () =>
              m.$('lt_s', [$i64('8000000000000000'), $i64('8000000000000000')]),
          0);
      returns(
          'lt_s_4',
          () =>
              m.$('lt_s', [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          0);
      returns(
          'lt_s_5',
          () =>
              m.$('lt_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns('lt_s_6', () => m.$('lt_s', [1, 0]), 0);
      returns('lt_s_7', () => m.$('lt_s', [0, 1]), 1);
      returns('lt_s_8', () => m.$('lt_s', [$i64('8000000000000000'), 0]), 1);
      returns('lt_s_9', () => m.$('lt_s', [0, $i64('8000000000000000')]), 0);
      returns(
          'lt_s_10',
          () =>
              m.$('lt_s', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns(
          'lt_s_11',
          () =>
              m.$('lt_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          0);
      returns(
          'lt_s_12',
          () =>
              m.$('lt_s', [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')]),
          1);
      returns(
          'lt_s_13',
          () =>
              m.$('lt_s', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          0);
      returns('lt_u_0', () => m.$('lt_u', [0, 0]), 0);
      returns('lt_u_1', () => m.$('lt_u', [1, 1]), 0);
      returns(
        'lt_u_2',
        () => m.$('lt_u', [$i64('FFFFFFFFFFFFFFFF'), 1]),
        0,
        skip: 'failed',
      );
      returns(
          'lt_u_3',
          () =>
              m.$('lt_u', [$i64('8000000000000000'), $i64('8000000000000000')]),
          0);
      returns(
          'lt_u_4',
          () =>
              m.$('lt_u', [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          0);
      returns(
          'lt_u_5',
          () =>
              m.$('lt_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns('lt_u_6', () => m.$('lt_u', [1, 0]), 0);
      returns('lt_u_7', () => m.$('lt_u', [0, 1]), 1);
      returns(
        'lt_u_8',
        () => m.$('lt_u', [$i64('8000000000000000'), 0]),
        0,
        skip: 'failed',
      );
      returns(
        'lt_u_9',
        () => m.$('lt_u', [0, $i64('8000000000000000')]),
        1,
        skip: 'failed',
      );
      returns(
          'lt_u_10',
          () =>
              m.$('lt_u', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns(
          'lt_u_11',
          () =>
              m.$('lt_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          0);
      returns(
        'lt_u_12',
        () => m.$('lt_u', [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')]),
        0,
        skip: 'failed',
      );
      returns(
        'lt_u_13',
        () => m.$('lt_u', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
        1,
        skip: 'failed',
      );
      returns('le_s_0', () => m.$('le_s', [0, 0]), 1);
      returns('le_s_1', () => m.$('le_s', [1, 1]), 1);
      returns('le_s_2', () => m.$('le_s', [$i64('FFFFFFFFFFFFFFFF'), 1]), 1);
      returns(
          'le_s_3',
          () =>
              m.$('le_s', [$i64('8000000000000000'), $i64('8000000000000000')]),
          1);
      returns(
          'le_s_4',
          () =>
              m.$('le_s', [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          1);
      returns(
          'le_s_5',
          () =>
              m.$('le_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns('le_s_6', () => m.$('le_s', [1, 0]), 0);
      returns('le_s_7', () => m.$('le_s', [0, 1]), 1);
      returns('le_s_8', () => m.$('le_s', [$i64('8000000000000000'), 0]), 1);
      returns('le_s_9', () => m.$('le_s', [0, $i64('8000000000000000')]), 0);
      returns(
          'le_s_10',
          () =>
              m.$('le_s', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns(
          'le_s_11',
          () =>
              m.$('le_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          0);
      returns(
          'le_s_12',
          () =>
              m.$('le_s', [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')]),
          1);
      returns(
          'le_s_13',
          () =>
              m.$('le_s', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          0);
      returns('le_u_0', () => m.$('le_u', [0, 0]), 1);
      returns('le_u_1', () => m.$('le_u', [1, 1]), 1);
      returns(
        'le_u_2',
        () => m.$('le_u', [$i64('FFFFFFFFFFFFFFFF'), 1]),
        0,
        skip: 'failed',
      );
      returns(
          'le_u_3',
          () =>
              m.$('le_u', [$i64('8000000000000000'), $i64('8000000000000000')]),
          1);
      returns(
          'le_u_4',
          () =>
              m.$('le_u', [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          1);
      returns(
          'le_u_5',
          () =>
              m.$('le_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns('le_u_6', () => m.$('le_u', [1, 0]), 0);
      returns('le_u_7', () => m.$('le_u', [0, 1]), 1);
      returns(
        'le_u_8',
        () => m.$('le_u', [$i64('8000000000000000'), 0]),
        0,
        skip: 'failed',
      );
      returns(
        'le_u_9',
        () => m.$('le_u', [0, $i64('8000000000000000')]),
        1,
        skip: 'failed',
      );
      returns(
          'le_u_10',
          () =>
              m.$('le_u', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns(
          'le_u_11',
          () =>
              m.$('le_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          0);
      returns(
        'le_u_12',
        () => m.$('le_u', [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')]),
        0,
        skip: 'failed',
      );
      returns(
        'le_u_13',
        () => m.$('le_u', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
        1,
        skip: 'failed',
      );
      returns('gt_s_0', () => m.$('gt_s', [0, 0]), 0);
      returns('gt_s_1', () => m.$('gt_s', [1, 1]), 0);
      returns('gt_s_2', () => m.$('gt_s', [$i64('FFFFFFFFFFFFFFFF'), 1]), 0);
      returns(
          'gt_s_3',
          () =>
              m.$('gt_s', [$i64('8000000000000000'), $i64('8000000000000000')]),
          0);
      returns(
          'gt_s_4',
          () =>
              m.$('gt_s', [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          0);
      returns(
          'gt_s_5',
          () =>
              m.$('gt_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns('gt_s_6', () => m.$('gt_s', [1, 0]), 1);
      returns('gt_s_7', () => m.$('gt_s', [0, 1]), 0);
      returns('gt_s_8', () => m.$('gt_s', [$i64('8000000000000000'), 0]), 0);
      returns('gt_s_9', () => m.$('gt_s', [0, $i64('8000000000000000')]), 1);
      returns(
          'gt_s_10',
          () =>
              m.$('gt_s', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns(
          'gt_s_11',
          () =>
              m.$('gt_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          1);
      returns(
          'gt_s_12',
          () =>
              m.$('gt_s', [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')]),
          0);
      returns(
          'gt_s_13',
          () =>
              m.$('gt_s', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          1);
      returns('gt_u_0', () => m.$('gt_u', [0, 0]), 0);
      returns('gt_u_1', () => m.$('gt_u', [1, 1]), 0);
      returns(
        'gt_u_2',
        () => m.$('gt_u', [$i64('FFFFFFFFFFFFFFFF'), 1]),
        1,
        skip: 'failed',
      );
      returns(
          'gt_u_3',
          () =>
              m.$('gt_u', [$i64('8000000000000000'), $i64('8000000000000000')]),
          0);
      returns(
          'gt_u_4',
          () =>
              m.$('gt_u', [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          0);
      returns(
          'gt_u_5',
          () =>
              m.$('gt_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns('gt_u_6', () => m.$('gt_u', [1, 0]), 1);
      returns('gt_u_7', () => m.$('gt_u', [0, 1]), 0);
      returns(
        'gt_u_8',
        () => m.$('gt_u', [$i64('8000000000000000'), 0]),
        1,
        skip: 'failed',
      );
      returns(
        'gt_u_9',
        () => m.$('gt_u', [0, $i64('8000000000000000')]),
        0,
        skip: 'failed',
      );
      returns(
          'gt_u_10',
          () =>
              m.$('gt_u', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns(
          'gt_u_11',
          () =>
              m.$('gt_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          1);
      returns(
        'gt_u_12',
        () => m.$('gt_u', [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')]),
        1,
        skip: 'failed',
      );
      returns(
        'gt_u_13',
        () => m.$('gt_u', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
        0,
        skip: 'failed',
      );
      returns('ge_s_0', () => m.$('ge_s', [0, 0]), 1);
      returns('ge_s_1', () => m.$('ge_s', [1, 1]), 1);
      returns('ge_s_2', () => m.$('ge_s', [$i64('FFFFFFFFFFFFFFFF'), 1]), 0);
      returns(
          'ge_s_3',
          () =>
              m.$('ge_s', [$i64('8000000000000000'), $i64('8000000000000000')]),
          1);
      returns(
          'ge_s_4',
          () =>
              m.$('ge_s', [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          1);
      returns(
          'ge_s_5',
          () =>
              m.$('ge_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns('ge_s_6', () => m.$('ge_s', [1, 0]), 1);
      returns('ge_s_7', () => m.$('ge_s', [0, 1]), 0);
      returns('ge_s_8', () => m.$('ge_s', [$i64('8000000000000000'), 0]), 0);
      returns('ge_s_9', () => m.$('ge_s', [0, $i64('8000000000000000')]), 1);
      returns(
          'ge_s_10',
          () =>
              m.$('ge_s', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns(
          'ge_s_11',
          () =>
              m.$('ge_s', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          1);
      returns(
          'ge_s_12',
          () =>
              m.$('ge_s', [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')]),
          0);
      returns(
          'ge_s_13',
          () =>
              m.$('ge_s', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          1);
      returns('ge_u_0', () => m.$('ge_u', [0, 0]), 1);
      returns('ge_u_1', () => m.$('ge_u', [1, 1]), 1);
      returns(
        'ge_u_2',
        () => m.$('ge_u', [$i64('FFFFFFFFFFFFFFFF'), 1]),
        1,
        skip: 'failed',
      );
      returns(
          'ge_u_3',
          () =>
              m.$('ge_u', [$i64('8000000000000000'), $i64('8000000000000000')]),
          1);
      returns(
          'ge_u_4',
          () =>
              m.$('ge_u', [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')]),
          1);
      returns(
          'ge_u_5',
          () =>
              m.$('ge_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')]),
          1);
      returns('ge_u_6', () => m.$('ge_u', [1, 0]), 1);
      returns('ge_u_7', () => m.$('ge_u', [0, 1]), 0);
      returns(
        'ge_u_8',
        () => m.$('ge_u', [$i64('8000000000000000'), 0]),
        1,
        skip: 'failed',
      );
      returns(
        'ge_u_9',
        () => m.$('ge_u', [0, $i64('8000000000000000')]),
        0,
        skip: 'failed',
      );
      returns(
          'ge_u_10',
          () =>
              m.$('ge_u', [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')]),
          0);
      returns(
          'ge_u_11',
          () =>
              m.$('ge_u', [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
          1);
      returns(
        'ge_u_12',
        () => m.$('ge_u', [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')]),
        1,
        skip: 'failed',
      );
      returns(
        'ge_u_13',
        () => m.$('ge_u', [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')]),
        0,
        skip: 'failed',
      );
    });

    // assertInvalid('invalid i64.1.wasm', 'i64/i64.1.wasm', 'type mismatch');
    // assertInvalid('invalid i64.2.wasm', 'i64/i64.2.wasm', 'type mismatch');
    // assertInvalid('invalid i64.3.wasm', 'i64/i64.3.wasm', 'type mismatch');
    // assertInvalid('invalid i64.4.wasm', 'i64/i64.4.wasm', 'type mismatch');
    // assertInvalid('invalid i64.5.wasm', 'i64/i64.5.wasm', 'type mismatch');
    // assertInvalid('invalid i64.6.wasm', 'i64/i64.6.wasm', 'type mismatch');
    // assertInvalid('invalid i64.7.wasm', 'i64/i64.7.wasm', 'type mismatch');
    // assertInvalid('invalid i64.8.wasm', 'i64/i64.8.wasm', 'type mismatch');
    // assertInvalid('invalid i64.9.wasm', 'i64/i64.9.wasm', 'type mismatch');
    // assertInvalid('invalid i64.10.wasm', 'i64/i64.10.wasm', 'type mismatch');
    // assertInvalid('invalid i64.11.wasm', 'i64/i64.11.wasm', 'type mismatch');
    // assertInvalid('invalid i64.12.wasm', 'i64/i64.12.wasm', 'type mismatch');
    // assertInvalid('invalid i64.13.wasm', 'i64/i64.13.wasm', 'type mismatch');
    // assertInvalid('invalid i64.14.wasm', 'i64/i64.14.wasm', 'type mismatch');
    // assertInvalid('invalid i64.15.wasm', 'i64/i64.15.wasm', 'type mismatch');
    // assertInvalid('invalid i64.16.wasm', 'i64/i64.16.wasm', 'type mismatch');
    // assertInvalid('invalid i64.17.wasm', 'i64/i64.17.wasm', 'type mismatch');
    // assertInvalid('invalid i64.18.wasm', 'i64/i64.18.wasm', 'type mismatch');
    // assertInvalid('invalid i64.19.wasm', 'i64/i64.19.wasm', 'type mismatch');
    // assertInvalid('invalid i64.20.wasm', 'i64/i64.20.wasm', 'type mismatch');
    // assertInvalid('invalid i64.21.wasm', 'i64/i64.21.wasm', 'type mismatch');
    // assertInvalid('invalid i64.22.wasm', 'i64/i64.22.wasm', 'type mismatch');
    // assertInvalid('invalid i64.23.wasm', 'i64/i64.23.wasm', 'type mismatch');
    // assertInvalid('invalid i64.24.wasm', 'i64/i64.24.wasm', 'type mismatch');
    // assertInvalid('invalid i64.25.wasm', 'i64/i64.25.wasm', 'type mismatch');
    // assertInvalid('invalid i64.26.wasm', 'i64/i64.26.wasm', 'type mismatch');
    // assertInvalid('invalid i64.27.wasm', 'i64/i64.27.wasm', 'type mismatch');
    // assertInvalid('invalid i64.28.wasm', 'i64/i64.28.wasm', 'type mismatch');
    // assertInvalid('invalid i64.29.wasm', 'i64/i64.29.wasm', 'type mismatch');
    // assertMalformed('malformed i64.30.wat');
    // assertMalformed('malformed i64.31.wat');
  });
}
