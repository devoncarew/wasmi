// Generated from spec/test/core/func_ptrs.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('func_ptrs.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/func_ptrs/func_ptrs.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('one_0', () => m.$('one', []), 0xD);
    returns('two_0', () => m.$('two', [0xD]), 0xE);
    returns('three_0', () => m.$('three', [0xD]), 0xB);
    action('four_0', () => m.$('four', [0x53]));
  });

  // assertInvalid('invalid func_ptrs.1.wasm', 'func_ptrs/func_ptrs.1.wasm', 'unknown table');
  // assertInvalid('invalid func_ptrs.2.wasm', 'func_ptrs/func_ptrs.2.wasm', 'unknown table');
  // assertInvalid('invalid func_ptrs.3.wasm', 'func_ptrs/func_ptrs.3.wasm', 'type mismatch');
  // assertInvalid('invalid func_ptrs.4.wasm', 'func_ptrs/func_ptrs.4.wasm', 'constant expression required');
  // assertInvalid('invalid func_ptrs.5.wasm', 'func_ptrs/func_ptrs.5.wasm', 'constant expression required');
  // assertInvalid('invalid func_ptrs.6.wasm', 'func_ptrs/func_ptrs.6.wasm', 'unknown type');
  // assertInvalid('invalid func_ptrs.7.wasm', 'func_ptrs/func_ptrs.7.wasm', 'unknown type');

  group('func_ptrs.8.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/func_ptrs/func_ptrs.8.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('callt_0', () => m.$('callt', [0]), 1);
    returns('callt_1', () => m.$('callt', [1]), 2);
    returns('callt_2', () => m.$('callt', [2]), 3);
    returns('callt_3', () => m.$('callt', [3]), 4);
    returns('callt_4', () => m.$('callt', [4]), 5);
    returns('callt_5', () => m.$('callt', [5]), 1);
    returns('callt_6', () => m.$('callt', [6]), 3);
    traps(
      'callt_7',
      () => m.$('callt', [7]),
      'undefined element',
      skip: 'failed',
    );
    traps(
      'callt_8',
      () => m.$('callt', [0x64]),
      'undefined element',
      skip: 'failed',
    );
    traps(
      'callt_9',
      () => m.$('callt', [$i32('FFFFFFFF')]),
      'undefined element',
      skip: 'failed',
    );
    returns('callu_0', () => m.$('callu', [0]), 1);
    returns('callu_1', () => m.$('callu', [1]), 2);
    returns('callu_2', () => m.$('callu', [2]), 3);
    returns('callu_3', () => m.$('callu', [3]), 4);
    returns('callu_4', () => m.$('callu', [4]), 5);
    returns('callu_5', () => m.$('callu', [5]), 1);
    returns('callu_6', () => m.$('callu', [6]), 3);
    traps(
      'callu_7',
      () => m.$('callu', [7]),
      'undefined element',
      skip: 'failed',
    );
    traps(
      'callu_8',
      () => m.$('callu', [0x64]),
      'undefined element',
      skip: 'failed',
    );
    traps(
      'callu_9',
      () => m.$('callu', [$i32('FFFFFFFF')]),
      'undefined element',
      skip: 'failed',
    );
  });

  group('func_ptrs.9.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/func_ptrs/func_ptrs.9.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('callt_0', () => m.$('callt', [0]), 1);
    returns('callt_1', () => m.$('callt', [1]), 2);
  });
}
