import 'dart:io';

import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

void main(List<String> args) {
  var moduleDefinition = ModuleDefinition.parse(File('samples/hello.wasm'));
  var module = Module(moduleDefinition);

  var arga = 1;
  var argb = 2;

  var result = module.invoke('add', [arga, argb]);
  print('add($arga, $argb) = $result');

  arga = 10;
  argb = 5;

  result = module.invoke('complex', [arga, argb]);
  print('complex($arga, $argb) = $result');
}
