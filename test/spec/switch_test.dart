// Generated from spec/test/core/switch.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('switch.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/switch/switch.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('stmt_0', () => m.$('stmt', [0]), 0);
    returns('stmt_1', () => m.$('stmt', [1]), $i32('FFFFFFFF'));
    returns('stmt_2', () => m.$('stmt', [2]), $i32('FFFFFFFE'));
    returns('stmt_3', () => m.$('stmt', [3]), $i32('FFFFFFFD'));
    returns('stmt_4', () => m.$('stmt', [4]), 0x64);
    returns('stmt_5', () => m.$('stmt', [5]), 0x65);
    returns('stmt_6', () => m.$('stmt', [6]), 0x66);
    returns('stmt_7', () => m.$('stmt', [7]), 0x64);
    returns('stmt_8', () => m.$('stmt', [$i32('FFFFFFF6')]), 0x66);
    returns('expr_0', () => m.$('expr', [0]), 0);
    returns('expr_1', () => m.$('expr', [1]), $i64('FFFFFFFFFFFFFFFF'));
    returns('expr_2', () => m.$('expr', [2]), $i64('FFFFFFFFFFFFFFFE'));
    returns('expr_3', () => m.$('expr', [3]), $i64('FFFFFFFFFFFFFFFD'));
    returns('expr_4', () => m.$('expr', [6]), 0x65);
    returns('expr_5', () => m.$('expr', [7]), $i64('FFFFFFFFFFFFFFFB'));
    returns('expr_6', () => m.$('expr', [$i64('FFFFFFFFFFFFFFF6')]), 0x64);
    returns('arg_0', () => m.$('arg', [0]), 0x6E);
    returns('arg_1', () => m.$('arg', [1]), 0xC);
    returns('arg_2', () => m.$('arg', [2]), 4);
    returns('arg_3', () => m.$('arg', [3]), 0x45C);
    returns('arg_4', () => m.$('arg', [4]), 0x76);
    returns('arg_5', () => m.$('arg', [5]), 0x14);
    returns('arg_6', () => m.$('arg', [6]), 0xC);
    returns('arg_7', () => m.$('arg', [7]), 0x464);
    returns('arg_8', () => m.$('arg', [8]), 0x7E);
    returns('corner_0', () => m.$('corner', []), 1);
  });

  // assertInvalid('invalid switch.1.wasm', 'switch/switch.1.wasm', 'unknown label');
}
