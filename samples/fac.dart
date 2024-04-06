import 'dart:io';

import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

void main(List<String> args) {
  var moduleDefinition = ModuleDefinition.parse(File('samples/fac.wasm'));
  var module = Module(moduleDefinition);

  final arg = 7;

  final result = module.invoke('fac', [arg]);
  print('fac($arg) = $result');
}
