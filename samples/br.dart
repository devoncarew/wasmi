// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

void main(List<String> args) {
  final moduleDefinition = ModuleDefinition.parse(File('samples/br.wasm'));
  final module = Module(moduleDefinition);
  final br = Br(module);

  final input = 0;
  final result = br.nested_block_value(input);
  print('nested_block_value($input) = $result (expecting 9)');
}

class Br {
  Br(this.module);

  final Module module;

  Memory get memory => module.memory!;

  // nested-block-value(i32) => i32
  int nested_block_value(int arg0) {
    return module.invoke('nested-block-value', [arg0]) as int;
  }

  // tester() => i32
  int tester() {
    return module.invoke('tester') as int;
  }
}
