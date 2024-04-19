// Generated from spec/test/core/inline-module.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('inline-module', () {
    group('inline-module.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(
            File('test/spec/inline-module/inline-module.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });
  });
}
