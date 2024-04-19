// Generated from spec/test/core/store.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('store.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/store/store.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('as_block_value_0', () => m.$('as-block-value', []), null /*void*/);
    returns('as_loop_value_0', () => m.$('as-loop-value', []), null /*void*/);
    returns('as_br_value_0', () => m.$('as-br-value', []), null /*void*/);
    returns('as_br_if_value_0', () => m.$('as-br_if-value', []), null /*void*/);
    returns('as_br_if_value_cond_0', () => m.$('as-br_if-value-cond', []),
        null /*void*/);
    returns('as_br_table_value_0', () => m.$('as-br_table-value', []),
        null /*void*/);
    returns(
        'as_return_value_0', () => m.$('as-return-value', []), null /*void*/);
    returns('as_if_then_0', () => m.$('as-if-then', []), null /*void*/);
    returns('as_if_else_0', () => m.$('as-if-else', []), null /*void*/);
  });

  // assertMalformed('malformed store.1.wat');
  // assertMalformed('malformed store.2.wat');
  // assertMalformed('malformed store.3.wat');
  // assertMalformed('malformed store.4.wat');
  // assertMalformed('malformed store.5.wat');
  // assertMalformed('malformed store.6.wat');
  // assertMalformed('malformed store.7.wat');
  // assertInvalid('invalid store.8.wasm', 'store/store.8.wasm', 'type mismatch');
  // assertInvalid('invalid store.9.wasm', 'store/store.9.wasm', 'type mismatch');
  // assertInvalid('invalid store.10.wasm', 'store/store.10.wasm', 'type mismatch');
  // assertInvalid('invalid store.11.wasm', 'store/store.11.wasm', 'type mismatch');
  // assertInvalid('invalid store.12.wasm', 'store/store.12.wasm', 'type mismatch');
  // assertInvalid('invalid store.13.wasm', 'store/store.13.wasm', 'type mismatch');
  // assertInvalid('invalid store.14.wasm', 'store/store.14.wasm', 'type mismatch');
  // assertInvalid('invalid store.15.wasm', 'store/store.15.wasm', 'type mismatch');
  // assertInvalid('invalid store.16.wasm', 'store/store.16.wasm', 'type mismatch');
  // assertInvalid('invalid store.17.wasm', 'store/store.17.wasm', 'type mismatch');
  // assertInvalid('invalid store.18.wasm', 'store/store.18.wasm', 'type mismatch');
  // assertInvalid('invalid store.19.wasm', 'store/store.19.wasm', 'type mismatch');
  // assertInvalid('invalid store.20.wasm', 'store/store.20.wasm', 'type mismatch');
  // assertInvalid('invalid store.21.wasm', 'store/store.21.wasm', 'type mismatch');
  // assertInvalid('invalid store.22.wasm', 'store/store.22.wasm', 'type mismatch');
  // assertInvalid('invalid store.23.wasm', 'store/store.23.wasm', 'type mismatch');
  // assertInvalid('invalid store.24.wasm', 'store/store.24.wasm', 'type mismatch');
  // assertInvalid('invalid store.25.wasm', 'store/store.25.wasm', 'type mismatch');
  // assertInvalid('invalid store.26.wasm', 'store/store.26.wasm', 'type mismatch');
  // assertInvalid('invalid store.27.wasm', 'store/store.27.wasm', 'type mismatch');
  // assertInvalid('invalid store.28.wasm', 'store/store.28.wasm', 'type mismatch');
  // assertInvalid('invalid store.29.wasm', 'store/store.29.wasm', 'type mismatch');
  // assertInvalid('invalid store.30.wasm', 'store/store.30.wasm', 'type mismatch');
  // assertInvalid('invalid store.31.wasm', 'store/store.31.wasm', 'type mismatch');
  // assertInvalid('invalid store.32.wasm', 'store/store.32.wasm', 'type mismatch');
  // assertInvalid('invalid store.33.wasm', 'store/store.33.wasm', 'type mismatch');
  // assertInvalid('invalid store.34.wasm', 'store/store.34.wasm', 'type mismatch');
  // assertInvalid('invalid store.35.wasm', 'store/store.35.wasm', 'type mismatch');
  // assertInvalid('invalid store.36.wasm', 'store/store.36.wasm', 'type mismatch');
  // assertInvalid('invalid store.37.wasm', 'store/store.37.wasm', 'type mismatch');
  // assertInvalid('invalid store.38.wasm', 'store/store.38.wasm', 'type mismatch');
  // assertInvalid('invalid store.39.wasm', 'store/store.39.wasm', 'type mismatch');
  // assertInvalid('invalid store.40.wasm', 'store/store.40.wasm', 'type mismatch');
  // assertInvalid('invalid store.41.wasm', 'store/store.41.wasm', 'type mismatch');
  // assertInvalid('invalid store.42.wasm', 'store/store.42.wasm', 'type mismatch');
  // assertInvalid('invalid store.43.wasm', 'store/store.43.wasm', 'type mismatch');
  // assertInvalid('invalid store.44.wasm', 'store/store.44.wasm', 'type mismatch');
  // assertInvalid('invalid store.45.wasm', 'store/store.45.wasm', 'type mismatch');
  // assertInvalid('invalid store.46.wasm', 'store/store.46.wasm', 'type mismatch');
  // assertInvalid('invalid store.47.wasm', 'store/store.47.wasm', 'type mismatch');
  // assertInvalid('invalid store.48.wasm', 'store/store.48.wasm', 'type mismatch');
  // assertInvalid('invalid store.49.wasm', 'store/store.49.wasm', 'type mismatch');
  // assertInvalid('invalid store.50.wasm', 'store/store.50.wasm', 'type mismatch');
  // assertInvalid('invalid store.51.wasm', 'store/store.51.wasm', 'type mismatch');
  // assertInvalid('invalid store.52.wasm', 'store/store.52.wasm', 'type mismatch');
  // assertInvalid('invalid store.53.wasm', 'store/store.53.wasm', 'type mismatch');
  // assertInvalid('invalid store.54.wasm', 'store/store.54.wasm', 'type mismatch');
  // assertInvalid('invalid store.55.wasm', 'store/store.55.wasm', 'type mismatch');
  // assertInvalid('invalid store.56.wasm', 'store/store.56.wasm', 'type mismatch');
  // assertInvalid('invalid store.57.wasm', 'store/store.57.wasm', 'type mismatch');
  // assertInvalid('invalid store.58.wasm', 'store/store.58.wasm', 'type mismatch');
}
