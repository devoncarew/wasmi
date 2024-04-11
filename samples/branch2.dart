import 'dart:io';

import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';
import 'package:wasmi/types.dart';

// dart samples/branch2.dart

// wasm-interp samples/branch2.wasm --host-print

void main(List<String> args) {
  final consoleModule = ImportModule();
  consoleModule.functions.add(ImportFunction(
    'print',
    (List<Object?> args) => print('host.print => ${args[0]}'),
    [ValueType.i32],
  ));

  var moduleDefinition = ModuleDefinition.parse(File('samples/branch2.wasm'));
  var module = Module(moduleDefinition, imports: {'host': consoleModule});

  module.start();
}
