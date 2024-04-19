// Generated from spec/test/core/fac.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('fac.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/fac/fac.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns(
        'fac_rec_0', () => m.$('fac-rec', [0x19]), $i64('619FB0907BC00000'));
    returns(
        'fac_iter_0', () => m.$('fac-iter', [0x19]), $i64('619FB0907BC00000'));
    returns('fac_rec_named_0', () => m.$('fac-rec-named', [0x19]),
        $i64('619FB0907BC00000'));
    returns('fac_iter_named_0', () => m.$('fac-iter-named', [0x19]),
        $i64('619FB0907BC00000'));
    returns(
        'fac_opt_0', () => m.$('fac-opt', [0x19]), $i64('619FB0907BC00000'));
    returns(
        'fac_ssa_0', () => m.$('fac-ssa', [0x19]), $i64('619FB0907BC00000'));
  });
}
