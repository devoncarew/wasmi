// Generated from spec/test/core/local_get.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';
import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};

  group('local_get.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def =
          ModuleDefinition.parse(File('test/spec/local_get/local_get.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('type_local_i32_0', () => m.$('type-local-i32', []), 0);
    returns('type_local_i64_0', () => m.$('type-local-i64', []), 0);
    returns('type_local_f32_0', () => m.$('type-local-f32', []), $f32('0'));
    returns('type_local_f64_0', () => m.$('type-local-f64', []), $f64('0'));
    returns('type_param_i32_0', () => m.$('type-param-i32', [2]), 2);
    returns('type_param_i64_0', () => m.$('type-param-i64', [3]), 3);
    returns('type_param_f32_0', () => m.$('type-param-f32', [$f32('408CCCCD')]),
        $f32('408CCCCD'));
    returns(
        'type_param_f64_0',
        () => m.$('type-param-f64', [$f64('4016000000000000')]),
        $f64('4016000000000000'));
    returns('as_block_value_0', () => m.$('as-block-value', [6]), 6);
    returns('as_loop_value_0', () => m.$('as-loop-value', [7]), 7);
    returns('as_br_value_0', () => m.$('as-br-value', [8]), 8);
    returns('as_br_if_value_0', () => m.$('as-br_if-value', [9]), 9);
    returns(
        'as_br_if_value_cond_0', () => m.$('as-br_if-value-cond', [0xA]), 0xA);
    returns('as_br_table_value_0', () => m.$('as-br_table-value', [1]), 2);
    returns('as_return_value_0', () => m.$('as-return-value', [0]), 0);
    returns('as_if_then_0', () => m.$('as-if-then', [1]), 1);
    returns('as_if_else_0', () => m.$('as-if-else', [0]), 0);
    returns(
        'type_mixed_0',
        () => m.$('type-mixed',
            [1, $f32('400CCCCD'), $f64('400A666666666666'), 4, 5]),
        null /*void*/);
    returns(
        'read_0',
        () =>
            m.$('read', [1, $f32('40000000'), $f64('400A666666666666'), 4, 5]),
        $f64('4041666666666666'));
  });

  // assertInvalid('invalid local_get.1.wasm', 'local_get/local_get.1.wasm', 'type mismatch');
  // assertInvalid('invalid local_get.2.wasm', 'local_get/local_get.2.wasm', 'type mismatch');
  // assertInvalid('invalid local_get.3.wasm', 'local_get/local_get.3.wasm', 'type mismatch');
  // assertInvalid('invalid local_get.4.wasm', 'local_get/local_get.4.wasm', 'type mismatch');
  // assertInvalid('invalid local_get.5.wasm', 'local_get/local_get.5.wasm', 'type mismatch');
  // assertInvalid('invalid local_get.6.wasm', 'local_get/local_get.6.wasm', 'type mismatch');
  // assertInvalid('invalid local_get.7.wasm', 'local_get/local_get.7.wasm', 'type mismatch');
  // assertInvalid('invalid local_get.8.wasm', 'local_get/local_get.8.wasm', 'type mismatch');
  // assertInvalid('invalid local_get.9.wasm', 'local_get/local_get.9.wasm', 'type mismatch');
  // assertInvalid('invalid local_get.10.wasm', 'local_get/local_get.10.wasm', 'type mismatch');
  // assertInvalid('invalid local_get.11.wasm', 'local_get/local_get.11.wasm', 'unknown local');
  // assertInvalid('invalid local_get.12.wasm', 'local_get/local_get.12.wasm', 'unknown local');
  // assertInvalid('invalid local_get.13.wasm', 'local_get/local_get.13.wasm', 'unknown local');
  // assertInvalid('invalid local_get.14.wasm', 'local_get/local_get.14.wasm', 'unknown local');
  // assertInvalid('invalid local_get.15.wasm', 'local_get/local_get.15.wasm', 'unknown local');
  // assertInvalid('invalid local_get.16.wasm', 'local_get/local_get.16.wasm', 'unknown local');
}
