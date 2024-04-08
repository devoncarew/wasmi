// Generated from spec/test/core/ref_null.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('ref_null.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/ref_null/ref_null.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('externref_0', () => m.$('externref', []), null);
    returns('funcref_0', () => m.$('funcref', []), null);
  });
}
