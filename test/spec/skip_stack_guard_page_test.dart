// Generated from spec/test/core/skip-stack-guard-page.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('skip-stack-guard-page', () {
    group('skip-stack-guard-page.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File(
            'test/spec/skip-stack-guard-page/skip-stack-guard-page.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });
  });
}
