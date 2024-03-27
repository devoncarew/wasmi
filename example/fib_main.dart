import 'dart:io';

import 'package:wasmi/execution.dart';
import 'package:wasmi/format.dart';

// void main(List<String> args) {
//   var module = Module.parse(File('example/fib.wasm'));
//   var context = ExecutionContect(module);
//   var function = module.exportedFunction('fib')!.func as DefinedFunction;

//   // for (var i = 0; i <= 10; i++) {
//   //   final result = context.execute(function, [i]);
//   //   print('fib($i) = $result');
//   // }

//   int arg = 2;
//   final result = context.execute(function, [arg]);
//   print('fib($arg) = $result');
// }

void main(List<String> args) {
  var module = Module.parse(File('example/add.wasm'));
  var function = module.exportedFunction('add')!.func as DefinedFunction;

  for (var i = 0; i <= 10; i++) {
    var context = ExecutionContect(module);
    final result = context.execute(function, [i, i]);
    print('add($i, $i) = $result');
  }
}
