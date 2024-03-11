// ignore_for_file: camel_case_types

import 'dart:io';

import 'package:wasmi/loader.dart';

typedef Fn$int$int = int Function(int);

void main(List<String> args) {
  final loader = Loader();
  final module = loader.load(File('example/fib.wasm'));

  // i32 Function(i32)
  final fibMethod = module.function('fib')! /*as Fn$int$int*/;

  for (var i = 0; i <= 10; i++) {
    final result = fibMethod.invoke([i]);
    print('fib($i) = $result');
  }
}
