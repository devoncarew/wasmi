// Generated from spec/test/core/local_set.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('local_set.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/local_set/local_set.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('type_local_i32_0', () => m.$('type-local-i32', []), null /*void*/);
    returns('type_local_i64_0', () => m.$('type-local-i64', []), null /*void*/);
    returns('type_local_f32_0', () => m.$('type-local-f32', []), null /*void*/);
    returns('type_local_f64_0', () => m.$('type-local-f64', []), null /*void*/);
    returns(
        'type_param_i32_0', () => m.$('type-param-i32', [2]), null /*void*/);
    returns(
        'type_param_i64_0', () => m.$('type-param-i64', [3]), null /*void*/);
    returns('type_param_f32_0', () => m.$('type-param-f32', [$f32('408CCCCD')]),
        null /*void*/);
    returns('type_param_f64_0',
        () => m.$('type-param-f64', [$f64('4016000000000000')]), null /*void*/);
    returns(
        'as_block_value_0', () => m.$('as-block-value', [0]), null /*void*/);
    returns('as_loop_value_0', () => m.$('as-loop-value', [0]), null /*void*/);
    returns('as_br_value_0', () => m.$('as-br-value', [0]), null /*void*/);
    returns(
        'as_br_if_value_0', () => m.$('as-br_if-value', [0]), null /*void*/);
    returns('as_br_if_value_cond_0', () => m.$('as-br_if-value-cond', [0]),
        null /*void*/);
    returns('as_br_table_value_0', () => m.$('as-br_table-value', [0]),
        null /*void*/);
    returns(
        'as_return_value_0', () => m.$('as-return-value', [0]), null /*void*/);
    returns('as_if_then_0', () => m.$('as-if-then', [1]), null /*void*/);
    returns('as_if_else_0', () => m.$('as-if-else', [0]), null /*void*/);
    returns(
        'type_mixed_0',
        () => m.$('type-mixed',
            [1, $f32('400CCCCD'), $f64('400A666666666666'), 4, 5]),
        null /*void*/);
    returns(
        'write_0',
        () =>
            m.$('write', [1, $f32('40000000'), $f64('400A666666666666'), 4, 5]),
        0x38);
  });

  // assertInvalid('invalid local_set.1.wasm', 'local_set/local_set.1.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.2.wasm', 'local_set/local_set.2.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.3.wasm', 'local_set/local_set.3.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.4.wasm', 'local_set/local_set.4.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.5.wasm', 'local_set/local_set.5.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.6.wasm', 'local_set/local_set.6.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.7.wasm', 'local_set/local_set.7.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.8.wasm', 'local_set/local_set.8.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.9.wasm', 'local_set/local_set.9.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.10.wasm', 'local_set/local_set.10.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.11.wasm', 'local_set/local_set.11.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.12.wasm', 'local_set/local_set.12.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.13.wasm', 'local_set/local_set.13.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.14.wasm', 'local_set/local_set.14.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.15.wasm', 'local_set/local_set.15.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.16.wasm', 'local_set/local_set.16.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.17.wasm', 'local_set/local_set.17.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.18.wasm', 'local_set/local_set.18.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.19.wasm', 'local_set/local_set.19.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.20.wasm', 'local_set/local_set.20.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.21.wasm', 'local_set/local_set.21.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.22.wasm', 'local_set/local_set.22.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.23.wasm', 'local_set/local_set.23.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.24.wasm', 'local_set/local_set.24.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.25.wasm', 'local_set/local_set.25.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.26.wasm', 'local_set/local_set.26.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.27.wasm', 'local_set/local_set.27.wasm', 'type mismatch');
  // assertInvalid('invalid local_set.28.wasm', 'local_set/local_set.28.wasm', 'unknown local');
  // assertInvalid('invalid local_set.29.wasm', 'local_set/local_set.29.wasm', 'unknown local');
  // assertInvalid('invalid local_set.30.wasm', 'local_set/local_set.30.wasm', 'unknown local');
  // assertInvalid('invalid local_set.31.wasm', 'local_set/local_set.31.wasm', 'unknown local');
  // assertInvalid('invalid local_set.32.wasm', 'local_set/local_set.32.wasm', 'unknown local');
  // assertInvalid('invalid local_set.33.wasm', 'local_set/local_set.33.wasm', 'unknown local');
}
