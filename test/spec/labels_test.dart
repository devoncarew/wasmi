// Generated from spec/test/core/labels.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('labels.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/labels/labels.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('block_0', () => m.$('block', []), 1);
    returns('loop1_0', () => m.$('loop1', []), 5);
    returns('loop2_0', () => m.$('loop2', []), 8);
    returns('loop3_0', () => m.$('loop3', []), 1);
    returns('loop4_0', () => m.$('loop4', [8]), 0x10);
    returns('loop5_0', () => m.$('loop5', []), 2);
    returns('loop6_0', () => m.$('loop6', []), 3);
    returns('if_0', () => m.$('if', []), 5);
    returns('if2_0', () => m.$('if2', []), 5);
    returns('switch_0', () => m.$('switch', [0]), 0x32);
    returns('switch_1', () => m.$('switch', [1]), 0x14);
    returns('switch_2', () => m.$('switch', [2]), 0x14);
    returns('switch_3', () => m.$('switch', [3]), 3);
    returns('switch_4', () => m.$('switch', [4]), 0x32);
    returns('switch_5', () => m.$('switch', [5]), 0x32);
    returns('return_0', () => m.$('return', [0]), 0);
    returns('return_1', () => m.$('return', [1]), 2);
    returns('return_2', () => m.$('return', [2]), 2);
    returns('br_if0_0', () => m.$('br_if0', []), 0x1D);
    returns('br_if1_0', () => m.$('br_if1', []), 1);
    returns('br_if2_0', () => m.$('br_if2', []), 1);
    returns('br_if3_0', () => m.$('br_if3', []), 2);
    returns('br_0', () => m.$('br', []), 1);
    returns('shadowing_0', () => m.$('shadowing', []), 1);
    returns('redefinition_0', () => m.$('redefinition', []), 5);
  });

  // assertInvalid('invalid labels.1.wasm', 'labels/labels.1.wasm', 'type mismatch');
  // assertInvalid('invalid labels.2.wasm', 'labels/labels.2.wasm', 'type mismatch');
  // assertInvalid('invalid labels.3.wasm', 'labels/labels.3.wasm', 'type mismatch');
}
