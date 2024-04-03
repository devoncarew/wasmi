// Generated from spec/test/core/i32.wast.

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/format.dart';
import '_framework.dart';

void main() {
  group('i32.0.wasm', () {
    late Module module;

    setUpAll(() {
      module = Module.parse(File('test/spec/i32/i32.0.wasm'));
    });

    test('add-0', () {
      returns(module, 'add', [0x1, 0x1], 0x2);
    });
    test('add-1', () {
      returns(module, 'add', [0x1, 0], 0x1);
    });
    test('add-2', () {
      returns(module, 'add', [$i32('FFFFFFFF'), $i32('FFFFFFFF')],
          $i32('FFFFFFFE'));
    });
    test('add-3', () {
      returns(module, 'add', [$i32('FFFFFFFF'), 0x1], 0);
    });
    test('add-4', () {
      returns(module, 'add', [$i32('7FFFFFFF'), 0x1], $i32('80000000'));
    });
    test('add-5', () {
      returns(module, 'add', [$i32('80000000'), $i32('FFFFFFFF')],
          $i32('7FFFFFFF'));
    });
    test('add-6', () {
      returns(module, 'add', [$i32('80000000'), $i32('80000000')], 0);
    });
    test('add-7', () {
      returns(module, 'add', [$i32('3FFFFFFF'), 0x1], $i32('40000000'));
    });
    test('sub-0', () {
      returns(module, 'sub', [0x1, 0x1], 0);
    });
    test('sub-1', () {
      returns(module, 'sub', [0x1, 0], 0x1);
    });
    test('sub-2', () {
      returns(module, 'sub', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0);
    });
    test('sub-3', () {
      returns(module, 'sub', [$i32('7FFFFFFF'), $i32('FFFFFFFF')],
          $i32('80000000'));
    });
    test('sub-4', () {
      returns(module, 'sub', [$i32('80000000'), 0x1], $i32('7FFFFFFF'));
    });
    test('sub-5', () {
      returns(module, 'sub', [$i32('80000000'), $i32('80000000')], 0);
    });
    test('sub-6', () {
      returns(module, 'sub', [$i32('3FFFFFFF'), $i32('FFFFFFFF')],
          $i32('40000000'));
    });
    test('mul-0', () {
      returns(module, 'mul', [0x1, 0x1], 0x1);
    });
    test('mul-1', () {
      returns(module, 'mul', [0x1, 0], 0);
    });
    test('mul-2', () {
      returns(module, 'mul', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0x1);
    });
    test('mul-3', () {
      returns(module, 'mul', [$i32('10000000'), 0x1000], 0);
    });
    test('mul-4', () {
      returns(module, 'mul', [$i32('80000000'), 0], 0);
    });
    test('mul-5', () {
      returns(module, 'mul', [$i32('80000000'), $i32('FFFFFFFF')],
          $i32('80000000'));
    });
    test('mul-6', () {
      returns(module, 'mul', [$i32('7FFFFFFF'), $i32('FFFFFFFF')],
          $i32('80000001'));
    });
    test('mul-7', () {
      returns(
          module, 'mul', [$i32('1234567'), $i32('76543210')], $i32('358E7470'));
    });
    test('mul-8', () {
      returns(module, 'mul', [$i32('7FFFFFFF'), $i32('7FFFFFFF')], 0x1);
    });
    test('div_s-0 traps', () {
      traps(module, 'div_s', [0x1, 0], 'integer divide by zero');
    });
    test('div_s-1 traps', () {
      traps(module, 'div_s', [0, 0], 'integer divide by zero');
    });
    test('div_s-2 traps', () {
      traps(module, 'div_s', [$i32('80000000'), $i32('FFFFFFFF')],
          'integer overflow');
    });
    test('div_s-3 traps', () {
      traps(module, 'div_s', [$i32('80000000'), 0], 'integer divide by zero');
    });
    test('div_s-4', () {
      returns(module, 'div_s', [0x1, 0x1], 0x1);
    });
    test('div_s-5', () {
      returns(module, 'div_s', [0, 0x1], 0);
    });
    test('div_s-6', () {
      returns(module, 'div_s', [0, $i32('FFFFFFFF')], 0);
    });
    test('div_s-7', () {
      returns(module, 'div_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0x1);
    });
    test('div_s-8', () {
      returns(module, 'div_s', [$i32('80000000'), 0x2], $i32('C0000000'));
    });
    test('div_s-9', () {
      returns(module, 'div_s', [$i32('80000001'), 0x3E8], $i32('FFDF3B65'));
    });
    test('div_s-10', () {
      returns(module, 'div_s', [0x5, 0x2], 0x2);
    });
    test('div_s-11', () {
      returns(module, 'div_s', [$i32('FFFFFFFB'), 0x2], $i32('FFFFFFFE'));
    });
    test('div_s-12', () {
      returns(module, 'div_s', [0x5, $i32('FFFFFFFE')], $i32('FFFFFFFE'));
    });
    test('div_s-13', () {
      returns(module, 'div_s', [$i32('FFFFFFFB'), $i32('FFFFFFFE')], 0x2);
    });
    test('div_s-14', () {
      returns(module, 'div_s', [0x7, 0x3], 0x2);
    });
    test('div_s-15', () {
      returns(module, 'div_s', [$i32('FFFFFFF9'), 0x3], $i32('FFFFFFFE'));
    });
    test('div_s-16', () {
      returns(module, 'div_s', [0x7, $i32('FFFFFFFD')], $i32('FFFFFFFE'));
    });
    test('div_s-17', () {
      returns(module, 'div_s', [$i32('FFFFFFF9'), $i32('FFFFFFFD')], 0x2);
    });
    test('div_s-18', () {
      returns(module, 'div_s', [0xB, 0x5], 0x2);
    });
    test('div_s-19', () {
      returns(module, 'div_s', [0x11, 0x7], 0x2);
    });
    test('div_u-0 traps', () {
      traps(module, 'div_u', [0x1, 0], 'integer divide by zero');
    });
    test('div_u-1 traps', () {
      traps(module, 'div_u', [0, 0], 'integer divide by zero');
    });
    test('div_u-2', () {
      returns(module, 'div_u', [0x1, 0x1], 0x1);
    });
    test('div_u-3', () {
      returns(module, 'div_u', [0, 0x1], 0);
    });
    test('div_u-4', () {
      returns(module, 'div_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0x1);
    });
    test('div_u-5', () {
      returns(module, 'div_u', [$i32('80000000'), $i32('FFFFFFFF')], 0);
    });
    test('div_u-6', () {
      returns(module, 'div_u', [$i32('80000000'), 0x2], $i32('40000000'));
    });
    test('div_u-7', () {
      returns(module, 'div_u', [$i32('8FF00FF0'), 0x10001], 0x8FEF);
    });
    test('div_u-8', () {
      returns(module, 'div_u', [$i32('80000001'), 0x3E8], $i32('20C49B'));
    });
    test('div_u-9', () {
      returns(module, 'div_u', [0x5, 0x2], 0x2);
    });
    test('div_u-10', () {
      returns(module, 'div_u', [$i32('FFFFFFFB'), 0x2], $i32('7FFFFFFD'));
    });
    test('div_u-11', () {
      returns(module, 'div_u', [0x5, $i32('FFFFFFFE')], 0);
    });
    test('div_u-12', () {
      returns(module, 'div_u', [$i32('FFFFFFFB'), $i32('FFFFFFFE')], 0);
    });
    test('div_u-13', () {
      returns(module, 'div_u', [0x7, 0x3], 0x2);
    });
    test('div_u-14', () {
      returns(module, 'div_u', [0xB, 0x5], 0x2);
    });
    test('div_u-15', () {
      returns(module, 'div_u', [0x11, 0x7], 0x2);
    });
    test('rem_s-0 traps', () {
      traps(module, 'rem_s', [0x1, 0], 'integer divide by zero');
    });
    test('rem_s-1 traps', () {
      traps(module, 'rem_s', [0, 0], 'integer divide by zero');
    });
    test('rem_s-2', () {
      returns(module, 'rem_s', [$i32('7FFFFFFF'), $i32('FFFFFFFF')], 0);
    });
    test('rem_s-3', () {
      returns(module, 'rem_s', [0x1, 0x1], 0);
    });
    test('rem_s-4', () {
      returns(module, 'rem_s', [0, 0x1], 0);
    });
    test('rem_s-5', () {
      returns(module, 'rem_s', [0, $i32('FFFFFFFF')], 0);
    });
    test('rem_s-6', () {
      returns(module, 'rem_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0);
    });
    test('rem_s-7', () {
      returns(module, 'rem_s', [$i32('80000000'), $i32('FFFFFFFF')], 0);
    });
    test('rem_s-8', () {
      returns(module, 'rem_s', [$i32('80000000'), 0x2], 0);
    });
    test('rem_s-9', () {
      returns(module, 'rem_s', [$i32('80000001'), 0x3E8], $i32('FFFFFD79'));
    });
    test('rem_s-10', () {
      returns(module, 'rem_s', [0x5, 0x2], 0x1);
    });
    test('rem_s-11', () {
      returns(module, 'rem_s', [$i32('FFFFFFFB'), 0x2], $i32('FFFFFFFF'));
    });
    test('rem_s-12', () {
      returns(module, 'rem_s', [0x5, $i32('FFFFFFFE')], 0x1);
    });
    test('rem_s-13', () {
      returns(module, 'rem_s', [$i32('FFFFFFFB'), $i32('FFFFFFFE')],
          $i32('FFFFFFFF'));
    });
    test('rem_s-14', () {
      returns(module, 'rem_s', [0x7, 0x3], 0x1);
    });
    test('rem_s-15', () {
      returns(module, 'rem_s', [$i32('FFFFFFF9'), 0x3], $i32('FFFFFFFF'));
    });
    test('rem_s-16', () {
      returns(module, 'rem_s', [0x7, $i32('FFFFFFFD')], 0x1);
    });
    test('rem_s-17', () {
      returns(module, 'rem_s', [$i32('FFFFFFF9'), $i32('FFFFFFFD')],
          $i32('FFFFFFFF'));
    });
    test('rem_s-18', () {
      returns(module, 'rem_s', [0xB, 0x5], 0x1);
    });
    test('rem_s-19', () {
      returns(module, 'rem_s', [0x11, 0x7], 0x3);
    });
    test('rem_u-0 traps', () {
      traps(module, 'rem_u', [0x1, 0], 'integer divide by zero');
    });
    test('rem_u-1 traps', () {
      traps(module, 'rem_u', [0, 0], 'integer divide by zero');
    });
    test('rem_u-2', () {
      returns(module, 'rem_u', [0x1, 0x1], 0);
    });
    test('rem_u-3', () {
      returns(module, 'rem_u', [0, 0x1], 0);
    });
    test('rem_u-4', () {
      returns(module, 'rem_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0);
    });
    test('rem_u-5', () {
      returns(module, 'rem_u', [$i32('80000000'), $i32('FFFFFFFF')],
          $i32('80000000'));
    });
    test('rem_u-6', () {
      returns(module, 'rem_u', [$i32('80000000'), 0x2], 0);
    });
    test('rem_u-7', () {
      returns(module, 'rem_u', [$i32('8FF00FF0'), 0x10001], 0x8001);
    });
    test('rem_u-8', () {
      returns(module, 'rem_u', [$i32('80000001'), 0x3E8], 0x289);
    });
    test('rem_u-9', () {
      returns(module, 'rem_u', [0x5, 0x2], 0x1);
    });
    test('rem_u-10', () {
      returns(module, 'rem_u', [$i32('FFFFFFFB'), 0x2], 0x1);
    });
    test('rem_u-11', () {
      returns(module, 'rem_u', [0x5, $i32('FFFFFFFE')], 0x5);
    });
    test('rem_u-12', () {
      returns(module, 'rem_u', [$i32('FFFFFFFB'), $i32('FFFFFFFE')],
          $i32('FFFFFFFB'));
    });
    test('rem_u-13', () {
      returns(module, 'rem_u', [0x7, 0x3], 0x1);
    });
    test('rem_u-14', () {
      returns(module, 'rem_u', [0xB, 0x5], 0x1);
    });
    test('rem_u-15', () {
      returns(module, 'rem_u', [0x11, 0x7], 0x3);
    });
    test('and-0', () {
      returns(module, 'and', [0x1, 0], 0);
    });
    test('and-1', () {
      returns(module, 'and', [0, 0x1], 0);
    });
    test('and-2', () {
      returns(module, 'and', [0x1, 0x1], 0x1);
    });
    test('and-3', () {
      returns(module, 'and', [0, 0], 0);
    });
    test('and-4', () {
      returns(module, 'and', [$i32('7FFFFFFF'), $i32('80000000')], 0);
    });
    test('and-5', () {
      returns(module, 'and', [$i32('7FFFFFFF'), $i32('FFFFFFFF')],
          $i32('7FFFFFFF'));
    });
    test('and-6', () {
      returns(module, 'and', [$i32('F0F0FFFF'), $i32('FFFFF0F0')],
          $i32('F0F0F0F0'));
    });
    test('and-7', () {
      returns(module, 'and', [$i32('FFFFFFFF'), $i32('FFFFFFFF')],
          $i32('FFFFFFFF'));
    });
    test('or-0', () {
      returns(module, 'or', [0x1, 0], 0x1);
    });
    test('or-1', () {
      returns(module, 'or', [0, 0x1], 0x1);
    });
    test('or-2', () {
      returns(module, 'or', [0x1, 0x1], 0x1);
    });
    test('or-3', () {
      returns(module, 'or', [0, 0], 0);
    });
    test('or-4', () {
      returns(
          module, 'or', [$i32('7FFFFFFF'), $i32('80000000')], $i32('FFFFFFFF'));
    });
    test('or-5', () {
      returns(module, 'or', [$i32('80000000'), 0], $i32('80000000'));
    });
    test('or-6', () {
      returns(
          module, 'or', [$i32('F0F0FFFF'), $i32('FFFFF0F0')], $i32('FFFFFFFF'));
    });
    test('or-7', () {
      returns(
          module, 'or', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], $i32('FFFFFFFF'));
    });
    test('xor-0', () {
      returns(module, 'xor', [0x1, 0], 0x1);
    });
    test('xor-1', () {
      returns(module, 'xor', [0, 0x1], 0x1);
    });
    test('xor-2', () {
      returns(module, 'xor', [0x1, 0x1], 0);
    });
    test('xor-3', () {
      returns(module, 'xor', [0, 0], 0);
    });
    test('xor-4', () {
      returns(module, 'xor', [$i32('7FFFFFFF'), $i32('80000000')],
          $i32('FFFFFFFF'));
    });
    test('xor-5', () {
      returns(module, 'xor', [$i32('80000000'), 0], $i32('80000000'));
    });
    test('xor-6', () {
      returns(module, 'xor', [$i32('FFFFFFFF'), $i32('80000000')],
          $i32('7FFFFFFF'));
    });
    test('xor-7', () {
      returns(module, 'xor', [$i32('FFFFFFFF'), $i32('7FFFFFFF')],
          $i32('80000000'));
    });
    test('xor-8', () {
      returns(
          module, 'xor', [$i32('F0F0FFFF'), $i32('FFFFF0F0')], $i32('F0F0F0F'));
    });
    test('xor-9', () {
      returns(module, 'xor', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0);
    });
    test('shl-0', () {
      returns(module, 'shl', [0x1, 0x1], 0x2);
    });
    test('shl-1', () {
      returns(module, 'shl', [0x1, 0], 0x1);
    });
    test('shl-2', () {
      returns(module, 'shl', [$i32('7FFFFFFF'), 0x1], $i32('FFFFFFFE'));
    });
    test('shl-3', () {
      returns(module, 'shl', [$i32('FFFFFFFF'), 0x1], $i32('FFFFFFFE'));
    });
    test('shl-4', () {
      returns(module, 'shl', [$i32('80000000'), 0x1], 0);
    });
    test('shl-5', () {
      returns(module, 'shl', [$i32('40000000'), 0x1], $i32('80000000'));
    });
    test('shl-6', () {
      returns(module, 'shl', [0x1, 0x1F], $i32('80000000'));
    });
    test('shl-7', () {
      returns(module, 'shl', [0x1, 0x20], 0x1);
    });
    test('shl-8', () {
      returns(module, 'shl', [0x1, 0x21], 0x2);
    });
    test('shl-9', () {
      returns(module, 'shl', [0x1, $i32('FFFFFFFF')], $i32('80000000'));
    });
    test('shl-10', () {
      returns(module, 'shl', [0x1, $i32('7FFFFFFF')], $i32('80000000'));
    });
    test('shr_s-0', () {
      returns(module, 'shr_s', [0x1, 0x1], 0);
    });
    test('shr_s-1', () {
      returns(module, 'shr_s', [0x1, 0], 0x1);
    });
    test('shr_s-2', () {
      returns(module, 'shr_s', [$i32('FFFFFFFF'), 0x1], $i32('FFFFFFFF'));
    });
    test('shr_s-3', () {
      returns(module, 'shr_s', [$i32('7FFFFFFF'), 0x1], $i32('3FFFFFFF'));
    });
    test('shr_s-4', () {
      returns(module, 'shr_s', [$i32('80000000'), 0x1], $i32('C0000000'));
    });
    test('shr_s-5', () {
      returns(module, 'shr_s', [$i32('40000000'), 0x1], $i32('20000000'));
    });
    test('shr_s-6', () {
      returns(module, 'shr_s', [0x1, 0x20], 0x1);
    });
    test('shr_s-7', () {
      returns(module, 'shr_s', [0x1, 0x21], 0);
    });
    test('shr_s-8', () {
      returns(module, 'shr_s', [0x1, $i32('FFFFFFFF')], 0);
    });
    test('shr_s-9', () {
      returns(module, 'shr_s', [0x1, $i32('7FFFFFFF')], 0);
    });
    test('shr_s-10', () {
      returns(module, 'shr_s', [0x1, $i32('80000000')], 0x1);
    });
    test('shr_s-11', () {
      returns(module, 'shr_s', [$i32('80000000'), 0x1F], $i32('FFFFFFFF'));
    });
    test('shr_s-12', () {
      returns(module, 'shr_s', [$i32('FFFFFFFF'), 0x20], $i32('FFFFFFFF'));
    });
    test('shr_s-13', () {
      returns(module, 'shr_s', [$i32('FFFFFFFF'), 0x21], $i32('FFFFFFFF'));
    });
    test('shr_s-14', () {
      returns(module, 'shr_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')],
          $i32('FFFFFFFF'));
    });
    test('shr_s-15', () {
      returns(module, 'shr_s', [$i32('FFFFFFFF'), $i32('7FFFFFFF')],
          $i32('FFFFFFFF'));
    });
    test('shr_s-16', () {
      returns(module, 'shr_s', [$i32('FFFFFFFF'), $i32('80000000')],
          $i32('FFFFFFFF'));
    });
    test('shr_u-0', () {
      returns(module, 'shr_u', [0x1, 0x1], 0);
    });
    test('shr_u-1', () {
      returns(module, 'shr_u', [0x1, 0], 0x1);
    });
    test('shr_u-2', () {
      returns(module, 'shr_u', [$i32('FFFFFFFF'), 0x1], $i32('7FFFFFFF'));
    });
    test('shr_u-3', () {
      returns(module, 'shr_u', [$i32('7FFFFFFF'), 0x1], $i32('3FFFFFFF'));
    });
    test('shr_u-4', () {
      returns(module, 'shr_u', [$i32('80000000'), 0x1], $i32('40000000'));
    });
    test('shr_u-5', () {
      returns(module, 'shr_u', [$i32('40000000'), 0x1], $i32('20000000'));
    });
    test('shr_u-6', () {
      returns(module, 'shr_u', [0x1, 0x20], 0x1);
    });
    test('shr_u-7', () {
      returns(module, 'shr_u', [0x1, 0x21], 0);
    });
    test('shr_u-8', () {
      returns(module, 'shr_u', [0x1, $i32('FFFFFFFF')], 0);
    });
    test('shr_u-9', () {
      returns(module, 'shr_u', [0x1, $i32('7FFFFFFF')], 0);
    });
    test('shr_u-10', () {
      returns(module, 'shr_u', [0x1, $i32('80000000')], 0x1);
    });
    test('shr_u-11', () {
      returns(module, 'shr_u', [$i32('80000000'), 0x1F], 0x1);
    });
    test('shr_u-12', () {
      returns(module, 'shr_u', [$i32('FFFFFFFF'), 0x20], $i32('FFFFFFFF'));
    });
    test('shr_u-13', () {
      returns(module, 'shr_u', [$i32('FFFFFFFF'), 0x21], $i32('7FFFFFFF'));
    });
    test('shr_u-14', () {
      returns(module, 'shr_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0x1);
    });
    test('shr_u-15', () {
      returns(module, 'shr_u', [$i32('FFFFFFFF'), $i32('7FFFFFFF')], 0x1);
    });
    test('shr_u-16', () {
      returns(module, 'shr_u', [$i32('FFFFFFFF'), $i32('80000000')],
          $i32('FFFFFFFF'));
    });
    test('rotl-0', () {
      returns(module, 'rotl', [0x1, 0x1], 0x2);
    });
    test('rotl-1', () {
      returns(module, 'rotl', [0x1, 0], 0x1);
    });
    test('rotl-2', () {
      returns(module, 'rotl', [$i32('FFFFFFFF'), 0x1], $i32('FFFFFFFF'));
    });
    test('rotl-3', () {
      returns(module, 'rotl', [0x1, 0x20], 0x1);
    });
    test('rotl-4', () {
      returns(module, 'rotl', [$i32('ABCD9876'), 0x1], $i32('579B30ED'));
    });
    test('rotl-5', () {
      returns(module, 'rotl', [$i32('FE00DC00'), 0x4], $i32('E00DC00F'));
    });
    test('rotl-6', () {
      returns(module, 'rotl', [$i32('B0C1D2E3'), 0x5], $i32('183A5C76'));
    });
    test('rotl-7', () {
      returns(module, 'rotl', [0x8000, 0x25], $i32('100000'));
    });
    test('rotl-8', () {
      returns(module, 'rotl', [$i32('B0C1D2E3'), 0xFF05], $i32('183A5C76'));
    });
    test('rotl-9', () {
      returns(module, 'rotl', [$i32('769ABCDF'), $i32('FFFFFFED')],
          $i32('579BEED3'));
    });
    test('rotl-10', () {
      returns(module, 'rotl', [$i32('769ABCDF'), $i32('8000000D')],
          $i32('579BEED3'));
    });
    test('rotl-11', () {
      returns(module, 'rotl', [0x1, 0x1F], $i32('80000000'));
    });
    test('rotl-12', () {
      returns(module, 'rotl', [$i32('80000000'), 0x1], 0x1);
    });
    test('rotr-0', () {
      returns(module, 'rotr', [0x1, 0x1], $i32('80000000'));
    });
    test('rotr-1', () {
      returns(module, 'rotr', [0x1, 0], 0x1);
    });
    test('rotr-2', () {
      returns(module, 'rotr', [$i32('FFFFFFFF'), 0x1], $i32('FFFFFFFF'));
    });
    test('rotr-3', () {
      returns(module, 'rotr', [0x1, 0x20], 0x1);
    });
    test('rotr-4', () {
      returns(module, 'rotr', [$i32('FF00CC00'), 0x1], $i32('7F806600'));
    });
    test('rotr-5', () {
      returns(module, 'rotr', [0x80000, 0x4], 0x8000);
    });
    test('rotr-6', () {
      returns(module, 'rotr', [$i32('B0C1D2E3'), 0x5], $i32('1D860E97'));
    });
    test('rotr-7', () {
      returns(module, 'rotr', [0x8000, 0x25], 0x400);
    });
    test('rotr-8', () {
      returns(module, 'rotr', [$i32('B0C1D2E3'), 0xFF05], $i32('1D860E97'));
    });
    test('rotr-9', () {
      returns(module, 'rotr', [$i32('769ABCDF'), $i32('FFFFFFED')],
          $i32('E6FBB4D5'));
    });
    test('rotr-10', () {
      returns(module, 'rotr', [$i32('769ABCDF'), $i32('8000000D')],
          $i32('E6FBB4D5'));
    });
    test('rotr-11', () {
      returns(module, 'rotr', [0x1, 0x1F], 0x2);
    });
    test('rotr-12', () {
      returns(module, 'rotr', [$i32('80000000'), 0x1F], 0x1);
    });
    test('clz-0', () {
      returns(module, 'clz', [$i32('FFFFFFFF')], 0);
    });
    test('clz-1', () {
      returns(module, 'clz', [0], 0x20);
    });
    test('clz-2', () {
      returns(module, 'clz', [0x8000], 0x10);
    });
    test('clz-3', () {
      returns(module, 'clz', [0xFF], 0x18);
    });
    test('clz-4', () {
      returns(module, 'clz', [$i32('80000000')], 0);
    });
    test('clz-5', () {
      returns(module, 'clz', [0x1], 0x1F);
    });
    test('clz-6', () {
      returns(module, 'clz', [0x2], 0x1E);
    });
    test('clz-7', () {
      returns(module, 'clz', [$i32('7FFFFFFF')], 0x1);
    });
    test('ctz-0', () {
      returns(module, 'ctz', [$i32('FFFFFFFF')], 0);
    });
    test('ctz-1', () {
      returns(module, 'ctz', [0], 0x20);
    });
    test('ctz-2', () {
      returns(module, 'ctz', [0x8000], 0xF);
    });
    test('ctz-3', () {
      returns(module, 'ctz', [0x10000], 0x10);
    });
    test('ctz-4', () {
      returns(module, 'ctz', [$i32('80000000')], 0x1F);
    });
    test('ctz-5', () {
      returns(module, 'ctz', [$i32('7FFFFFFF')], 0);
    });
    test('popcnt-0', () {
      returns(module, 'popcnt', [$i32('FFFFFFFF')], 0x20);
    });
    test('popcnt-1', () {
      returns(module, 'popcnt', [0], 0);
    });
    test('popcnt-2', () {
      returns(module, 'popcnt', [0x8000], 0x1);
    });
    test('popcnt-3', () {
      returns(module, 'popcnt', [$i32('80008000')], 0x2);
    });
    test('popcnt-4', () {
      returns(module, 'popcnt', [$i32('7FFFFFFF')], 0x1F);
    });
    test('popcnt-5', () {
      returns(module, 'popcnt', [$i32('AAAAAAAA')], 0x10);
    });
    test('popcnt-6', () {
      returns(module, 'popcnt', [$i32('55555555')], 0x10);
    });
    test('popcnt-7', () {
      returns(module, 'popcnt', [$i32('DEADBEEF')], 0x18);
    });
    test('extend8_s-0', () {
      returns(module, 'extend8_s', [0], 0);
    });
    test('extend8_s-1', () {
      returns(module, 'extend8_s', [0x7F], 0x7F);
    });
    test('extend8_s-2', () {
      returns(module, 'extend8_s', [0x80], $i32('FFFFFF80'));
    });
    test('extend8_s-3', () {
      returns(module, 'extend8_s', [0xFF], $i32('FFFFFFFF'));
    });
    test('extend8_s-4', () {
      returns(module, 'extend8_s', [$i32('1234500')], 0);
    });
    test('extend8_s-5', () {
      returns(module, 'extend8_s', [$i32('FEDCBA80')], $i32('FFFFFF80'));
    });
    test('extend8_s-6', () {
      returns(module, 'extend8_s', [$i32('FFFFFFFF')], $i32('FFFFFFFF'));
    });
    test('extend16_s-0', () {
      returns(module, 'extend16_s', [0], 0);
    });
    test('extend16_s-1', () {
      returns(module, 'extend16_s', [0x7FFF], 0x7FFF);
    });
    test('extend16_s-2', () {
      returns(module, 'extend16_s', [0x8000], $i32('FFFF8000'));
    });
    test('extend16_s-3', () {
      returns(module, 'extend16_s', [0xFFFF], $i32('FFFFFFFF'));
    });
    test('extend16_s-4', () {
      returns(module, 'extend16_s', [$i32('1230000')], 0);
    });
    test('extend16_s-5', () {
      returns(module, 'extend16_s', [$i32('FEDC8000')], $i32('FFFF8000'));
    });
    test('extend16_s-6', () {
      returns(module, 'extend16_s', [$i32('FFFFFFFF')], $i32('FFFFFFFF'));
    });
    test('eqz-0', () {
      returns(module, 'eqz', [0], 0x1);
    });
    test('eqz-1', () {
      returns(module, 'eqz', [0x1], 0);
    });
    test('eqz-2', () {
      returns(module, 'eqz', [$i32('80000000')], 0);
    });
    test('eqz-3', () {
      returns(module, 'eqz', [$i32('7FFFFFFF')], 0);
    });
    test('eqz-4', () {
      returns(module, 'eqz', [$i32('FFFFFFFF')], 0);
    });
    test('eq-0', () {
      returns(module, 'eq', [0, 0], 0x1);
    });
    test('eq-1', () {
      returns(module, 'eq', [0x1, 0x1], 0x1);
    });
    test('eq-2', () {
      returns(module, 'eq', [$i32('FFFFFFFF'), 0x1], 0);
    });
    test('eq-3', () {
      returns(module, 'eq', [$i32('80000000'), $i32('80000000')], 0x1);
    });
    test('eq-4', () {
      returns(module, 'eq', [$i32('7FFFFFFF'), $i32('7FFFFFFF')], 0x1);
    });
    test('eq-5', () {
      returns(module, 'eq', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0x1);
    });
    test('eq-6', () {
      returns(module, 'eq', [0x1, 0], 0);
    });
    test('eq-7', () {
      returns(module, 'eq', [0, 0x1], 0);
    });
    test('eq-8', () {
      returns(module, 'eq', [$i32('80000000'), 0], 0);
    });
    test('eq-9', () {
      returns(module, 'eq', [0, $i32('80000000')], 0);
    });
    test('eq-10', () {
      returns(module, 'eq', [$i32('80000000'), $i32('FFFFFFFF')], 0);
    });
    test('eq-11', () {
      returns(module, 'eq', [$i32('FFFFFFFF'), $i32('80000000')], 0);
    });
    test('eq-12', () {
      returns(module, 'eq', [$i32('80000000'), $i32('7FFFFFFF')], 0);
    });
    test('eq-13', () {
      returns(module, 'eq', [$i32('7FFFFFFF'), $i32('80000000')], 0);
    });
    test('ne-0', () {
      returns(module, 'ne', [0, 0], 0);
    });
    test('ne-1', () {
      returns(module, 'ne', [0x1, 0x1], 0);
    });
    test('ne-2', () {
      returns(module, 'ne', [$i32('FFFFFFFF'), 0x1], 0x1);
    });
    test('ne-3', () {
      returns(module, 'ne', [$i32('80000000'), $i32('80000000')], 0);
    });
    test('ne-4', () {
      returns(module, 'ne', [$i32('7FFFFFFF'), $i32('7FFFFFFF')], 0);
    });
    test('ne-5', () {
      returns(module, 'ne', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0);
    });
    test('ne-6', () {
      returns(module, 'ne', [0x1, 0], 0x1);
    });
    test('ne-7', () {
      returns(module, 'ne', [0, 0x1], 0x1);
    });
    test('ne-8', () {
      returns(module, 'ne', [$i32('80000000'), 0], 0x1);
    });
    test('ne-9', () {
      returns(module, 'ne', [0, $i32('80000000')], 0x1);
    });
    test('ne-10', () {
      returns(module, 'ne', [$i32('80000000'), $i32('FFFFFFFF')], 0x1);
    });
    test('ne-11', () {
      returns(module, 'ne', [$i32('FFFFFFFF'), $i32('80000000')], 0x1);
    });
    test('ne-12', () {
      returns(module, 'ne', [$i32('80000000'), $i32('7FFFFFFF')], 0x1);
    });
    test('ne-13', () {
      returns(module, 'ne', [$i32('7FFFFFFF'), $i32('80000000')], 0x1);
    });
    test('lt_s-0', () {
      returns(module, 'lt_s', [0, 0], 0);
    });
    test('lt_s-1', () {
      returns(module, 'lt_s', [0x1, 0x1], 0);
    });
    test('lt_s-2', () {
      returns(module, 'lt_s', [$i32('FFFFFFFF'), 0x1], 0x1);
    });
    test('lt_s-3', () {
      returns(module, 'lt_s', [$i32('80000000'), $i32('80000000')], 0);
    });
    test('lt_s-4', () {
      returns(module, 'lt_s', [$i32('7FFFFFFF'), $i32('7FFFFFFF')], 0);
    });
    test('lt_s-5', () {
      returns(module, 'lt_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0);
    });
    test('lt_s-6', () {
      returns(module, 'lt_s', [0x1, 0], 0);
    });
    test('lt_s-7', () {
      returns(module, 'lt_s', [0, 0x1], 0x1);
    });
    test('lt_s-8', () {
      returns(module, 'lt_s', [$i32('80000000'), 0], 0x1);
    });
    test('lt_s-9', () {
      returns(module, 'lt_s', [0, $i32('80000000')], 0);
    });
    test('lt_s-10', () {
      returns(module, 'lt_s', [$i32('80000000'), $i32('FFFFFFFF')], 0x1);
    });
    test('lt_s-11', () {
      returns(module, 'lt_s', [$i32('FFFFFFFF'), $i32('80000000')], 0);
    });
    test('lt_s-12', () {
      returns(module, 'lt_s', [$i32('80000000'), $i32('7FFFFFFF')], 0x1);
    });
    test('lt_s-13', () {
      returns(module, 'lt_s', [$i32('7FFFFFFF'), $i32('80000000')], 0);
    });
    test('lt_u-0', () {
      returns(module, 'lt_u', [0, 0], 0);
    });
    test('lt_u-1', () {
      returns(module, 'lt_u', [0x1, 0x1], 0);
    });
    test('lt_u-2', () {
      returns(module, 'lt_u', [$i32('FFFFFFFF'), 0x1], 0);
    });
    test('lt_u-3', () {
      returns(module, 'lt_u', [$i32('80000000'), $i32('80000000')], 0);
    });
    test('lt_u-4', () {
      returns(module, 'lt_u', [$i32('7FFFFFFF'), $i32('7FFFFFFF')], 0);
    });
    test('lt_u-5', () {
      returns(module, 'lt_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0);
    });
    test('lt_u-6', () {
      returns(module, 'lt_u', [0x1, 0], 0);
    });
    test('lt_u-7', () {
      returns(module, 'lt_u', [0, 0x1], 0x1);
    });
    test('lt_u-8', () {
      returns(module, 'lt_u', [$i32('80000000'), 0], 0);
    });
    test('lt_u-9', () {
      returns(module, 'lt_u', [0, $i32('80000000')], 0x1);
    });
    test('lt_u-10', () {
      returns(module, 'lt_u', [$i32('80000000'), $i32('FFFFFFFF')], 0x1);
    });
    test('lt_u-11', () {
      returns(module, 'lt_u', [$i32('FFFFFFFF'), $i32('80000000')], 0);
    });
    test('lt_u-12', () {
      returns(module, 'lt_u', [$i32('80000000'), $i32('7FFFFFFF')], 0);
    });
    test('lt_u-13', () {
      returns(module, 'lt_u', [$i32('7FFFFFFF'), $i32('80000000')], 0x1);
    });
    test('le_s-0', () {
      returns(module, 'le_s', [0, 0], 0x1);
    });
    test('le_s-1', () {
      returns(module, 'le_s', [0x1, 0x1], 0x1);
    });
    test('le_s-2', () {
      returns(module, 'le_s', [$i32('FFFFFFFF'), 0x1], 0x1);
    });
    test('le_s-3', () {
      returns(module, 'le_s', [$i32('80000000'), $i32('80000000')], 0x1);
    });
    test('le_s-4', () {
      returns(module, 'le_s', [$i32('7FFFFFFF'), $i32('7FFFFFFF')], 0x1);
    });
    test('le_s-5', () {
      returns(module, 'le_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0x1);
    });
    test('le_s-6', () {
      returns(module, 'le_s', [0x1, 0], 0);
    });
    test('le_s-7', () {
      returns(module, 'le_s', [0, 0x1], 0x1);
    });
    test('le_s-8', () {
      returns(module, 'le_s', [$i32('80000000'), 0], 0x1);
    });
    test('le_s-9', () {
      returns(module, 'le_s', [0, $i32('80000000')], 0);
    });
    test('le_s-10', () {
      returns(module, 'le_s', [$i32('80000000'), $i32('FFFFFFFF')], 0x1);
    });
    test('le_s-11', () {
      returns(module, 'le_s', [$i32('FFFFFFFF'), $i32('80000000')], 0);
    });
    test('le_s-12', () {
      returns(module, 'le_s', [$i32('80000000'), $i32('7FFFFFFF')], 0x1);
    });
    test('le_s-13', () {
      returns(module, 'le_s', [$i32('7FFFFFFF'), $i32('80000000')], 0);
    });
    test('le_u-0', () {
      returns(module, 'le_u', [0, 0], 0x1);
    });
    test('le_u-1', () {
      returns(module, 'le_u', [0x1, 0x1], 0x1);
    });
    test('le_u-2', () {
      returns(module, 'le_u', [$i32('FFFFFFFF'), 0x1], 0);
    });
    test('le_u-3', () {
      returns(module, 'le_u', [$i32('80000000'), $i32('80000000')], 0x1);
    });
    test('le_u-4', () {
      returns(module, 'le_u', [$i32('7FFFFFFF'), $i32('7FFFFFFF')], 0x1);
    });
    test('le_u-5', () {
      returns(module, 'le_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0x1);
    });
    test('le_u-6', () {
      returns(module, 'le_u', [0x1, 0], 0);
    });
    test('le_u-7', () {
      returns(module, 'le_u', [0, 0x1], 0x1);
    });
    test('le_u-8', () {
      returns(module, 'le_u', [$i32('80000000'), 0], 0);
    });
    test('le_u-9', () {
      returns(module, 'le_u', [0, $i32('80000000')], 0x1);
    });
    test('le_u-10', () {
      returns(module, 'le_u', [$i32('80000000'), $i32('FFFFFFFF')], 0x1);
    });
    test('le_u-11', () {
      returns(module, 'le_u', [$i32('FFFFFFFF'), $i32('80000000')], 0);
    });
    test('le_u-12', () {
      returns(module, 'le_u', [$i32('80000000'), $i32('7FFFFFFF')], 0);
    });
    test('le_u-13', () {
      returns(module, 'le_u', [$i32('7FFFFFFF'), $i32('80000000')], 0x1);
    });
    test('gt_s-0', () {
      returns(module, 'gt_s', [0, 0], 0);
    });
    test('gt_s-1', () {
      returns(module, 'gt_s', [0x1, 0x1], 0);
    });
    test('gt_s-2', () {
      returns(module, 'gt_s', [$i32('FFFFFFFF'), 0x1], 0);
    });
    test('gt_s-3', () {
      returns(module, 'gt_s', [$i32('80000000'), $i32('80000000')], 0);
    });
    test('gt_s-4', () {
      returns(module, 'gt_s', [$i32('7FFFFFFF'), $i32('7FFFFFFF')], 0);
    });
    test('gt_s-5', () {
      returns(module, 'gt_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0);
    });
    test('gt_s-6', () {
      returns(module, 'gt_s', [0x1, 0], 0x1);
    });
    test('gt_s-7', () {
      returns(module, 'gt_s', [0, 0x1], 0);
    });
    test('gt_s-8', () {
      returns(module, 'gt_s', [$i32('80000000'), 0], 0);
    });
    test('gt_s-9', () {
      returns(module, 'gt_s', [0, $i32('80000000')], 0x1);
    });
    test('gt_s-10', () {
      returns(module, 'gt_s', [$i32('80000000'), $i32('FFFFFFFF')], 0);
    });
    test('gt_s-11', () {
      returns(module, 'gt_s', [$i32('FFFFFFFF'), $i32('80000000')], 0x1);
    });
    test('gt_s-12', () {
      returns(module, 'gt_s', [$i32('80000000'), $i32('7FFFFFFF')], 0);
    });
    test('gt_s-13', () {
      returns(module, 'gt_s', [$i32('7FFFFFFF'), $i32('80000000')], 0x1);
    });
    test('gt_u-0', () {
      returns(module, 'gt_u', [0, 0], 0);
    });
    test('gt_u-1', () {
      returns(module, 'gt_u', [0x1, 0x1], 0);
    });
    test('gt_u-2', () {
      returns(module, 'gt_u', [$i32('FFFFFFFF'), 0x1], 0x1);
    });
    test('gt_u-3', () {
      returns(module, 'gt_u', [$i32('80000000'), $i32('80000000')], 0);
    });
    test('gt_u-4', () {
      returns(module, 'gt_u', [$i32('7FFFFFFF'), $i32('7FFFFFFF')], 0);
    });
    test('gt_u-5', () {
      returns(module, 'gt_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0);
    });
    test('gt_u-6', () {
      returns(module, 'gt_u', [0x1, 0], 0x1);
    });
    test('gt_u-7', () {
      returns(module, 'gt_u', [0, 0x1], 0);
    });
    test('gt_u-8', () {
      returns(module, 'gt_u', [$i32('80000000'), 0], 0x1);
    });
    test('gt_u-9', () {
      returns(module, 'gt_u', [0, $i32('80000000')], 0);
    });
    test('gt_u-10', () {
      returns(module, 'gt_u', [$i32('80000000'), $i32('FFFFFFFF')], 0);
    });
    test('gt_u-11', () {
      returns(module, 'gt_u', [$i32('FFFFFFFF'), $i32('80000000')], 0x1);
    });
    test('gt_u-12', () {
      returns(module, 'gt_u', [$i32('80000000'), $i32('7FFFFFFF')], 0x1);
    });
    test('gt_u-13', () {
      returns(module, 'gt_u', [$i32('7FFFFFFF'), $i32('80000000')], 0);
    });
    test('ge_s-0', () {
      returns(module, 'ge_s', [0, 0], 0x1);
    });
    test('ge_s-1', () {
      returns(module, 'ge_s', [0x1, 0x1], 0x1);
    });
    test('ge_s-2', () {
      returns(module, 'ge_s', [$i32('FFFFFFFF'), 0x1], 0);
    });
    test('ge_s-3', () {
      returns(module, 'ge_s', [$i32('80000000'), $i32('80000000')], 0x1);
    });
    test('ge_s-4', () {
      returns(module, 'ge_s', [$i32('7FFFFFFF'), $i32('7FFFFFFF')], 0x1);
    });
    test('ge_s-5', () {
      returns(module, 'ge_s', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0x1);
    });
    test('ge_s-6', () {
      returns(module, 'ge_s', [0x1, 0], 0x1);
    });
    test('ge_s-7', () {
      returns(module, 'ge_s', [0, 0x1], 0);
    });
    test('ge_s-8', () {
      returns(module, 'ge_s', [$i32('80000000'), 0], 0);
    });
    test('ge_s-9', () {
      returns(module, 'ge_s', [0, $i32('80000000')], 0x1);
    });
    test('ge_s-10', () {
      returns(module, 'ge_s', [$i32('80000000'), $i32('FFFFFFFF')], 0);
    });
    test('ge_s-11', () {
      returns(module, 'ge_s', [$i32('FFFFFFFF'), $i32('80000000')], 0x1);
    });
    test('ge_s-12', () {
      returns(module, 'ge_s', [$i32('80000000'), $i32('7FFFFFFF')], 0);
    });
    test('ge_s-13', () {
      returns(module, 'ge_s', [$i32('7FFFFFFF'), $i32('80000000')], 0x1);
    });
    test('ge_u-0', () {
      returns(module, 'ge_u', [0, 0], 0x1);
    });
    test('ge_u-1', () {
      returns(module, 'ge_u', [0x1, 0x1], 0x1);
    });
    test('ge_u-2', () {
      returns(module, 'ge_u', [$i32('FFFFFFFF'), 0x1], 0x1);
    });
    test('ge_u-3', () {
      returns(module, 'ge_u', [$i32('80000000'), $i32('80000000')], 0x1);
    });
    test('ge_u-4', () {
      returns(module, 'ge_u', [$i32('7FFFFFFF'), $i32('7FFFFFFF')], 0x1);
    });
    test('ge_u-5', () {
      returns(module, 'ge_u', [$i32('FFFFFFFF'), $i32('FFFFFFFF')], 0x1);
    });
    test('ge_u-6', () {
      returns(module, 'ge_u', [0x1, 0], 0x1);
    });
    test('ge_u-7', () {
      returns(module, 'ge_u', [0, 0x1], 0);
    });
    test('ge_u-8', () {
      returns(module, 'ge_u', [$i32('80000000'), 0], 0x1);
    });
    test('ge_u-9', () {
      returns(module, 'ge_u', [0, $i32('80000000')], 0);
    });
    test('ge_u-10', () {
      returns(module, 'ge_u', [$i32('80000000'), $i32('FFFFFFFF')], 0);
    });
    test('ge_u-11', () {
      returns(module, 'ge_u', [$i32('FFFFFFFF'), $i32('80000000')], 0x1);
    });
    test('ge_u-12', () {
      returns(module, 'ge_u', [$i32('80000000'), $i32('7FFFFFFF')], 0x1);
    });
    test('ge_u-13', () {
      returns(module, 'ge_u', [$i32('7FFFFFFF'), $i32('80000000')], 0);
    });
  });
}
