// Generated from spec/test/core/table_get.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('table_get.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/table_get/table_get.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    action('init_0', () => m.$('init', [$externref('1')]));
    returns('get_externref_0', () => m.$('get-externref', [0]), null);
    returns(
        'get_externref_1', () => m.$('get-externref', [1]), $externref('1'));
    returns('get_funcref_0', () => m.$('get-funcref', [0]), null);
    returns('is_null_funcref_0', () => m.$('is_null-funcref', [1]), 0);
    returns('is_null_funcref_1', () => m.$('is_null-funcref', [2]), 0);
    traps('get_externref_2', () => m.$('get-externref', [2]),
        'out of bounds table access');
    traps('get_funcref_1', () => m.$('get-funcref', [3]),
        'out of bounds table access');
    traps('get_externref_3', () => m.$('get-externref', [$i32('FFFFFFFF')]),
        'out of bounds table access');
    traps('get_funcref_2', () => m.$('get-funcref', [$i32('FFFFFFFF')]),
        'out of bounds table access');
  });

  // assertInvalid('invalid table_get.1.wasm', 'table_get/table_get.1.wasm', 'type mismatch');
  // assertInvalid('invalid table_get.2.wasm', 'table_get/table_get.2.wasm', 'type mismatch');
  // assertInvalid('invalid table_get.3.wasm', 'table_get/table_get.3.wasm', 'type mismatch');
  // assertInvalid('invalid table_get.4.wasm', 'table_get/table_get.4.wasm', 'type mismatch');
  // assertInvalid('invalid table_get.5.wasm', 'table_get/table_get.5.wasm', 'type mismatch');
}
