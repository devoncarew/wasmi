import 'dart:io';

import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

void main(List<String> args) {
  var moduleDefinition = ModuleDefinition.parse(File('example/add.wasm'));
  var module = Module(moduleDefinition);

  for (var i = 0; i <= 10; i++) {
    final result = module.invoke('add', [i, i]);
    print('add($i, $i) = $result');
  }
}
