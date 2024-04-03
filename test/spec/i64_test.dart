// Generated from spec/test/core/i64.wast.

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/format.dart';
import '_framework.dart';

void main() {
  group('i64.0.wasm', () {
    late Module module;

    setUpAll(() {
      module = Module.parse(File('test/spec/i64/i64.0.wasm'));
    });

    test('add-0', () {
      returns(module, 'add', [0x1, 0x1], 0x2);
    });
    test('add-1', () {
      returns(module, 'add', [0x1, 0], 0x1);
    });
    test('add-2', () {
      returns(
          module,
          'add',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')],
          $i64('FFFFFFFFFFFFFFFE'));
    });
    test('add-3', () {
      returns(module, 'add', [$i64('FFFFFFFFFFFFFFFF'), 0x1], 0);
    });
    test('add-4', () {
      returns(module, 'add', [$i64('7FFFFFFFFFFFFFFF'), 0x1],
          $i64('8000000000000000'));
    });
    test('add-5', () {
      returns(
          module,
          'add',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')],
          $i64('7FFFFFFFFFFFFFFF'));
    });
    test('add-6', () {
      returns(module, 'add',
          [$i64('8000000000000000'), $i64('8000000000000000')], 0);
    });
    test('add-7', () {
      returns(module, 'add', [$i64('3FFFFFFF'), 0x1], $i64('40000000'));
    });
    test('sub-0', () {
      returns(module, 'sub', [0x1, 0x1], 0);
    });
    test('sub-1', () {
      returns(module, 'sub', [0x1, 0], 0x1);
    });
    test('sub-2', () {
      returns(module, 'sub',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('sub-3', () {
      returns(
          module,
          'sub',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')],
          $i64('8000000000000000'));
    });
    test('sub-4', () {
      returns(module, 'sub', [$i64('8000000000000000'), 0x1],
          $i64('7FFFFFFFFFFFFFFF'));
    });
    test('sub-5', () {
      returns(module, 'sub',
          [$i64('8000000000000000'), $i64('8000000000000000')], 0);
    });
    test('sub-6', () {
      returns(module, 'sub', [$i64('3FFFFFFF'), $i64('FFFFFFFFFFFFFFFF')],
          $i64('40000000'));
    });
    test('mul-0', () {
      returns(module, 'mul', [0x1, 0x1], 0x1);
    });
    test('mul-1', () {
      returns(module, 'mul', [0x1, 0], 0);
    });
    test('mul-2', () {
      returns(module, 'mul',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('mul-3', () {
      returns(module, 'mul', [$i64('1000000000000000'), 0x1000], 0);
    });
    test('mul-4', () {
      returns(module, 'mul', [$i64('8000000000000000'), 0], 0);
    });
    test('mul-5', () {
      returns(
          module,
          'mul',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')],
          $i64('8000000000000000'));
    });
    test('mul-6', () {
      returns(
          module,
          'mul',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')],
          $i64('8000000000000001'));
    });
    test('mul-7', () {
      returns(
          module,
          'mul',
          [$i64('123456789ABCDEF'), $i64('FEDCBA9876543210')],
          $i64('2236D88FE5618CF0'));
    });
    test('mul-8', () {
      returns(module, 'mul',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('div_s-0 traps', () {
      traps(module, 'div_s', [0x1, 0], 'integer divide by zero');
    });
    test('div_s-1 traps', () {
      traps(module, 'div_s', [0, 0], 'integer divide by zero');
    });
    test('div_s-2 traps', () {
      traps(
          module,
          'div_s',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')],
          'integer overflow');
    });
    test('div_s-3 traps', () {
      traps(module, 'div_s', [$i64('8000000000000000'), 0],
          'integer divide by zero');
    });
    test('div_s-4', () {
      returns(module, 'div_s', [0x1, 0x1], 0x1);
    });
    test('div_s-5', () {
      returns(module, 'div_s', [0, 0x1], 0);
    });
    test('div_s-6', () {
      returns(module, 'div_s', [0, $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('div_s-7', () {
      returns(module, 'div_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('div_s-8', () {
      returns(module, 'div_s', [$i64('8000000000000000'), 0x2],
          $i64('C000000000000000'));
    });
    test('div_s-9', () {
      returns(module, 'div_s', [$i64('8000000000000001'), 0x3E8],
          $i64('FFDF3B645A1CAC09'));
    });
    test('div_s-10', () {
      returns(module, 'div_s', [0x5, 0x2], 0x2);
    });
    test('div_s-11', () {
      returns(module, 'div_s', [$i64('FFFFFFFFFFFFFFFB'), 0x2],
          $i64('FFFFFFFFFFFFFFFE'));
    });
    test('div_s-12', () {
      returns(module, 'div_s', [0x5, $i64('FFFFFFFFFFFFFFFE')],
          $i64('FFFFFFFFFFFFFFFE'));
    });
    test('div_s-13', () {
      returns(module, 'div_s',
          [$i64('FFFFFFFFFFFFFFFB'), $i64('FFFFFFFFFFFFFFFE')], 0x2);
    });
    test('div_s-14', () {
      returns(module, 'div_s', [0x7, 0x3], 0x2);
    });
    test('div_s-15', () {
      returns(module, 'div_s', [$i64('FFFFFFFFFFFFFFF9'), 0x3],
          $i64('FFFFFFFFFFFFFFFE'));
    });
    test('div_s-16', () {
      returns(module, 'div_s', [0x7, $i64('FFFFFFFFFFFFFFFD')],
          $i64('FFFFFFFFFFFFFFFE'));
    });
    test('div_s-17', () {
      returns(module, 'div_s',
          [$i64('FFFFFFFFFFFFFFF9'), $i64('FFFFFFFFFFFFFFFD')], 0x2);
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
      returns(module, 'div_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('div_u-5', () {
      returns(module, 'div_u',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('div_u-6', () {
      returns(module, 'div_u', [$i64('8000000000000000'), 0x2],
          $i64('4000000000000000'));
    });
    test('div_u-7', () {
      returns(module, 'div_u', [$i64('8FF00FF00FF00FF0'), $i64('100000001')],
          $i64('8FF00FEF'));
    });
    test('div_u-8', () {
      returns(module, 'div_u', [$i64('8000000000000001'), 0x3E8],
          $i64('20C49BA5E353F7'));
    });
    test('div_u-9', () {
      returns(module, 'div_u', [0x5, 0x2], 0x2);
    });
    test('div_u-10', () {
      returns(module, 'div_u', [$i64('FFFFFFFFFFFFFFFB'), 0x2],
          $i64('7FFFFFFFFFFFFFFD'));
    });
    test('div_u-11', () {
      returns(module, 'div_u', [0x5, $i64('FFFFFFFFFFFFFFFE')], 0);
    });
    test('div_u-12', () {
      returns(module, 'div_u',
          [$i64('FFFFFFFFFFFFFFFB'), $i64('FFFFFFFFFFFFFFFE')], 0);
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
      returns(module, 'rem_s',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('rem_s-3', () {
      returns(module, 'rem_s', [0x1, 0x1], 0);
    });
    test('rem_s-4', () {
      returns(module, 'rem_s', [0, 0x1], 0);
    });
    test('rem_s-5', () {
      returns(module, 'rem_s', [0, $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('rem_s-6', () {
      returns(module, 'rem_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('rem_s-7', () {
      returns(module, 'rem_s',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('rem_s-8', () {
      returns(module, 'rem_s', [$i64('8000000000000000'), 0x2], 0);
    });
    test('rem_s-9', () {
      returns(module, 'rem_s', [$i64('8000000000000001'), 0x3E8],
          $i64('FFFFFFFFFFFFFCD9'));
    });
    test('rem_s-10', () {
      returns(module, 'rem_s', [0x5, 0x2], 0x1);
    });
    test('rem_s-11', () {
      returns(module, 'rem_s', [$i64('FFFFFFFFFFFFFFFB'), 0x2],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('rem_s-12', () {
      returns(module, 'rem_s', [0x5, $i64('FFFFFFFFFFFFFFFE')], 0x1);
    });
    test('rem_s-13', () {
      returns(
          module,
          'rem_s',
          [$i64('FFFFFFFFFFFFFFFB'), $i64('FFFFFFFFFFFFFFFE')],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('rem_s-14', () {
      returns(module, 'rem_s', [0x7, 0x3], 0x1);
    });
    test('rem_s-15', () {
      returns(module, 'rem_s', [$i64('FFFFFFFFFFFFFFF9'), 0x3],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('rem_s-16', () {
      returns(module, 'rem_s', [0x7, $i64('FFFFFFFFFFFFFFFD')], 0x1);
    });
    test('rem_s-17', () {
      returns(
          module,
          'rem_s',
          [$i64('FFFFFFFFFFFFFFF9'), $i64('FFFFFFFFFFFFFFFD')],
          $i64('FFFFFFFFFFFFFFFF'));
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
      returns(module, 'rem_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('rem_u-5', () {
      returns(
          module,
          'rem_u',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')],
          $i64('8000000000000000'));
    });
    test('rem_u-6', () {
      returns(module, 'rem_u', [$i64('8000000000000000'), 0x2], 0);
    });
    test('rem_u-7', () {
      returns(module, 'rem_u', [$i64('8FF00FF00FF00FF0'), $i64('100000001')],
          $i64('80000001'));
    });
    test('rem_u-8', () {
      returns(module, 'rem_u', [$i64('8000000000000001'), 0x3E8], 0x329);
    });
    test('rem_u-9', () {
      returns(module, 'rem_u', [0x5, 0x2], 0x1);
    });
    test('rem_u-10', () {
      returns(module, 'rem_u', [$i64('FFFFFFFFFFFFFFFB'), 0x2], 0x1);
    });
    test('rem_u-11', () {
      returns(module, 'rem_u', [0x5, $i64('FFFFFFFFFFFFFFFE')], 0x5);
    });
    test('rem_u-12', () {
      returns(
          module,
          'rem_u',
          [$i64('FFFFFFFFFFFFFFFB'), $i64('FFFFFFFFFFFFFFFE')],
          $i64('FFFFFFFFFFFFFFFB'));
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
      returns(module, 'and',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0);
    });
    test('and-5', () {
      returns(
          module,
          'and',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')],
          $i64('7FFFFFFFFFFFFFFF'));
    });
    test('and-6', () {
      returns(module, 'and', [$i64('F0F0FFFF'), $i64('FFFFF0F0')],
          $i64('F0F0F0F0'));
    });
    test('and-7', () {
      returns(
          module,
          'and',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')],
          $i64('FFFFFFFFFFFFFFFF'));
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
          module,
          'or',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('or-5', () {
      returns(module, 'or', [$i64('8000000000000000'), 0],
          $i64('8000000000000000'));
    });
    test('or-6', () {
      returns(
          module, 'or', [$i64('F0F0FFFF'), $i64('FFFFF0F0')], $i64('FFFFFFFF'));
    });
    test('or-7', () {
      returns(
          module,
          'or',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')],
          $i64('FFFFFFFFFFFFFFFF'));
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
      returns(
          module,
          'xor',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('xor-5', () {
      returns(module, 'xor', [$i64('8000000000000000'), 0],
          $i64('8000000000000000'));
    });
    test('xor-6', () {
      returns(
          module,
          'xor',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')],
          $i64('7FFFFFFFFFFFFFFF'));
    });
    test('xor-7', () {
      returns(
          module,
          'xor',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')],
          $i64('8000000000000000'));
    });
    test('xor-8', () {
      returns(
          module, 'xor', [$i64('F0F0FFFF'), $i64('FFFFF0F0')], $i64('F0F0F0F'));
    });
    test('xor-9', () {
      returns(module, 'xor',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('shl-0', () {
      returns(module, 'shl', [0x1, 0x1], 0x2);
    });
    test('shl-1', () {
      returns(module, 'shl', [0x1, 0], 0x1);
    });
    test('shl-2', () {
      returns(module, 'shl', [$i64('7FFFFFFFFFFFFFFF'), 0x1],
          $i64('FFFFFFFFFFFFFFFE'));
    });
    test('shl-3', () {
      returns(module, 'shl', [$i64('FFFFFFFFFFFFFFFF'), 0x1],
          $i64('FFFFFFFFFFFFFFFE'));
    });
    test('shl-4', () {
      returns(module, 'shl', [$i64('8000000000000000'), 0x1], 0);
    });
    test('shl-5', () {
      returns(module, 'shl', [$i64('4000000000000000'), 0x1],
          $i64('8000000000000000'));
    });
    test('shl-6', () {
      returns(module, 'shl', [0x1, 0x3F], $i64('8000000000000000'));
    });
    test('shl-7', () {
      returns(module, 'shl', [0x1, 0x40], 0x1);
    });
    test('shl-8', () {
      returns(module, 'shl', [0x1, 0x41], 0x2);
    });
    test('shl-9', () {
      returns(module, 'shl', [0x1, $i64('FFFFFFFFFFFFFFFF')],
          $i64('8000000000000000'));
    });
    test('shl-10', () {
      returns(module, 'shl', [0x1, $i64('7FFFFFFFFFFFFFFF')],
          $i64('8000000000000000'));
    });
    test('shr_s-0', () {
      returns(module, 'shr_s', [0x1, 0x1], 0);
    });
    test('shr_s-1', () {
      returns(module, 'shr_s', [0x1, 0], 0x1);
    });
    test('shr_s-2', () {
      returns(module, 'shr_s', [$i64('FFFFFFFFFFFFFFFF'), 0x1],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('shr_s-3', () {
      returns(module, 'shr_s', [$i64('7FFFFFFFFFFFFFFF'), 0x1],
          $i64('3FFFFFFFFFFFFFFF'));
    });
    test('shr_s-4', () {
      returns(module, 'shr_s', [$i64('8000000000000000'), 0x1],
          $i64('C000000000000000'));
    });
    test('shr_s-5', () {
      returns(module, 'shr_s', [$i64('4000000000000000'), 0x1],
          $i64('2000000000000000'));
    });
    test('shr_s-6', () {
      returns(module, 'shr_s', [0x1, 0x40], 0x1);
    });
    test('shr_s-7', () {
      returns(module, 'shr_s', [0x1, 0x41], 0);
    });
    test('shr_s-8', () {
      returns(module, 'shr_s', [0x1, $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('shr_s-9', () {
      returns(module, 'shr_s', [0x1, $i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('shr_s-10', () {
      returns(module, 'shr_s', [0x1, $i64('8000000000000000')], 0x1);
    });
    test('shr_s-11', () {
      returns(module, 'shr_s', [$i64('8000000000000000'), 0x3F],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('shr_s-12', () {
      returns(module, 'shr_s', [$i64('FFFFFFFFFFFFFFFF'), 0x40],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('shr_s-13', () {
      returns(module, 'shr_s', [$i64('FFFFFFFFFFFFFFFF'), 0x41],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('shr_s-14', () {
      returns(
          module,
          'shr_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('shr_s-15', () {
      returns(
          module,
          'shr_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('shr_s-16', () {
      returns(
          module,
          'shr_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('shr_u-0', () {
      returns(module, 'shr_u', [0x1, 0x1], 0);
    });
    test('shr_u-1', () {
      returns(module, 'shr_u', [0x1, 0], 0x1);
    });
    test('shr_u-2', () {
      returns(module, 'shr_u', [$i64('FFFFFFFFFFFFFFFF'), 0x1],
          $i64('7FFFFFFFFFFFFFFF'));
    });
    test('shr_u-3', () {
      returns(module, 'shr_u', [$i64('7FFFFFFFFFFFFFFF'), 0x1],
          $i64('3FFFFFFFFFFFFFFF'));
    });
    test('shr_u-4', () {
      returns(module, 'shr_u', [$i64('8000000000000000'), 0x1],
          $i64('4000000000000000'));
    });
    test('shr_u-5', () {
      returns(module, 'shr_u', [$i64('4000000000000000'), 0x1],
          $i64('2000000000000000'));
    });
    test('shr_u-6', () {
      returns(module, 'shr_u', [0x1, 0x40], 0x1);
    });
    test('shr_u-7', () {
      returns(module, 'shr_u', [0x1, 0x41], 0);
    });
    test('shr_u-8', () {
      returns(module, 'shr_u', [0x1, $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('shr_u-9', () {
      returns(module, 'shr_u', [0x1, $i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('shr_u-10', () {
      returns(module, 'shr_u', [0x1, $i64('8000000000000000')], 0x1);
    });
    test('shr_u-11', () {
      returns(module, 'shr_u', [$i64('8000000000000000'), 0x3F], 0x1);
    });
    test('shr_u-12', () {
      returns(module, 'shr_u', [$i64('FFFFFFFFFFFFFFFF'), 0x40],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('shr_u-13', () {
      returns(module, 'shr_u', [$i64('FFFFFFFFFFFFFFFF'), 0x41],
          $i64('7FFFFFFFFFFFFFFF'));
    });
    test('shr_u-14', () {
      returns(module, 'shr_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('shr_u-15', () {
      returns(module, 'shr_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('shr_u-16', () {
      returns(
          module,
          'shr_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('rotl-0', () {
      returns(module, 'rotl', [0x1, 0x1], 0x2);
    });
    test('rotl-1', () {
      returns(module, 'rotl', [0x1, 0], 0x1);
    });
    test('rotl-2', () {
      returns(module, 'rotl', [$i64('FFFFFFFFFFFFFFFF'), 0x1],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('rotl-3', () {
      returns(module, 'rotl', [0x1, 0x40], 0x1);
    });
    test('rotl-4', () {
      returns(module, 'rotl', [$i64('ABCD987602468ACE'), 0x1],
          $i64('579B30EC048D159D'));
    });
    test('rotl-5', () {
      returns(module, 'rotl', [$i64('FE000000DC000000'), 0x4],
          $i64('E000000DC000000F'));
    });
    test('rotl-6', () {
      returns(module, 'rotl', [$i64('ABCD1234EF567809'), 0x35],
          $i64('13579A2469DEACF'));
    });
    test('rotl-7', () {
      returns(module, 'rotl', [$i64('ABD1234EF567809C'), 0x3F],
          $i64('55E891A77AB3C04E'));
    });
    test('rotl-8', () {
      returns(module, 'rotl', [$i64('ABCD1234EF567809'), 0xF5],
          $i64('13579A2469DEACF'));
    });
    test('rotl-9', () {
      returns(
          module,
          'rotl',
          [$i64('ABCD7294EF567809'), $i64('FFFFFFFFFFFFFFED')],
          $i64('CF013579AE529DEA'));
    });
    test('rotl-10', () {
      returns(
          module,
          'rotl',
          [$i64('ABD1234EF567809C'), $i64('800000000000003F')],
          $i64('55E891A77AB3C04E'));
    });
    test('rotl-11', () {
      returns(module, 'rotl', [0x1, 0x3F], $i64('8000000000000000'));
    });
    test('rotl-12', () {
      returns(module, 'rotl', [$i64('8000000000000000'), 0x1], 0x1);
    });
    test('rotr-0', () {
      returns(module, 'rotr', [0x1, 0x1], $i64('8000000000000000'));
    });
    test('rotr-1', () {
      returns(module, 'rotr', [0x1, 0], 0x1);
    });
    test('rotr-2', () {
      returns(module, 'rotr', [$i64('FFFFFFFFFFFFFFFF'), 0x1],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('rotr-3', () {
      returns(module, 'rotr', [0x1, 0x40], 0x1);
    });
    test('rotr-4', () {
      returns(module, 'rotr', [$i64('ABCD987602468ACE'), 0x1],
          $i64('55E6CC3B01234567'));
    });
    test('rotr-5', () {
      returns(module, 'rotr', [$i64('FE000000DC000000'), 0x4],
          $i64('FE000000DC00000'));
    });
    test('rotr-6', () {
      returns(module, 'rotr', [$i64('ABCD1234EF567809'), 0x35],
          $i64('6891A77AB3C04D5E'));
    });
    test('rotr-7', () {
      returns(module, 'rotr', [$i64('ABD1234EF567809C'), 0x3F],
          $i64('57A2469DEACF0139'));
    });
    test('rotr-8', () {
      returns(module, 'rotr', [$i64('ABCD1234EF567809'), 0xF5],
          $i64('6891A77AB3C04D5E'));
    });
    test('rotr-9', () {
      returns(
          module,
          'rotr',
          [$i64('ABCD7294EF567809'), $i64('FFFFFFFFFFFFFFED')],
          $i64('94A77AB3C04D5E6B'));
    });
    test('rotr-10', () {
      returns(
          module,
          'rotr',
          [$i64('ABD1234EF567809C'), $i64('800000000000003F')],
          $i64('57A2469DEACF0139'));
    });
    test('rotr-11', () {
      returns(module, 'rotr', [0x1, 0x3F], 0x2);
    });
    test('rotr-12', () {
      returns(module, 'rotr', [$i64('8000000000000000'), 0x3F], 0x1);
    });
    test('clz-0', () {
      returns(module, 'clz', [$i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('clz-1', () {
      returns(module, 'clz', [0], 0x40);
    });
    test('clz-2', () {
      returns(module, 'clz', [0x8000], 0x30);
    });
    test('clz-3', () {
      returns(module, 'clz', [0xFF], 0x38);
    });
    test('clz-4', () {
      returns(module, 'clz', [$i64('8000000000000000')], 0);
    });
    test('clz-5', () {
      returns(module, 'clz', [0x1], 0x3F);
    });
    test('clz-6', () {
      returns(module, 'clz', [0x2], 0x3E);
    });
    test('clz-7', () {
      returns(module, 'clz', [$i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('ctz-0', () {
      returns(module, 'ctz', [$i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('ctz-1', () {
      returns(module, 'ctz', [0], 0x40);
    });
    test('ctz-2', () {
      returns(module, 'ctz', [0x8000], 0xF);
    });
    test('ctz-3', () {
      returns(module, 'ctz', [0x10000], 0x10);
    });
    test('ctz-4', () {
      returns(module, 'ctz', [$i64('8000000000000000')], 0x3F);
    });
    test('ctz-5', () {
      returns(module, 'ctz', [$i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('popcnt-0', () {
      returns(module, 'popcnt', [$i64('FFFFFFFFFFFFFFFF')], 0x40);
    });
    test('popcnt-1', () {
      returns(module, 'popcnt', [0], 0);
    });
    test('popcnt-2', () {
      returns(module, 'popcnt', [0x8000], 0x1);
    });
    test('popcnt-3', () {
      returns(module, 'popcnt', [$i64('8000800080008000')], 0x4);
    });
    test('popcnt-4', () {
      returns(module, 'popcnt', [$i64('7FFFFFFFFFFFFFFF')], 0x3F);
    });
    test('popcnt-5', () {
      returns(module, 'popcnt', [$i64('AAAAAAAA55555555')], 0x20);
    });
    test('popcnt-6', () {
      returns(module, 'popcnt', [$i64('99999999AAAAAAAA')], 0x20);
    });
    test('popcnt-7', () {
      returns(module, 'popcnt', [$i64('DEADBEEFDEADBEEF')], 0x30);
    });
    test('extend8_s-0', () {
      returns(module, 'extend8_s', [0], 0);
    });
    test('extend8_s-1', () {
      returns(module, 'extend8_s', [0x7F], 0x7F);
    });
    test('extend8_s-2', () {
      returns(module, 'extend8_s', [0x80], $i64('FFFFFFFFFFFFFF80'));
    });
    test('extend8_s-3', () {
      returns(module, 'extend8_s', [0xFF], $i64('FFFFFFFFFFFFFFFF'));
    });
    test('extend8_s-4', () {
      returns(module, 'extend8_s', [$i64('123456789ABCD00')], 0);
    });
    test('extend8_s-5', () {
      returns(module, 'extend8_s', [$i64('FEDCBA9876543280')],
          $i64('FFFFFFFFFFFFFF80'));
    });
    test('extend8_s-6', () {
      returns(module, 'extend8_s', [$i64('FFFFFFFFFFFFFFFF')],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('extend16_s-0', () {
      returns(module, 'extend16_s', [0], 0);
    });
    test('extend16_s-1', () {
      returns(module, 'extend16_s', [0x7FFF], 0x7FFF);
    });
    test('extend16_s-2', () {
      returns(module, 'extend16_s', [0x8000], $i64('FFFFFFFFFFFF8000'));
    });
    test('extend16_s-3', () {
      returns(module, 'extend16_s', [0xFFFF], $i64('FFFFFFFFFFFFFFFF'));
    });
    test('extend16_s-4', () {
      returns(module, 'extend16_s', [$i64('123456789ABC0000')], 0);
    });
    test('extend16_s-5', () {
      returns(module, 'extend16_s', [$i64('FEDCBA9876548000')],
          $i64('FFFFFFFFFFFF8000'));
    });
    test('extend16_s-6', () {
      returns(module, 'extend16_s', [$i64('FFFFFFFFFFFFFFFF')],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('extend32_s-0', () {
      returns(module, 'extend32_s', [0], 0);
    });
    test('extend32_s-1', () {
      returns(module, 'extend32_s', [0x7FFF], 0x7FFF);
    });
    test('extend32_s-2', () {
      returns(module, 'extend32_s', [0x8000], 0x8000);
    });
    test('extend32_s-3', () {
      returns(module, 'extend32_s', [0xFFFF], 0xFFFF);
    });
    test('extend32_s-4', () {
      returns(module, 'extend32_s', [$i64('7FFFFFFF')], $i64('7FFFFFFF'));
    });
    test('extend32_s-5', () {
      returns(
          module, 'extend32_s', [$i64('80000000')], $i64('FFFFFFFF80000000'));
    });
    test('extend32_s-6', () {
      returns(
          module, 'extend32_s', [$i64('FFFFFFFF')], $i64('FFFFFFFFFFFFFFFF'));
    });
    test('extend32_s-7', () {
      returns(module, 'extend32_s', [$i64('123456700000000')], 0);
    });
    test('extend32_s-8', () {
      returns(module, 'extend32_s', [$i64('FEDCBA9880000000')],
          $i64('FFFFFFFF80000000'));
    });
    test('extend32_s-9', () {
      returns(module, 'extend32_s', [$i64('FFFFFFFFFFFFFFFF')],
          $i64('FFFFFFFFFFFFFFFF'));
    });
    test('eqz-0', () {
      returns(module, 'eqz', [0], 0x1);
    });
    test('eqz-1', () {
      returns(module, 'eqz', [0x1], 0);
    });
    test('eqz-2', () {
      returns(module, 'eqz', [$i64('8000000000000000')], 0);
    });
    test('eqz-3', () {
      returns(module, 'eqz', [$i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('eqz-4', () {
      returns(module, 'eqz', [$i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('eq-0', () {
      returns(module, 'eq', [0, 0], 0x1);
    });
    test('eq-1', () {
      returns(module, 'eq', [0x1, 0x1], 0x1);
    });
    test('eq-2', () {
      returns(module, 'eq', [$i64('FFFFFFFFFFFFFFFF'), 0x1], 0);
    });
    test('eq-3', () {
      returns(module, 'eq',
          [$i64('8000000000000000'), $i64('8000000000000000')], 0x1);
    });
    test('eq-4', () {
      returns(module, 'eq',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('eq-5', () {
      returns(module, 'eq',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('eq-6', () {
      returns(module, 'eq', [0x1, 0], 0);
    });
    test('eq-7', () {
      returns(module, 'eq', [0, 0x1], 0);
    });
    test('eq-8', () {
      returns(module, 'eq', [$i64('8000000000000000'), 0], 0);
    });
    test('eq-9', () {
      returns(module, 'eq', [0, $i64('8000000000000000')], 0);
    });
    test('eq-10', () {
      returns(module, 'eq',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('eq-11', () {
      returns(module, 'eq',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0);
    });
    test('eq-12', () {
      returns(module, 'eq',
          [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('eq-13', () {
      returns(module, 'eq',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0);
    });
    test('ne-0', () {
      returns(module, 'ne', [0, 0], 0);
    });
    test('ne-1', () {
      returns(module, 'ne', [0x1, 0x1], 0);
    });
    test('ne-2', () {
      returns(module, 'ne', [$i64('FFFFFFFFFFFFFFFF'), 0x1], 0x1);
    });
    test('ne-3', () {
      returns(module, 'ne',
          [$i64('8000000000000000'), $i64('8000000000000000')], 0);
    });
    test('ne-4', () {
      returns(module, 'ne',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('ne-5', () {
      returns(module, 'ne',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('ne-6', () {
      returns(module, 'ne', [0x1, 0], 0x1);
    });
    test('ne-7', () {
      returns(module, 'ne', [0, 0x1], 0x1);
    });
    test('ne-8', () {
      returns(module, 'ne', [$i64('8000000000000000'), 0], 0x1);
    });
    test('ne-9', () {
      returns(module, 'ne', [0, $i64('8000000000000000')], 0x1);
    });
    test('ne-10', () {
      returns(module, 'ne',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('ne-11', () {
      returns(module, 'ne',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0x1);
    });
    test('ne-12', () {
      returns(module, 'ne',
          [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('ne-13', () {
      returns(module, 'ne',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0x1);
    });
    test('lt_s-0', () {
      returns(module, 'lt_s', [0, 0], 0);
    });
    test('lt_s-1', () {
      returns(module, 'lt_s', [0x1, 0x1], 0);
    });
    test('lt_s-2', () {
      returns(module, 'lt_s', [$i64('FFFFFFFFFFFFFFFF'), 0x1], 0x1);
    });
    test('lt_s-3', () {
      returns(module, 'lt_s',
          [$i64('8000000000000000'), $i64('8000000000000000')], 0);
    });
    test('lt_s-4', () {
      returns(module, 'lt_s',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('lt_s-5', () {
      returns(module, 'lt_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('lt_s-6', () {
      returns(module, 'lt_s', [0x1, 0], 0);
    });
    test('lt_s-7', () {
      returns(module, 'lt_s', [0, 0x1], 0x1);
    });
    test('lt_s-8', () {
      returns(module, 'lt_s', [$i64('8000000000000000'), 0], 0x1);
    });
    test('lt_s-9', () {
      returns(module, 'lt_s', [0, $i64('8000000000000000')], 0);
    });
    test('lt_s-10', () {
      returns(module, 'lt_s',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('lt_s-11', () {
      returns(module, 'lt_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0);
    });
    test('lt_s-12', () {
      returns(module, 'lt_s',
          [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('lt_s-13', () {
      returns(module, 'lt_s',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0);
    });
    test('lt_u-0', () {
      returns(module, 'lt_u', [0, 0], 0);
    });
    test('lt_u-1', () {
      returns(module, 'lt_u', [0x1, 0x1], 0);
    });
    test('lt_u-2', () {
      returns(module, 'lt_u', [$i64('FFFFFFFFFFFFFFFF'), 0x1], 0);
    });
    test('lt_u-3', () {
      returns(module, 'lt_u',
          [$i64('8000000000000000'), $i64('8000000000000000')], 0);
    });
    test('lt_u-4', () {
      returns(module, 'lt_u',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('lt_u-5', () {
      returns(module, 'lt_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('lt_u-6', () {
      returns(module, 'lt_u', [0x1, 0], 0);
    });
    test('lt_u-7', () {
      returns(module, 'lt_u', [0, 0x1], 0x1);
    });
    test('lt_u-8', () {
      returns(module, 'lt_u', [$i64('8000000000000000'), 0], 0);
    });
    test('lt_u-9', () {
      returns(module, 'lt_u', [0, $i64('8000000000000000')], 0x1);
    });
    test('lt_u-10', () {
      returns(module, 'lt_u',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('lt_u-11', () {
      returns(module, 'lt_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0);
    });
    test('lt_u-12', () {
      returns(module, 'lt_u',
          [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('lt_u-13', () {
      returns(module, 'lt_u',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0x1);
    });
    test('le_s-0', () {
      returns(module, 'le_s', [0, 0], 0x1);
    });
    test('le_s-1', () {
      returns(module, 'le_s', [0x1, 0x1], 0x1);
    });
    test('le_s-2', () {
      returns(module, 'le_s', [$i64('FFFFFFFFFFFFFFFF'), 0x1], 0x1);
    });
    test('le_s-3', () {
      returns(module, 'le_s',
          [$i64('8000000000000000'), $i64('8000000000000000')], 0x1);
    });
    test('le_s-4', () {
      returns(module, 'le_s',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('le_s-5', () {
      returns(module, 'le_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('le_s-6', () {
      returns(module, 'le_s', [0x1, 0], 0);
    });
    test('le_s-7', () {
      returns(module, 'le_s', [0, 0x1], 0x1);
    });
    test('le_s-8', () {
      returns(module, 'le_s', [$i64('8000000000000000'), 0], 0x1);
    });
    test('le_s-9', () {
      returns(module, 'le_s', [0, $i64('8000000000000000')], 0);
    });
    test('le_s-10', () {
      returns(module, 'le_s',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('le_s-11', () {
      returns(module, 'le_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0);
    });
    test('le_s-12', () {
      returns(module, 'le_s',
          [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('le_s-13', () {
      returns(module, 'le_s',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0);
    });
    test('le_u-0', () {
      returns(module, 'le_u', [0, 0], 0x1);
    });
    test('le_u-1', () {
      returns(module, 'le_u', [0x1, 0x1], 0x1);
    });
    test('le_u-2', () {
      returns(module, 'le_u', [$i64('FFFFFFFFFFFFFFFF'), 0x1], 0);
    });
    test('le_u-3', () {
      returns(module, 'le_u',
          [$i64('8000000000000000'), $i64('8000000000000000')], 0x1);
    });
    test('le_u-4', () {
      returns(module, 'le_u',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('le_u-5', () {
      returns(module, 'le_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('le_u-6', () {
      returns(module, 'le_u', [0x1, 0], 0);
    });
    test('le_u-7', () {
      returns(module, 'le_u', [0, 0x1], 0x1);
    });
    test('le_u-8', () {
      returns(module, 'le_u', [$i64('8000000000000000'), 0], 0);
    });
    test('le_u-9', () {
      returns(module, 'le_u', [0, $i64('8000000000000000')], 0x1);
    });
    test('le_u-10', () {
      returns(module, 'le_u',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('le_u-11', () {
      returns(module, 'le_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0);
    });
    test('le_u-12', () {
      returns(module, 'le_u',
          [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('le_u-13', () {
      returns(module, 'le_u',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0x1);
    });
    test('gt_s-0', () {
      returns(module, 'gt_s', [0, 0], 0);
    });
    test('gt_s-1', () {
      returns(module, 'gt_s', [0x1, 0x1], 0);
    });
    test('gt_s-2', () {
      returns(module, 'gt_s', [$i64('FFFFFFFFFFFFFFFF'), 0x1], 0);
    });
    test('gt_s-3', () {
      returns(module, 'gt_s',
          [$i64('8000000000000000'), $i64('8000000000000000')], 0);
    });
    test('gt_s-4', () {
      returns(module, 'gt_s',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('gt_s-5', () {
      returns(module, 'gt_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('gt_s-6', () {
      returns(module, 'gt_s', [0x1, 0], 0x1);
    });
    test('gt_s-7', () {
      returns(module, 'gt_s', [0, 0x1], 0);
    });
    test('gt_s-8', () {
      returns(module, 'gt_s', [$i64('8000000000000000'), 0], 0);
    });
    test('gt_s-9', () {
      returns(module, 'gt_s', [0, $i64('8000000000000000')], 0x1);
    });
    test('gt_s-10', () {
      returns(module, 'gt_s',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('gt_s-11', () {
      returns(module, 'gt_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0x1);
    });
    test('gt_s-12', () {
      returns(module, 'gt_s',
          [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('gt_s-13', () {
      returns(module, 'gt_s',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0x1);
    });
    test('gt_u-0', () {
      returns(module, 'gt_u', [0, 0], 0);
    });
    test('gt_u-1', () {
      returns(module, 'gt_u', [0x1, 0x1], 0);
    });
    test('gt_u-2', () {
      returns(module, 'gt_u', [$i64('FFFFFFFFFFFFFFFF'), 0x1], 0x1);
    });
    test('gt_u-3', () {
      returns(module, 'gt_u',
          [$i64('8000000000000000'), $i64('8000000000000000')], 0);
    });
    test('gt_u-4', () {
      returns(module, 'gt_u',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('gt_u-5', () {
      returns(module, 'gt_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('gt_u-6', () {
      returns(module, 'gt_u', [0x1, 0], 0x1);
    });
    test('gt_u-7', () {
      returns(module, 'gt_u', [0, 0x1], 0);
    });
    test('gt_u-8', () {
      returns(module, 'gt_u', [$i64('8000000000000000'), 0], 0x1);
    });
    test('gt_u-9', () {
      returns(module, 'gt_u', [0, $i64('8000000000000000')], 0);
    });
    test('gt_u-10', () {
      returns(module, 'gt_u',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('gt_u-11', () {
      returns(module, 'gt_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0x1);
    });
    test('gt_u-12', () {
      returns(module, 'gt_u',
          [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('gt_u-13', () {
      returns(module, 'gt_u',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0);
    });
    test('ge_s-0', () {
      returns(module, 'ge_s', [0, 0], 0x1);
    });
    test('ge_s-1', () {
      returns(module, 'ge_s', [0x1, 0x1], 0x1);
    });
    test('ge_s-2', () {
      returns(module, 'ge_s', [$i64('FFFFFFFFFFFFFFFF'), 0x1], 0);
    });
    test('ge_s-3', () {
      returns(module, 'ge_s',
          [$i64('8000000000000000'), $i64('8000000000000000')], 0x1);
    });
    test('ge_s-4', () {
      returns(module, 'ge_s',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('ge_s-5', () {
      returns(module, 'ge_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('ge_s-6', () {
      returns(module, 'ge_s', [0x1, 0], 0x1);
    });
    test('ge_s-7', () {
      returns(module, 'ge_s', [0, 0x1], 0);
    });
    test('ge_s-8', () {
      returns(module, 'ge_s', [$i64('8000000000000000'), 0], 0);
    });
    test('ge_s-9', () {
      returns(module, 'ge_s', [0, $i64('8000000000000000')], 0x1);
    });
    test('ge_s-10', () {
      returns(module, 'ge_s',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('ge_s-11', () {
      returns(module, 'ge_s',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0x1);
    });
    test('ge_s-12', () {
      returns(module, 'ge_s',
          [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')], 0);
    });
    test('ge_s-13', () {
      returns(module, 'ge_s',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0x1);
    });
    test('ge_u-0', () {
      returns(module, 'ge_u', [0, 0], 0x1);
    });
    test('ge_u-1', () {
      returns(module, 'ge_u', [0x1, 0x1], 0x1);
    });
    test('ge_u-2', () {
      returns(module, 'ge_u', [$i64('FFFFFFFFFFFFFFFF'), 0x1], 0x1);
    });
    test('ge_u-3', () {
      returns(module, 'ge_u',
          [$i64('8000000000000000'), $i64('8000000000000000')], 0x1);
    });
    test('ge_u-4', () {
      returns(module, 'ge_u',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('ge_u-5', () {
      returns(module, 'ge_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('FFFFFFFFFFFFFFFF')], 0x1);
    });
    test('ge_u-6', () {
      returns(module, 'ge_u', [0x1, 0], 0x1);
    });
    test('ge_u-7', () {
      returns(module, 'ge_u', [0, 0x1], 0);
    });
    test('ge_u-8', () {
      returns(module, 'ge_u', [$i64('8000000000000000'), 0], 0x1);
    });
    test('ge_u-9', () {
      returns(module, 'ge_u', [0, $i64('8000000000000000')], 0);
    });
    test('ge_u-10', () {
      returns(module, 'ge_u',
          [$i64('8000000000000000'), $i64('FFFFFFFFFFFFFFFF')], 0);
    });
    test('ge_u-11', () {
      returns(module, 'ge_u',
          [$i64('FFFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0x1);
    });
    test('ge_u-12', () {
      returns(module, 'ge_u',
          [$i64('8000000000000000'), $i64('7FFFFFFFFFFFFFFF')], 0x1);
    });
    test('ge_u-13', () {
      returns(module, 'ge_u',
          [$i64('7FFFFFFFFFFFFFFF'), $i64('8000000000000000')], 0);
    });
  });
}
