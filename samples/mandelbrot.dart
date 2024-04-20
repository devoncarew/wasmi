import 'dart:io';
import 'dart:math' as math;
import 'dart:typed_data';

import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import 'package:wasmi/types.dart';

void main(List<String> args) {
  final numColors = 216;

  var width = 300;
  var height = 300 * 9 ~/ 16;

  width = stdout.hasTerminal ? stdout.terminalColumns : 80;
  height = (stdout.hasTerminal ? stdout.terminalLines - 2 : 40) * 2;
  print('Calculating for ${width}x$height:');
  print('');

  final envModule = ImportModule();
  envModule.memories.add(ImportMemory('memory', Memory(1)));
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
  var module = Module(
    moduleDefinition,
    imports: {'env': envModule},
  );

  final memory = envModule.memories.first.memory;

  var stopwatch = Stopwatch()..start();
  module.invoke('update', [width, height, numColors]);
  stopwatch.stop();

  for (int y = 0; y < height; y += 2) {
    for (int x = 0; x < width; x++) {
      int color = memory.data.getUint16((x + y * width) * 2, Endian.little);

      int n = color + 16;
      var char = color == numColors - 1 ? ' ' : '•';
      stdout.write('\u001b[38;5;${n}m$char');

      // int grey = (r + g + b) ~/ 3;
      // stdout.write(grey == 0 ? '  ' : grey.toRadixString(16).padLeft(2, '0'));
    }
    stdout.writeln();
  }

  print('\u001b[0m${width}x$height ran in ${stopwatch.elapsedMilliseconds}ms');
}
