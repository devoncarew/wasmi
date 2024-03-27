import 'dart:io';

import 'package:wasmi/execution.dart';
import 'package:wasmi/format.dart';

void main(List<String> args) {
  var module = Module.parse(File('samples/gcd.wasm'));
  var context = ExecutionContect(module);
  var function = module.exportedFunction('gcd')!.func as DefinedFunction;

  final arga = 24;
  final argb = 6;

  final result = context.execute(function, [arga, argb]);
  print('gcd($arga, $argb) = $result');
}
