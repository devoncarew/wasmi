// Generated from spec/test/core/unreached-valid.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('unreached-valid', () {
    group('unreached-valid.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/unreached-valid/unreached-valid.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      traps('select_trap_left_0', () => m.$('select-trap-left', [1]),
          'unreachable');
      traps('select_trap_left_1', () => m.$('select-trap-left', [0]),
          'unreachable');
      traps('select_trap_right_0', () => m.$('select-trap-right', [1]),
          'unreachable');
      traps('select_trap_right_1', () => m.$('select-trap-right', [0]),
          'unreachable');
    });

    group('unreached-valid.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/unreached-valid/unreached-valid.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      traps('meet_bottom_0', () => m.$('meet-bottom', []), 'unreachable');
    });
  });
}
