import 'dart:io';

import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import 'package:wasmi/types.dart';

void main(List<String> args) {
  // (import "js" "mem" (memory 1))
  final jsModule = ImportModule();
  jsModule.memory = Memory(1);

  // (import "console" "log" (func $log (param i32 i32)))
  final consoleModule = ImportModule();
  consoleModule.functions.add(ImportFunction(
    'log',
    (List<Object?> args) {
      _printMemory(jsModule.memory!, args[0] as int, args[1] as int);
      return null;
    },
    [ValueType.i32, ValueType.i32],
  ));

  var moduleDefinition = ModuleDefinition.parse(File('samples/print.wasm'));
  var module = Module(
    moduleDefinition,
    imports: {
      'js': jsModule,
      'console': consoleModule,
    },
  );
  module.start();
}

void _printMemory(Memory memory, int offset, int length) {
  var bytes = memory.data.buffer.asUint8List(offset, length);
  var str = String.fromCharCodes(bytes);

  print(str);
}
