import 'dart:io';

import 'package:code_builder/code_builder.dart' hide FunctionType;
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:wasmi/parse.dart';
import 'package:wasmi/types.dart';

void main(List<String> args) {
  if (args.isEmpty) {
    stderr.writeln('usage: dart tool/print_module.dart <file-name>');

    exit(1);
  }

  final fileName = args[0];
  final module = ModuleDefinition.parse(File(fileName));

  print('# $fileName');
  print('');

  // Imports
  if (module.importModules.isNotEmpty) {
    print('## Imports');
    print('');

    module.importModules.forEach(printImportModule);
  }

  // Exports
  print('## Exports');
  print('');

  // memory
  if (module.memoryExported) {
    print('### Memory');
    print('');

    final memory = module.memoryInfo!;
    final max = memory.max != null ? ' max: ${memory.max}' : '';
    print('- memory(min: ${memory.min}$max)');
    print('');
  }

  // globals
  if (module.globals.globalExports.isNotEmpty) {
    print('### Globals');
    print('');

    for (var global in module.globals.globalExports) {
      final readOnly = global.global.mutable ? '' : ' [read-only]';
      print('- ${global.global.type.dartType} ${global.name}$readOnly;');
    }

    print('');
  }

  // functions
  if (module.exportedFunctions.isNotEmpty) {
    print('### Functions');
    print('');

    for (var function in module.exportedFunctions) {
      final func = function.func;

      final args = func.functionType!.parameterTypes;
      print('- ${returnType(func.functionType!)} ${function.name}'
          '(${args.map((r) => r.dartType).join(', ')});');
    }

    print('');
  }

  // TODO: tables

  // Source
  print('## Source');
  print('');
  var className = p.basenameWithoutExtension(fileName);
  className = className.substring(0, 1).toUpperCase() + className.substring(1);
  final $class = createClassFor(className, module);
  final emitter = DartEmitter();
  print(DartFormatter().format('${$class.accept(emitter)}'));
}

void printImportModule(ImportModuleDefinition def) {
  print("### import '${def.name}'");
  print('');

  // globals
  if (def.globals.isNotEmpty) {
    for (final global in def.globals) {
      final readOnly = global.mutable ? '' : ' [read-only]';
      print('- ${global.type.dartType} ${global.name}$readOnly;');
    }
    print('');
  }

  // memory
  if (def.memory != null) {
    final memory = def.memory!;

    final max = memory.max != null ? ' max: ${memory.max}' : '';
    print('- memory(min: ${memory.min}$max)');
    print('');
  }

  // functions
  if (def.functions.isNotEmpty) {
    for (var func in def.functions) {
      final args = func.functionType!.parameterTypes;
      print('- ${returnType(func.functionType!)} ${func.name}'
          '(${args.map((r) => r.dartType).join(', ')});');
      print('  ${func.functionType!.signature}');
    }
    print('');
  }

  // TODO: tables
}

String returnType(FunctionType functionType) {
  final ret = functionType.resultTypes;
  if (ret.isEmpty) return 'void';

  if (ret.length == 1) return ret.first.dartType;

  return '(${ret.map((r) => r.dartType).join(', ')})';
}

extension on ValueType {
  String get dartType {
    switch (this) {
      case ValueType.i32:
      case ValueType.i64:
        return 'int';
      case ValueType.f32:
      case ValueType.f64:
        return 'double';
      case ValueType.v128:
        return 'vector';
      case ValueType.funcref:
        return 'Function';
      case ValueType.externref:
        return 'Object?';
    }
  }
}

extension on List<ValueType> {
  String get dartReturn {
    if (isEmpty) return 'void';
    if (length == 1) return first.dartType;
    return '(${map((e) => e.dartType).join(', ')})';
  }
}

extension on FunctionType {
  String get signature {
    final params = parameterTypes.map((param) => param.name).join(', ');
    final ret = resultTypes.map((param) => param.name).join(', ');

    return '($params) => $ret';
  }
}

Class createClassFor(String className, ModuleDefinition module) {
  final builder = ClassBuilder()..name = className;
  builder.fields.add(
    (FieldBuilder()
          ..name = 'module'
          ..modifier = FieldModifier.final$
          ..type = Reference('Module', 'package:wasmi/parse.dart'))
        .build(),
  );

  final ctor = ConstructorBuilder();
  ctor.requiredParameters.add((ParameterBuilder()
        ..toThis = true
        ..name = 'module')
      .build());
  builder.constructors.add(ctor.build());

  final getter = MethodBuilder();
  getter.name = 'memory';
  getter.type = MethodType.getter;
  getter.body = Code('module.memory!');
  getter.lambda = true;
  getter.returns = Reference('Memory', 'package:wasmi/execute.dart');
  builder.methods.add(getter.build());

  for (final function in module.exportedFunctions) {
    final functionType = function.func.functionType!;
    var sig =
        '(${functionType.parameterTypes.map((type) => type.name).join(', ')})';
    if (functionType.resultTypes.isNotEmpty) {
      sig += ' => '
          '${functionType.resultTypes.map((type) => type.name).join(', ')}';
    }

    final method = MethodBuilder();
    method.name = function.name;
    method.docs.addAll([
      '\n  // ${function.name}$sig',
    ]);
    method.returns = Reference(functionType.resultTypes.dartReturn);
    for (int i = 0; i < functionType.parameterTypes.length; i++) {
      final type = functionType.parameterTypes[i];
      method.requiredParameters.add(Parameter((b) {
        b.type = Reference(type.dartType);
        b.name = 'arg$i';
      }));
    }
    final buf = StringBuffer();
    if (functionType.resultTypes.isNotEmpty) {
      buf.write('return ');
    }
    buf.write("module.invoke('${function.name}'");
    if (functionType.parameterTypes.isNotEmpty) {
      buf.write(', [');
      for (int i = 0; i < functionType.parameterTypes.length; i++) {
        if (i > 0) buf.write(',');
        buf.write('arg$i');
      }
      buf.write(']');
    }
    buf.write(')');
    if (!functionType.returnsVoid) {
      buf.write('as ${functionType.resultTypes.first.dartType}');
    }
    buf.writeln(';');
    method.body = Code(buf.toString());
    builder.methods.add(method.build());
  }

  return builder.build();
}
