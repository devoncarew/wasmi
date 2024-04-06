import 'dart:io';

import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

void main(List<String> args) {
  var moduleDefinition = ModuleDefinition.parse(File('samples/sha3.wasm'));
  var module = Module(moduleDefinition);

  module.invoke('init', [0, 100, 200]);
  var result = module.invoke('absorb', [0, 100, 200]);
  module.invoke('squeeze', [1, 2, 3]);
  print(result);
}
