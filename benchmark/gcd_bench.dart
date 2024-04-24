// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

void main() => GCDBenchmark().report();

class GCDBenchmark extends BenchmarkBase {
  GCDBenchmark() : super('gcd');

  late Module gcd;

  @override
  void setup() {
    var moduleDefinition = ModuleDefinition.parse(File('samples/gcd.wasm'));
    gcd = Module(moduleDefinition);
    gcd.start();
  }

  @override
  void run() {
    for (int i = 0; i < 100; i++) {
      gcd.invoke('gcd', [18, 30]);
      gcd.invoke('gcd', [18, 42]);
      gcd.invoke('gcd', [30, 42]);
    }
  }
}
