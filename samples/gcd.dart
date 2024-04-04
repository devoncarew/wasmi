import 'dart:io';

import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

void main(List<String> args) {
  var moduleDefinition = ModuleDefinition.parse(File('samples/gcd.wasm'));
  var module = Module(moduleDefinition);

  final arga = 24;
  final argb = 6;

  final result = module.invoke('gcd', [arga, argb]);
  print('gcd($arga, $argb) = $result');
}
