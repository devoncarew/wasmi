import 'dart:io';

import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import 'package:wasmi/types.dart';

void main(List<String> args) {
  final importModule = ImportModule();
  importModule.functions.add(ImportFunction(
    'abort',
    (List<Object?> args) {
      throw 'abort';
    },
    [ValueType.i32, ValueType.i32, ValueType.i32, ValueType.i32, ValueType.i32],
  ));

  final moduleDefinition =
      ModuleDefinition.parse(File('samples/eratosthenes.wasm'));
  final module = Module(
    moduleDefinition,
    imports: {'env': importModule},
  );
  final eratosthenes = Eratosthenes(module);

  var x = args.isEmpty ? 100 : int.parse(args.first);
  var stopwatch = Stopwatch()..start();
  print('The eratosthenes prime of $x is ${eratosthenes.prime(x)}.');
  print('(${stopwatch.elapsedMilliseconds} ms)');
}

class Eratosthenes {
  Eratosthenes(this.module);

  final Module module;

  Memory get memory => module.memory!;

  // prime(i32) => i32
  int prime(int arg0) {
    return module.invoke('prime', [arg0]) as int;
  }

  // abort(i32, i32, i32, i32)
  void abort(
    int arg0,
    int arg1,
    int arg2,
    int arg3,
  ) {
    module.invoke('abort', [arg0, arg1, arg2, arg3]);
  }
}
