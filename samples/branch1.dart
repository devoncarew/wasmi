import 'dart:io';

import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

void main(List<String> args) {
  var moduleDefinition = ModuleDefinition.parse(File('samples/branch1.wasm'));
  var module = Module(moduleDefinition);

  final result = module.invoke('sample');
  print('sample() = $result');
}
