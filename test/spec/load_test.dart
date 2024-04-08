// Generated from spec/test/core/load.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '_framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('load.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/load/load.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('as-br-value_0', () => m.$('as-br-value', []), 0);
    returns('as-br_if-cond_0', () => m.$('as-br_if-cond', []), null /*void*/);
    returns('as-br_if-value_0', () => m.$('as-br_if-value', []), 0);
    returns('as-br_if-value-cond_0', () => m.$('as-br_if-value-cond', []), 7);
    returns('as-br_table-index_0', () => m.$('as-br_table-index', []),
        null /*void*/);
    returns('as-br_table-value_0', () => m.$('as-br_table-value', []), 0);
    returns('as-br_table-value-index_0',
        () => m.$('as-br_table-value-index', []), 6);
    returns('as-return-value_0', () => m.$('as-return-value', []), 0);
    returns('as-if-cond_0', () => m.$('as-if-cond', []), 1);
    returns('as-if-then_0', () => m.$('as-if-then', []), 0);
    returns('as-if-else_0', () => m.$('as-if-else', []), 0);
    returns('as-select-first_0', () => m.$('as-select-first', [0, 1]), 0);
    returns('as-select-second_0', () => m.$('as-select-second', [0, 0]), 0);
    returns('as-select-cond_0', () => m.$('as-select-cond', []), 1);
    returns(
        'as-call-first_0', () => m.$('as-call-first', []), $i32('FFFFFFFF'));
    returns('as-call-mid_0', () => m.$('as-call-mid', []), $i32('FFFFFFFF'));
    returns('as-call-last_0', () => m.$('as-call-last', []), $i32('FFFFFFFF'));
    returns('as-call_indirect-first_0', () => m.$('as-call_indirect-first', []),
        $i32('FFFFFFFF'));
    returns('as-call_indirect-mid_0', () => m.$('as-call_indirect-mid', []),
        $i32('FFFFFFFF'));
    returns('as-call_indirect-last_0', () => m.$('as-call_indirect-last', []),
        $i32('FFFFFFFF'));
    returns('as-call_indirect-index_0', () => m.$('as-call_indirect-index', []),
        $i32('FFFFFFFF'));
    returns('as-local_set-value_0', () => m.$('as-local.set-value', []),
        null /*void*/);
    returns('as-local_tee-value_0', () => m.$('as-local.tee-value', []), 0);
    returns('as-global_set-value_0', () => m.$('as-global.set-value', []),
        null /*void*/);
    returns('as-load-address_0', () => m.$('as-load-address', []), 0);
    returns('as-loadN-address_0', () => m.$('as-loadN-address', []), 0);
    returns(
        'as-store-address_0', () => m.$('as-store-address', []), null /*void*/);
    returns('as-store-value_0', () => m.$('as-store-value', []), null /*void*/);
    returns('as-storeN-address_0', () => m.$('as-storeN-address', []),
        null /*void*/);
    returns(
        'as-storeN-value_0', () => m.$('as-storeN-value', []), null /*void*/);
    returns('as-unary-operand_0', () => m.$('as-unary-operand', []), 0x20);
    returns('as-binary-left_0', () => m.$('as-binary-left', []), 0xA);
    returns('as-binary-right_0', () => m.$('as-binary-right', []), 0xA);
    returns('as-test-operand_0', () => m.$('as-test-operand', []), 1);
    returns('as-compare-left_0', () => m.$('as-compare-left', []), 1);
    returns('as-compare-right_0', () => m.$('as-compare-right', []), 1);
    returns('as-memory_grow-size_0', () => m.$('as-memory.grow-size', []), 1);
  });

  // assertInvalid('invalid load.14.wasm', 'load/load.14.wasm', 'type mismatch');
  // assertInvalid('invalid load.15.wasm', 'load/load.15.wasm', 'type mismatch');
  // assertInvalid('invalid load.16.wasm', 'load/load.16.wasm', 'type mismatch');
  // assertInvalid('invalid load.17.wasm', 'load/load.17.wasm', 'type mismatch');
  // assertInvalid('invalid load.18.wasm', 'load/load.18.wasm', 'type mismatch');
  // assertInvalid('invalid load.19.wasm', 'load/load.19.wasm', 'type mismatch');
  // assertInvalid('invalid load.20.wasm', 'load/load.20.wasm', 'type mismatch');
  // assertInvalid('invalid load.21.wasm', 'load/load.21.wasm', 'type mismatch');
  // assertInvalid('invalid load.22.wasm', 'load/load.22.wasm', 'type mismatch');
  // assertInvalid('invalid load.23.wasm', 'load/load.23.wasm', 'type mismatch');
  // assertInvalid('invalid load.24.wasm', 'load/load.24.wasm', 'type mismatch');
  // assertInvalid('invalid load.25.wasm', 'load/load.25.wasm', 'type mismatch');
  // assertInvalid('invalid load.26.wasm', 'load/load.26.wasm', 'type mismatch');
  // assertInvalid('invalid load.27.wasm', 'load/load.27.wasm', 'type mismatch');
  // assertInvalid('invalid load.28.wasm', 'load/load.28.wasm', 'type mismatch');
  // assertInvalid('invalid load.29.wasm', 'load/load.29.wasm', 'type mismatch');
  // assertInvalid('invalid load.30.wasm', 'load/load.30.wasm', 'type mismatch');
  // assertInvalid('invalid load.31.wasm', 'load/load.31.wasm', 'type mismatch');
  // assertInvalid('invalid load.32.wasm', 'load/load.32.wasm', 'type mismatch');
  // assertInvalid('invalid load.33.wasm', 'load/load.33.wasm', 'type mismatch');
  // assertInvalid('invalid load.34.wasm', 'load/load.34.wasm', 'type mismatch');
  // assertInvalid('invalid load.35.wasm', 'load/load.35.wasm', 'type mismatch');
  // assertInvalid('invalid load.36.wasm', 'load/load.36.wasm', 'type mismatch');
  // assertInvalid('invalid load.37.wasm', 'load/load.37.wasm', 'type mismatch');
  // assertInvalid('invalid load.38.wasm', 'load/load.38.wasm', 'type mismatch');
  // assertInvalid('invalid load.39.wasm', 'load/load.39.wasm', 'type mismatch');
  // assertInvalid('invalid load.40.wasm', 'load/load.40.wasm', 'type mismatch');
  // assertInvalid('invalid load.41.wasm', 'load/load.41.wasm', 'type mismatch');
  // assertInvalid('invalid load.42.wasm', 'load/load.42.wasm', 'type mismatch');
  // assertInvalid('invalid load.43.wasm', 'load/load.43.wasm', 'type mismatch');
  // assertInvalid('invalid load.44.wasm', 'load/load.44.wasm', 'type mismatch');
  // assertInvalid('invalid load.45.wasm', 'load/load.45.wasm', 'type mismatch');
  // assertInvalid('invalid load.46.wasm', 'load/load.46.wasm', 'type mismatch');
  // assertInvalid('invalid load.47.wasm', 'load/load.47.wasm', 'type mismatch');
  // assertInvalid('invalid load.48.wasm', 'load/load.48.wasm', 'type mismatch');
  // assertInvalid('invalid load.49.wasm', 'load/load.49.wasm', 'type mismatch');
  // assertInvalid('invalid load.50.wasm', 'load/load.50.wasm', 'type mismatch');
  // assertInvalid('invalid load.51.wasm', 'load/load.51.wasm', 'type mismatch');
  // assertInvalid('invalid load.52.wasm', 'load/load.52.wasm', 'type mismatch');
  // assertInvalid('invalid load.53.wasm', 'load/load.53.wasm', 'type mismatch');
  // assertInvalid('invalid load.54.wasm', 'load/load.54.wasm', 'type mismatch');
  // assertInvalid('invalid load.55.wasm', 'load/load.55.wasm', 'type mismatch');
  // assertInvalid('invalid load.56.wasm', 'load/load.56.wasm', 'type mismatch');
  // assertInvalid('invalid load.57.wasm', 'load/load.57.wasm', 'type mismatch');
  // assertInvalid('invalid load.58.wasm', 'load/load.58.wasm', 'type mismatch');
  // assertInvalid('invalid load.59.wasm', 'load/load.59.wasm', 'type mismatch');
}
