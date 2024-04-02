import 'dart:io';

import 'package:wasmi/execution.dart';
import 'package:wasmi/format.dart';

void main(List<String> args) {
  var module = Module.parse(File('example/add.wasm'));
  var function = module.exportedFunction('add')!.func as DefinedFunction;
  var context = ExecutionContect(module);

  for (var i = 0; i <= 10; i++) {
    final result = context.execute(function, [i, i]);
    print('add($i, $i) = $result');
  }
}
