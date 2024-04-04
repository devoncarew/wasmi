import 'dart:io';

import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

void main(List<String> args) {
  var moduleDefinition = ModuleDefinition.parse(File('example/fib.wasm'));
  var module = Module(moduleDefinition);

  for (var i = 0; i <= 10; i++) {
    final result = module.call('fib', [i]);
    print('fib($i) = $result');
  }
}
