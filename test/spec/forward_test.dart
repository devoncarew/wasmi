// Generated from spec/test/core/forward.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('forward.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/forward/forward.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('even_0', () => m.$('even', [0xD]), 0);
    returns('even_1', () => m.$('even', [0x14]), 1);
    returns('odd_0', () => m.$('odd', [0xD]), 1);
    returns('odd_1', () => m.$('odd', [0x14]), 0);
  });
}
