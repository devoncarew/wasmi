// ignore_for_file: non_constant_identifier_names

import 'dart:io';
import 'dart:math' as math;

import 'package:benchmark_harness/benchmark_harness.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import 'package:wasmi/types.dart';

void main() => MandelbrotBenchmark().report();

class MandelbrotBenchmark extends BenchmarkBase {
  MandelbrotBenchmark() : super('mandelbrot');

  late Module mandelbrot;

  @override
  void setup() {
    final envModule = ImportModule();
    envModule.memories.add(ImportMemory('memory', Memory(50)));
    envModule.functions.add(ImportFunction(
      'Math.log',
      (List<Object?> args) => math.log(args[0] as double),
      [ValueType.f64],
      [ValueType.f64],
    ));
    envModule.functions.add(ImportFunction(
      'Math.log2',
      (List<Object?> args) => math.log(args[0] as double) / math.log2e,
      [ValueType.f64],
      [ValueType.f64],
    ));
    var moduleDefinition =
        ModuleDefinition.parse(File('samples/mandelbrot.wasm'));
    mandelbrot = Module(
      moduleDefinition,
      imports: {'env': envModule},
    );
  }

  @override
  void run() {
    // 240x160 @ 200 max iterations
    mandelbrot.invoke('update', [240, 160, 200]);
  }
}
