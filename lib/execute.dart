// ignore_for_file: unused_local_variable, deprecated_member_use
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:collection/collection.dart';

import 'bytecode.dart';
import 'compile.dart';
import 'instructions.dart';
import 'parse.dart' as def;
import 'types.dart';

typedef ImplFn = void Function(Bytecode code);
typedef reftype = Object?;

class Module {
  final def.ModuleDefinition definition;

  final Map<String, ImportModule> imports;
  final Exports exports = Exports();

  final List<WasmFunction> functions = [];
  final List<Table> tables = [];
  final List<Memory> memories = [];
  final List<Global> globals = [];

  final List<PassiveSegment?> _segments = [];
  final Set<int> _droppedDataSegments = {};
  bool _hasStarted = false;

  Module(
    this.definition, {
    this.imports = const {},
    bool compileAll = true,
  }) {
    // Run this first so that definition errors are thrown before runtime errors.
    if (compileAll) {
      _compileAll();
    }

    // init imports
    _initImports();

    // memory
    _initMemories();

    // functions
    for (var fn in definition.definedFunctions) {
      functions.add(DefinedFunction(this, fn));
    }
    for (var entry in definition.exports.functions.entries) {
      final name = entry.key;
      final index = entry.value;
      exports.functions[name] = functions[index];
    }

    // Init globals first - they can be referenced from other initializers (like
    // data segments, ...).
    _initGlobals();

    _initDataSegments();

    // init segments
    _initSegments();

    // init tables
    _initTables();
  }

  Memory get memory => memories.first;

  void _initImports() {
    // init imported functions
    for (var fn in definition.functions) {
      if (fn is def.ImportedFunctionDefinition) {
        final importName = fn.importModule.name;
        final importModule = imports[importName];
        if (importModule == null) {
          throw LinkException('unknown import');
        }

        final importFunction =
            importModule.functions.firstWhereOrNull((f) => f.name == fn.name);
        if (importFunction == null) {
          throw LinkException('unknown import');
        }

        // validate params and return type
        if (!fn.functionType!
            .compatibleWith(importFunction.args, importFunction.returns)) {
          throw LinkException('incompatible import type');
        }

        functions.add(importFunction);
      }
    }
  }

  void _initMemories() {
    final memoryExports = definition.exports.memories.reversed;

    for (int i = 0; i < definition.memories.length; i++) {
      final memoryDef = definition.memories[i];
      late final Memory memory;

      if (memoryDef is def.ImportedMemoryDefinition) {
        final importModule = imports[memoryDef.importModule.name];
        if (importModule == null) {
          throw LinkException('unknown import');
        }

        final import = importModule.memories
            .firstWhereOrNull((f) => f.name == memoryDef.name);
        if (import == null) {
          throw LinkException('unknown import');
        }

        memory = import.memory;
      } else if (memoryDef is def.DefinedMemoryInfo) {
        memory = Memory(memoryDef.min, memoryDef.max);
      } else {
        throw StateError('unknown memory type: $memoryDef');
      }

      // Update the exports.
      final exportName = memoryExports[i];
      if (exportName != null) {
        exports.memories[exportName] = memory;
      }

      memories.add(memory);
    }
  }

  void _initGlobals() {
    final globalExports = definition.exports.globals.reversed;

    for (int i = 0; i < definition.globals.length; i++) {
      final g = definition.globals[i];
      late final Global global;

      if (g is def.ImportedGlobalDefinition) {
        final importName = g.importModule.name;
        final importModule = imports[importName];
        if (importModule == null) {
          throw LinkException('unknown import');
        }

        final import =
            importModule.globals.firstWhereOrNull((f) => f.name == g.name);
        if (import == null) {
          throw LinkException('unknown import');
        }

        // validate import type
        // if (g.type != import.type || g.mutable != import.mutable) {
        if (g.type != import.type || (g.mutable && !import.mutable)) {
          throw LinkException('incompatible import type');
        }

        global = import;
      } else if (g is def.DefinedGlobal) {
        final startingValue = _evaluateExpression(g.initExpression, g.type);
        global = DefinedGlobal(g.type, g.mutable, startingValue);
      } else {
        throw StateError('unknown global type: $g');
      }

      // Update the exports.
      final exportName = globalExports[i];
      if (exportName != null) {
        exports.globals[exportName] = global;
      }

      globals.add(global);
    }
  }

  void _initDataSegments() {
    for (final segment in definition.dataSegments.segments) {
      if (segment.passive) continue;

      // Copy active segments into memory on module init.
      var offset =
          _evaluateExpression(segment.offsetExpression!, ValueType.i64) as int;
      final memory = memories.first;
      memory.copyFrom(segment.bytes, 0, offset, segment.bytes.length);
    }
  }

  void _initSegments() {
    for (var segmentDef in definition.elementSegments.segments) {
      if (segmentDef.passive) {
        if (segmentDef.functionIndexs != null) {
          final fnIndexes = segmentDef.functionIndexs!;
          final fns = fnIndexes.map((index) => functions[index]).toList();
          _segments.add(PassiveSegment(segmentDef.elementKind, fns));
        } else {
          final fns = <WasmFunction?>[];
          for (var expr in segmentDef.functionIndexExpressions!) {
            final fn =
                _evaluateExpression(expr, ValueType.funcref) as WasmFunction?;
            fns.add(fn);
          }
          _segments.add(PassiveSegment(segmentDef.elementKind, fns));
        }
      } else {
        _segments.add(null);
      }
    }
  }

  void _initTables() {
    final tableExports = definition.exports.tables.reversed;

    for (var i = 0; i < definition.tables.length; i++) {
      final tableDef = definition.tables[i];
      late final Table table;

      if (tableDef is def.DefinedTable) {
        if (tableDef.type == TableType.functype) {
          table = Table<WasmFunction?>(
              tableDef.type, tableDef.minSize, tableDef.maxSize);
        } else {
          table =
              Table<reftype>(tableDef.type, tableDef.minSize, tableDef.maxSize);
        }
      } else if (tableDef is def.ImportedTableDefinition) {
        final importName = tableDef.parent.name;
        final importModule = imports[importName];
        if (importModule == null) {
          throw LinkException('unknown import');
        }
        final import = importModule.tables
            .firstWhereOrNull((f) => f.name == tableDef.name);
        if (import == null) {
          throw LinkException('unknown import');
        }
        if (tableDef.type != import.type) {
          throw LinkException('incompatible import type');
        }
        table = import;
      } else {
        throw LinkException('unhandled table type: $tableDef');
      }

      final exportName = tableExports[i];
      if (exportName != null) {
        exports.tables[exportName] = table;
      }

      tables.add(table);
    }

    // init tables using active element segments
    for (var segment in definition.elementSegments.segments) {
      if (segment.segmentKind != def.SegmentKind.active) continue;

      var offset =
          _evaluateExpression(segment.offsetExpression!, ValueType.i32) as int;
      final table = tables[segment.tableIndex];
      if (segment.functionIndexs != null) {
        final fnIndexes = segment.functionIndexs!;
        final fns = fnIndexes.map((index) => functions[index]).toList();
        table.copyFrom(fns, 0, offset, fns.length);
      } else {
        final fns = <WasmFunction?>[];
        for (var expr in segment.functionIndexExpressions!) {
          fns.add(
              _evaluateExpression(expr, ValueType.funcref) as WasmFunction?);
        }
        table.copyFrom(fns, 0, offset, fns.length);
      }
    }
  }

  void _compileAll() {
    for (final fn in functions.whereType<DefinedFunction>()) {
      fn.compile();
    }

    // TODO: Also compile global initializers, and table and segment instruction
    // sequences.
  }

  void start() {
    if (!_hasStarted) {
      _hasStarted = true;

      final index = definition.startFunctionIndex;
      if (index != null) {
        if (index < 0 || index >= functions.length) {
          throw Trap('unknown function');
        }

        final fn = functions[index];
        if (fn.args.isNotEmpty || fn.returns.isNotEmpty) {
          throw Trap('start function');
        }

        invokeByIndex(index);
      }
    }
  }

  Global? global(String name) => exports.globals[name];

  Object? invoke(String methodName, [List<Object?> args = const []]) {
    // TODO: Throw an exception if there is no such method.
    var func = exports.functions[methodName]!;

    if (!_hasStarted) start();

    return func.invoke(args);
  }

  Object? invokeByIndex(int index, [List<Object?> args = const []]) {
    if (!_hasStarted) start();

    return functions[index].invoke(args);
  }

  Object? _evaluateExpression(List<Instruction> expr, ValueType type) {
    final tempFunction = def.DefinedFunction(definition, 0)
      ..instructions = expr;
    final fn = compileFunction(this, tempFunction,
        fnTypeOverride: FunctionType([], [type]));
    return fn.invoke();
  }
}

class Exports {
  final Map<String, WasmFunction> functions = {};
  final Map<String, Table> tables = {};
  final Map<String, Memory> memories = {};
  final Map<String, Global> globals = {};
}

class PassiveSegment {
  final ValueType? elementKind;
  final List<WasmFunction?> elements;

  PassiveSegment(this.elementKind, this.elements);
}

class ImportModule {
  final List<ImportFunction> functions = [];
  final List<ImportTable> tables = [];
  final List<ImportMemory> memories = [];
  final List<ImportGlobal> globals = [];
}

typedef InvokeHandler = Object? Function(List<Object?> args);

typedef GetHandler = Object? Function();
typedef SetHandler = void Function(Object?);

class ImportGlobal extends Global {
  final String name;
  final GetHandler getter;
  final SetHandler? setter;

  ImportGlobal(
    this.name,
    super.type,
    super.mutable,
    this.getter, [
    this.setter,
  ]);

  @override
  Object? get value => getter();

  @override
  set value(Object? v) {
    if (!mutable) throw Trap('value not mutable');

    setter!(v);
  }
}

class ImportMemory {
  final String name;
  final Memory memory;

  ImportMemory(this.name, this.memory);
}

class ImportTable<T> extends Table<T> {
  final String name;

  final List<T?> _refs;

  ImportTable(
      this.name, super.type, super.minSize, super.maxSize, List<T?> refs)
      : _refs = refs;

  @override
  List<T?> get refs => _refs;
}

abstract class WasmFunction {
  List<ValueType> get args;
  List<ValueType> get returns;

  Object? invoke([List<Object?> args = const []]);
}

class ImportFunction extends WasmFunction {
  final String name;
  final InvokeHandler invokeHandler;
  @override
  final List<ValueType> args;
  @override
  final List<ValueType> returns;

  ImportFunction(this.name, this.invokeHandler,
      [this.args = const [], this.returns = const []]);

  @override
  Object? invoke([List<Object?> args = const []]) => invokeHandler(args);
}

class DefinedFunction extends WasmFunction {
  final Module module;
  final def.DefinedFunction definedFunction;
  CompiledFn? _compiledFn;

  DefinedFunction(this.module, this.definedFunction);

  @override
  List<ValueType> get args => definedFunction.functionType!.parameterTypes;

  @override
  List<ValueType> get returns => definedFunction.functionType!.resultTypes;

  bool get compiled => _compiledFn != null;

  void compile() {
    _compiledFn ??= compileFunction(module, definedFunction);
  }

  @override
  Object? invoke([List<Object?> args = const []]) {
    if (!compiled) compile();

    return _compiledFn!.invoke(args);
  }
}

class CompiledFn {
  final Module module;
  final def.DefinedFunction function;
  final FunctionType functionType;
  final List<Bytecode> bytecodes;
  final int stackHeight;
  final Memory? memory;
  final List<Global> globals;
  final List<Table> tables;
  final List<WasmFunction> functions;

  CompiledFn(
    this.module,
    this.function,
    this.functionType,
    this.bytecodes,
    this.stackHeight,
  )   : memory = module.memories.firstOrNull,
        globals = module.globals,
        tables = module.tables,
        functions = module.functions;

  List<def.DataSegment> get dataSegments =>
      module.definition.dataSegments.segments;

  Set<int> get droppedDataSegments => module._droppedDataSegments;

  Object? invoke([List<Object?> args = const []]) {
    final paramTypes = functionType.parameterTypes;
    if (args.length != paramTypes.length) {
      throw StateError(
        'wrong number of args: expected '
        '${paramTypes.length}, got ${args.length}',
      );
    }

    final List<Object?> locals = <Object?>[];
    locals.addAll(args);
    for (final local in function.locals) {
      locals.add(local.defaultValue);
    }

    final ByteData reinterpretData = ByteData(8);

    final List<Object?> stack = List<Object?>.filled(stackHeight, null);
    int sp = 0;
    int pc = 0;

    final bytecodes = this.bytecodes;

    /* bytecode implementations */

    void unreachable(Bytecode code) {
      throw Trap('unreachable');
    }

    void nop(Bytecode code) {
      // nop
    }

    void block(Bytecode code) {
      // nothing to do
    }

    void loop(Bytecode code) {
      // nothing to do
    }

    void $if(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      if (arg0 == 0) {
        // Execute the else block if it exists.
        pc = code.elseStart != null ? code.elseStart! : code.endFollow!;
      }
    }

    void $else(Bytecode code) {
      // skip the else block
      pc = code.endFollow!;
    }

    void end(Bytecode code) {
      // todo: implement?

      // throw 'unimplemented: end';
    }

    void br(Bytecode $code) {
      final code = $code as BranchBytecode;
      pc = code.targetPc!;

      if (code.stackEdit != null) {
        sp = code.stackEdit!.apply(stack, sp);
      }
    }

    void brIf(Bytecode $code) {
      final code = $code as BranchBytecode;
      i32 arg0 = stack[--sp] as int;
      if (arg0 != 0) {
        pc = code.targetPc!;

        if (code.stackEdit != null) {
          sp = code.stackEdit!.apply(stack, sp);
        }
      }
    }

    void brTable(Bytecode $code) {
      final code = $code as BrTableBytecode;

      i32 arg0 = stack[--sp] as int;

      if (arg0 >= 0 && arg0 < code.targetPcs.length) {
        pc = code.targetPcs[arg0];
        final stackEdit = code.targetPcStackEdits[arg0];
        if (stackEdit != null) {
          sp = stackEdit.apply(stack, sp);
        }
      } else {
        pc = code.defaultTargetPc!;
        if (code.defaultStackEdit != null) {
          sp = code.defaultStackEdit!.apply(stack, sp);
        }
      }
    }

    void $return(Bytecode code) {
      pc = bytecodes.length;
    }

    void call(Bytecode code) {
      // TODO: switch to invoking using the same stack

      i32 index = code.i0;
      final function = functions[index];

      // get args
      final len = function.args.length;
      final args = stack.sublist(sp - len, sp);
      sp -= len;

      final func = functions[index];
      final result = func.invoke(args);

      if (function.returns.length > 1) {
        // TODO: Refactor once we start sharing the stack for functions.
        for (final item in (result as List)) {
          stack[sp++] = item;
        }
      } else if (function.returns.length == 1) {
        stack[sp++] = result;
      }
    }

    void callIndirect(Bytecode code) {
      // Note: These immediates are reversed from what the documentation says.
      var typeIndex = code.i0;
      var tableNum = code.i1;

      int index = stack[--sp] as int;

      final func = tables[tableNum][index] as WasmFunction?;
      if (func == null) {
        throw Trap('uninitialized element');
      }

      // Confirm that the func type is the same as typeIndex.
      // TODO: We'll want to make this faster.
      final expectedType = module.definition.functionTypes[typeIndex];
      if (!expectedType.compatibleWith(func.args, func.returns)) {
        throw Trap('indirect call type mismatch');
      }

      // get args
      final len = func.args.length;
      final args = stack.sublist(sp - len, sp);
      sp -= len;

      final result = func.invoke(args);

      if (func.returns.length > 1) {
        // TODO: Refactor once we start sharing the stack for functions.
        for (final item in (result as List)) {
          stack[sp++] = item;
        }
      } else if (func.returns.length == 1) {
        stack[sp++] = result;
      }
    }

    void drop(Bytecode code) {
      --sp;
    }

    void select(Bytecode code) {
      i32 c = stack[--sp] as int;
      var arg1 = stack[--sp];
      var arg0 = stack[--sp];
      stack[sp++] = c != 0 ? arg0 : arg1;
    }

    void selectT(Bytecode code) {
      i32 c = stack[--sp] as int;
      var arg1 = stack[--sp];
      var arg0 = stack[--sp];
      stack[sp++] = c != 0 ? arg0 : arg1;
    }

    void localGet(Bytecode code) {
      stack[sp++] = locals[code.i0];
    }

    void localSet(Bytecode code) {
      Object? arg0 = stack[--sp];
      locals[code.i0] = arg0;
    }

    void localTee(Bytecode code) {
      Object? arg0 = stack[sp - 1];
      locals[code.i0] = arg0;
    }

    void globalGet(Bytecode code) {
      stack[sp++] = globals[code.i0].value;
    }

    void globalSet(Bytecode code) {
      Object? arg0 = stack[--sp];
      globals[code.i0].value = arg0;
    }

    void tableGet(Bytecode code) {
      int tableNum = code.i0;
      i32 index = stack[--sp] as int;
      stack[sp++] = tables[tableNum][index];
    }

    void tableSet(Bytecode code) {
      int tableNum = code.i0;
      // This could be a `WasmFunction?` for function tables or an `Object?`
      // ref for externref tables.
      final ref = stack[--sp];
      i32 index = stack[--sp] as int;
      tables[tableNum][index] = ref;
    }

    void i32_load(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getInt32(index + code.i1, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i64_load(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getInt64(index + code.i1, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void f32_load(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getFloat32(index + code.i1, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void f64_load(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getFloat64(index + code.i1, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i32_load8_s(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getInt8(index + code.i1);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i32_load8_u(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getUint8(index + code.i1);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i32_load16_s(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getInt16(index + code.i1, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i32_load16_u(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getUint16(index + code.i1, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i64_load8_s(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getInt8(index + code.i1);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i64_load8_u(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getUint8(index + code.i1);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i64_load16_s(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getInt16(index + code.i1, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i64_load16_u(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getUint16(index + code.i1, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i64_load32_s(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getInt32(index + code.i1, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i64_load32_u(Bytecode code) {
      i32 index = stack[--sp] as int;
      if (index < 0) throw Trap('out of bounds memory access');
      try {
        stack[sp++] = memory!.data.getUint32(index + code.i1, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i32_store(Bytecode code) {
      i32 value = stack[--sp] as int;
      i32 index = stack[--sp] as int;
      try {
        memory!.data.setInt32(index + code.i1, value, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i64_store(Bytecode code) {
      i64 value = stack[--sp] as int;
      i32 index = stack[--sp] as int;
      try {
        memory!.data.setInt64(index + code.i1, value, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void f32_store(Bytecode code) {
      f32 value = stack[--sp] as double;
      i32 index = stack[--sp] as int;
      try {
        memory!.data.setFloat32(index + code.i1, value, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void f64_store(Bytecode code) {
      f64 value = stack[--sp] as double;
      i32 index = stack[--sp] as int;
      try {
        memory!.data.setFloat64(index + code.i1, value, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i32_store8(Bytecode code) {
      i32 value = stack[--sp] as int;
      i32 index = stack[--sp] as int;
      try {
        memory!.data.setInt8(index + code.i1, value);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i32_store16(Bytecode code) {
      i32 value = stack[--sp] as int;
      i32 index = stack[--sp] as int;
      try {
        memory!.data.setInt16(index + code.i1, value, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i64_store8(Bytecode code) {
      i64 value = stack[--sp] as int;
      i32 index = stack[--sp] as int;
      try {
        memory!.data.setInt8(index + code.i1, value);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i64_store16(Bytecode code) {
      i64 value = stack[--sp] as int;
      i32 index = stack[--sp] as int;
      try {
        memory!.data.setInt16(index + code.i1, value, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void i64_store32(Bytecode code) {
      i64 value = stack[--sp] as int;
      i32 index = stack[--sp] as int;
      try {
        memory!.data.setInt32(index + code.i1, value, Endian.little);
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }

    void memory_size(Bytecode code) {
      stack[sp++] = memory!.size;
    }

    void memory_grow(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = memory!.grow(arg0);
    }

    void i32_const(Bytecode code) {
      stack[sp++] = code.i0;
    }

    void i64_const(Bytecode code) {
      stack[sp++] = code.i0;
    }

    void f32_const(Bytecode code) {
      stack[sp++] = code.f0;
    }

    void f64_const(Bytecode code) {
      stack[sp++] = code.f0;
    }

    void i32_eqz(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 == 0 ? 1 : 0;
    }

    void i32_eq(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 == arg1 ? 1 : 0;
    }

    void i32_ne(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 != arg1 ? 1 : 0;
    }

    void i32_lt_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 < arg1 ? 1 : 0;
    }

    void i32_lt_u(Bytecode code) {
      i32 arg1 = (stack[--sp] as int) & _mask32;
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = arg0 < arg1 ? 1 : 0;
    }

    void i32_gt_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 > arg1 ? 1 : 0;
    }

    void i32_gt_u(Bytecode code) {
      i32 arg1 = (stack[--sp] as int) & _mask32;
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = arg0 > arg1 ? 1 : 0;
    }

    void i32_le_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 <= arg1 ? 1 : 0;
    }

    void i32_le_u(Bytecode code) {
      i32 arg1 = (stack[--sp] as int) & _mask32;
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = arg0 <= arg1 ? 1 : 0;
    }

    void i32_ge_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 >= arg1 ? 1 : 0;
    }

    void i32_ge_u(Bytecode code) {
      i32 arg1 = (stack[--sp] as int) & _mask32;
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = arg0 >= arg1 ? 1 : 0;
    }

    void i64_eqz(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 == 0 ? 1 : 0;
    }

    void i64_eq(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 == arg1 ? 1 : 0;
    }

    void i64_ne(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 != arg1 ? 1 : 0;
    }

    void i64_lt_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 < arg1 ? 1 : 0;
    }

    void i64_lt_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 < arg1 ? 1 : 0;
    }

    void i64_gt_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 > arg1 ? 1 : 0;
    }

    void i64_gt_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 > arg1 ? 1 : 0;
    }

    void i64_le_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 <= arg1 ? 1 : 0;
    }

    void i64_le_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 <= arg1 ? 1 : 0;
    }

    void i64_ge_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 >= arg1 ? 1 : 0;
    }

    void i64_ge_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 >= arg1 ? 1 : 0;
    }

    void f32_eq(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 == arg1 ? 1 : 0;
    }

    void f32_ne(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 != arg1 ? 1 : 0;
    }

    void f32_lt(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 < arg1 ? 1 : 0;
    }

    void f32_gt(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 > arg1 ? 1 : 0;
    }

    void f32_le(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 <= arg1 ? 1 : 0;
    }

    void f32_ge(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 >= arg1 ? 1 : 0;
    }

    void f64_eq(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 == arg1 ? 1 : 0;
    }

    void f64_ne(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 != arg1 ? 1 : 0;
    }

    void f64_lt(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 < arg1 ? 1 : 0;
    }

    void f64_gt(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 > arg1 ? 1 : 0;
    }

    void f64_le(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 <= arg1 ? 1 : 0;
    }

    void f64_ge(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 >= arg1 ? 1 : 0;
    }

    void i32_clz(Bytecode code) {
      // "Return the count of leading zero bits in i; all bits are considered
      // leading zeros if i is 0."
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = 32 - arg0.bitLength;
    }

    void i32_ctz(Bytecode code) {
      // "Return the count of trailing zero bits in i; all bits are considered
      // trailing zeros if i is 0."
      i32 arg0 = stack[--sp] as int;

      if (arg0 == 0) {
        stack[sp++] = 32;
      } else {
        arg0 |= 0xFFFFFFFF00000000;
        arg0 &= -arg0;
        int clz;
        if (arg0 & 0x8000000000000000 != 0) {
          clz = 0;
        } else {
          clz = 32 - arg0.bitLength;
        }
        // function ctz4 (x)
        //   x &= -x
        //   return w - (clz(x) + 1)
        stack[sp++] = 32 - (clz + 1);
      }
    }

    void i32_popcnt(Bytecode code) {
      // "Return the count of non-zero bits in i."
      i32 arg0 = stack[--sp] as int;
      var result = _popcntTable[arg0 & 0xFF];
      result += _popcntTable[(arg0 >> 8) & 0xFF];
      result += _popcntTable[(arg0 >> 16) & 0xFF];
      result += _popcntTable[(arg0 >> 24) & 0xFF];
      stack[sp++] = result;
    }

    void i32_add(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      var result = arg0 + arg1;
      if ((result & _bit31) != 0) {
        result |= _maskTop32;
      } else {
        result &= _mask32;
      }
      stack[sp++] = result;
    }

    void i32_sub(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      final result = arg0 - arg1;
      stack[sp++] =
          (result & _bit31) != 0 ? result | _maskTop32 : result & _mask32;
    }

    void i32_mul(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      var result = arg0 * arg1;
      if ((result & _bit31) != 0) {
        result |= _maskTop32;
      } else {
        result &= _mask32;
      }
      stack[sp++] = result;
    }

    void i32_div_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      try {
        var result = arg0 ~/ arg1;
        stack[sp++] = result;
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i32_div_u(Bytecode code) {
      i32 arg1 = (stack[--sp] as int) & _mask32;
      i32 arg0 = (stack[--sp] as int) & _mask32;
      try {
        stack[sp++] = arg0 ~/ arg1;
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i32_rem_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      try {
        stack[sp++] = arg0.remainder(arg1);
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i32_rem_u(Bytecode code) {
      u32 arg1 = (stack[--sp] as int) & _mask32;
      u32 arg0 = (stack[--sp] as int) & _mask32;
      try {
        var result = arg0.remainder(arg1);
        // sign extend result
        if ((result & _bit31) != 0) result |= _maskTop32;
        stack[sp++] = result;
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i32_and(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 & arg1;
    }

    void i32_or(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 | arg1;
    }

    void i32_xor(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 ^ arg1;
    }

    void i32_shl(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      arg1 = arg1 & 0x1F; // shift left by arg1 bits modulo 32
      var result = arg0 << arg1;
      if ((result & _bit31) != 0) {
        // sign extend result
        result |= _maskTop32;
      } else {
        // remove anything shifted into the 64 bit portion
        result &= _mask32;
      }
      stack[sp++] = result;
    }

    void i32_shr_s(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = stack[--sp] as int;
      arg1 = arg1 & 0x1F; // shift right by arg1 bits modulo 32
      stack[sp++] = arg0 >> arg1;
    }

    void i32_shr_u(Bytecode code) {
      i32 arg1 = stack[--sp] as int;
      i32 arg0 = (stack[--sp] as int) & _mask32;
      arg1 = arg1 & 0x1F; // shift right by arg1 bits modulo 32
      var result = arg0 >>> arg1;
      // sign extend result
      if ((result & _bit31) != 0) result |= _maskTop32;
      stack[sp++] = result;
    }

    void i32_rotl(Bytecode code) {
      const bitCount = 32;

      i32 count = stack[--sp] as int;
      i32 value = (stack[--sp] as int) & _mask32;

      count = count & 0x1F; // modulo 32

      var result = (value << count) | (value >>> (bitCount - count));
      if ((result & _bit31) != 0) {
        // sign extend result
        result |= _maskTop32;
      } else {
        // remove anything shifted into the 64 bit portion
        result &= _mask32;
      }
      stack[sp++] = result;
    }

    void i32_rotr(Bytecode code) {
      const bitCount = 32;

      i32 count = stack[--sp] as int;
      i32 value = (stack[--sp] as int) & _mask32;

      count = count & 0x1F; //  modulo 32

      i32 result = (value << (bitCount - count)) | (value >>> count);
      if ((result & _bit31) != 0) {
        // sign extend result
        result |= _maskTop32;
      } else {
        // remove anything shifted into the 64 bit portion
        result &= _mask32;
      }
      stack[sp++] = result;
    }

    void i64_clz(Bytecode code) {
      // "Return the count of leading zero bits in i; all bits are considered
      // leading zeros if i is 0."
      i64 arg0 = stack[--sp] as i64;
      if (arg0 & 0x8000000000000000 != 0) {
        stack[sp++] = 0;
      } else {
        stack[sp++] = 64 - arg0.bitLength;
      }
    }

    void i64_ctz(Bytecode code) {
      // "Return the count of trailing zero bits in i; all bits are considered
      // trailing zeros if i is 0."
      i64 arg0 = stack[--sp] as int;
      if (arg0 == 0) {
        stack[sp++] = 64;
      } else {
        arg0 &= -arg0;
        int clz;
        if (arg0 & 0x8000000000000000 != 0) {
          clz = 0;
        } else {
          clz = 64 - arg0.bitLength;
        }
        // function ctz4 (x)
        //   x &= -x
        //   return w - (clz(x) + 1)
        stack[sp++] = 64 - (clz + 1);
      }
    }

    void i64_popcnt(Bytecode code) {
      // "Return the count of non-zero bits in i."
      i64 arg0 = stack[--sp] as int;
      var result = _popcntTable[arg0 & 0xFF];
      result += _popcntTable[(arg0 >> 8) & 0xFF];
      result += _popcntTable[(arg0 >> 16) & 0xFF];
      result += _popcntTable[(arg0 >> 24) & 0xFF];
      result += _popcntTable[(arg0 >> 32) & 0xFF];
      result += _popcntTable[(arg0 >> 40) & 0xFF];
      result += _popcntTable[(arg0 >> 48) & 0xFF];
      result += _popcntTable[(arg0 >> 56) & 0xFF];
      stack[sp++] = result;
    }

    void i64_add(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 + arg1;
    }

    void i64_sub(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 - arg1;
    }

    void i64_mul(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 * arg1;
    }

    void i64_div_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      try {
        stack[sp++] = arg0 ~/ arg1;
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i64_div_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      try {
        stack[sp++] = arg0 ~/ arg1;
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i64_rem_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      try {
        stack[sp++] = arg0.remainder(arg1);
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i64_rem_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      try {
        stack[sp++] = arg0.remainder(arg1);
      } on IntegerDivisionByZeroException {
        throw Trap('integer divide by zero');
      }
    }

    void i64_and(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 & arg1;
    }

    void i64_or(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 | arg1;
    }

    void i64_xor(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 ^ arg1;
    }

    void i64_shl(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      // shift left by arg1 bits modulo 64
      arg1 = arg1 & 0x3F;
      stack[sp++] = arg0 << arg1;
    }

    void i64_shr_s(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      // shift right by arg1 bits modulo 64
      arg1 = arg1 & 0x3F;
      stack[sp++] = arg0 >> arg1;
    }

    void i64_shr_u(Bytecode code) {
      i64 arg1 = stack[--sp] as int;
      i64 arg0 = stack[--sp] as int;
      // shift right by arg1 bits modulo 64
      arg1 = arg1 & 0x3F;
      stack[sp++] = arg0 >>> arg1;
    }

    void i64_rotl(Bytecode code) {
      const bitCount = 64;

      u64 count = stack[--sp] as int;
      u64 value = stack[--sp] as int;

      count = count & 0x3F; // count bits modulo 64

      i64 result = count == 0
          ? value
          : (value << count) | (value >>> (bitCount - count));
      stack[sp++] = result;
    }

    void i64_rotr(Bytecode code) {
      const bitCount = 64;

      u64 count = stack[--sp] as int;
      u64 value = stack[--sp] as int;

      count = count & 0x3F; // count bits modulo 64

      i64 result = count == 0
          ? value
          : (value << (bitCount - count)) | (value >>> count);
      stack[sp++] = result;
    }

    void f32_abs(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.abs();
    }

    void f32_neg(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = -arg0;
    }

    void f32_ceil(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.ceilToDouble();
    }

    void f32_floor(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.floorToDouble();
    }

    void f32_trunc(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.truncateToDouble();
    }

    void f32_nearest(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.roundToDouble();
    }

    void f32_sqrt(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = sqrt(arg0);
    }

    void f32_add(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 + arg1;
    }

    void f32_sub(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 - arg1;
    }

    void f32_mul(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 * arg1;
    }

    void f32_div(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 / arg1;
    }

    void f32_min(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = min(arg0, arg1);
    }

    void f32_max(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = max(arg0, arg1);
    }

    void f32_copysign(Bytecode code) {
      f32 arg1 = stack[--sp] as double;
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.isNegative == arg1.isNegative ? arg0 : -arg0;
    }

    void f64_abs(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.abs();
    }

    void f64_neg(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = -arg0;
    }

    void f64_ceil(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.ceilToDouble();
    }

    void f64_foor(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.floorToDouble();
    }

    void f64_trunc(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.truncateToDouble();
    }

    void f64_nearest(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.roundToDouble();
    }

    void f64_sqrt(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = sqrt(arg0);
    }

    void f64_add(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 + arg1;
    }

    void f64_sub(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 - arg1;
    }

    void f64_mul(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 * arg1;
    }

    void f64_div(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 / arg1;
    }

    void f64_min(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = min(arg0, arg1);
    }

    void f64_max(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = max(arg0, arg1);
    }

    void f64_copysign(Bytecode code) {
      f64 arg1 = stack[--sp] as double;
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.isNegative == arg1.isNegative ? arg0 : -arg0;
    }

    void i32_wrap_i64(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      i32 result = arg0 & _mask32;
      // sign extend
      if ((result & _bit31) != 0) result |= _maskTop32;
      stack[sp++] = result;
    }

    void i32_trunc_f32_s(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      try {
        stack[sp++] = arg0.truncate();
      } on UnsupportedError {
        if (arg0.isInfinite) {
          throw Trap('integer overflow');
        } else {
          throw Trap('invalid conversion to integer');
        }
      }
    }

    void i32_trunc_f32_u(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      try {
        stack[sp++] = arg0.truncate();
      } on UnsupportedError {
        if (arg0.isInfinite) {
          throw Trap('integer overflow');
        } else {
          throw Trap('invalid conversion to integer');
        }
      }
    }

    void i32_trunc_f64_s(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      try {
        i32 result = arg0.truncate();
        stack[sp++] = result;
      } on UnsupportedError {
        if (arg0.isInfinite) {
          throw Trap('integer overflow');
        } else {
          throw Trap('invalid conversion to integer');
        }
      }
    }

    void i32_trunc_f64_u(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      try {
        stack[sp++] = arg0.truncate();
      } on UnsupportedError {
        if (arg0.isInfinite) {
          throw Trap('integer overflow');
        } else {
          throw Trap('invalid conversion to integer');
        }
      }
    }

    void i64_extend_i32_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0 /*as i64*/;
    }

    void i64_extend_i32_u(Bytecode code) {
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = arg0 /*as u64*/;
    }

    void i64_trunc_f32_s(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      try {
        stack[sp++] = arg0.truncate();
      } on UnsupportedError {
        if (arg0.isInfinite) {
          throw Trap('integer overflow');
        } else {
          throw Trap('invalid conversion to integer');
        }
      }
    }

    void i64_trunc_f32_u(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      try {
        stack[sp++] = arg0.truncate();
      } on UnsupportedError {
        if (arg0.isInfinite) {
          throw Trap('integer overflow');
        } else {
          throw Trap('invalid conversion to integer');
        }
      }
    }

    void i64_trunc_f64_s(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      try {
        stack[sp++] = arg0.truncate();
      } on UnsupportedError {
        if (arg0.isInfinite) {
          throw Trap('integer overflow');
        } else {
          throw Trap('invalid conversion to integer');
        }
      }
    }

    void i64_trunc_f64_u(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      try {
        stack[sp++] = arg0.truncate();
      } on UnsupportedError {
        if (arg0.isInfinite) {
          throw Trap('integer overflow');
        } else {
          throw Trap('invalid conversion to integer');
        }
      }
    }

    void f32_convert_i32_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0.toDouble();
    }

    void f32_convert_i32_u(Bytecode code) {
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = arg0.toDouble();
    }

    void f32_convert_i64_s(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0.toDouble();
    }

    void f32_convert_i64_u(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0.toDouble();
    }

    void f32_demote_f64(Bytecode code) {
      // TODO: verify this implementation
      f64 arg0 = stack[--sp] as double;
      f32 result = arg0.clamp(
        -3.4028234663852885981170418348451692544e+38,
        3.4028235e38,
      );
      stack[sp++] = result;
    }

    void f64_convert_i32_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      stack[sp++] = arg0.toDouble();
    }

    void f64_convert_i32_u(Bytecode code) {
      i32 arg0 = (stack[--sp] as int) & _mask32;
      stack[sp++] = arg0.toDouble();
    }

    void f64_convert_i64_s(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0.toDouble();
    }

    void f64_convert_i64_u(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      stack[sp++] = arg0.toDouble();
    }

    void f64_promote_f32(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0 /*as f64*/;
    }

    void i32_reinterpret_f32(Bytecode code) {
      f32 arg0 = stack[--sp] as double;
      reinterpretData.setFloat32(0, arg0, Endian.little);
      stack[sp++] = reinterpretData.getUint32(0, Endian.little);
    }

    void i64_reinterpret_f64(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      reinterpretData.setFloat64(0, arg0, Endian.little);
      stack[sp++] = reinterpretData.getUint64(0, Endian.little);
    }

    void f32_reinterpret_i32(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      reinterpretData.setUint32(0, arg0, Endian.little);
      stack[sp++] = reinterpretData.getFloat32(0, Endian.little);
    }

    void f64_reinterpret_i64(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      reinterpretData.setUint64(0, arg0, Endian.little);
      stack[sp++] = reinterpretData.getFloat64(0, Endian.little);
    }

    void i32_extend8_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      if ((arg0 & 0x80) != 0) {
        stack[sp++] = 0xFFFFFFFFFFFFFF00 | arg0;
      } else {
        stack[sp++] = arg0 & 0xFF;
      }
    }

    void i32_extend16_s(Bytecode code) {
      i32 arg0 = stack[--sp] as int;
      if ((arg0 & 0x8000) != 0) {
        i64 result = 0xFFFFFFFFFFFF0000 | arg0;
        stack[sp++] = result;
      } else {
        stack[sp++] = arg0 & 0xFFFF;
      }
    }

    void i64_extend8_s(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      if ((arg0 & 0x80) != 0) {
        i64 result = 0xFFFFFFFFFFFFFF00 | arg0;
        stack[sp++] = result;
      } else {
        i64 result = 0x00000000000000FF & arg0;
        stack[sp++] = result;
      }
    }

    void i64_extend16_s(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      if ((arg0 & 0x8000) != 0) {
        i64 result = 0xFFFFFFFFFFFF0000 | arg0;
        stack[sp++] = result;
      } else {
        i64 result = 0x000000000000FFFF & arg0;
        stack[sp++] = result;
      }
    }

    void i64_extend32_s(Bytecode code) {
      i64 arg0 = stack[--sp] as int;
      if ((arg0 & 0x80000000) != 0) {
        i64 result = 0xFFFFFFFF00000000 | arg0;
        stack[sp++] = result;
      } else {
        i64 result = 0x00000000FFFFFFFF & arg0;
        stack[sp++] = result;
      }
    }

    void refNull(Bytecode code) {
      stack[sp++] = null;
    }

    void ref_is_null(Bytecode code) {
      reftype ref = stack[--sp];
      stack[sp++] = ref == null ? 1 : 0;
    }

    void refFunc(Bytecode code) {
      var funcIndex = code.i0;
      var func = functions[funcIndex];
      stack[sp++] = func;
    }

    void i32_trunc_sat_f32_s(Bytecode code) {
      // f32 => i32
      // TODO: verify this logic
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.toInt() & _mask32;
    }

    void i32_trunc_sat_f32_u(Bytecode code) {
      // f32 => i32
      // TODO: verify this logic
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.toInt() & _mask32;
    }

    void i32_trunc_sat_f64_s(Bytecode code) {
      // f64 => i32
      // TODO: verify this logic
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.toInt() & _mask32;
    }

    void i32_trunc_sat_f64_u(Bytecode code) {
      // f64 => i32
      // TODO: verify this logic
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.toInt() & _mask32;
    }

    void i64_trunc_sat_f32_s(Bytecode code) {
      // f32 => i64
      // TODO: verify this logic
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.toInt();
    }

    void i64_trunc_sat_f32_u(Bytecode code) {
      // f32 => i64
      // TODO: verify this logic
      f32 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.toInt();
    }

    void i64_trunc_sat_f64_s(Bytecode code) {
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.toInt();
    }

    void i64_trunc_sat_f64_u(Bytecode code) {
      // f64 => i64
      // TODO: verify this logic
      f64 arg0 = stack[--sp] as double;
      stack[sp++] = arg0.toInt();
    }

    void memory_init(Bytecode code) {
      i32 dataSegment = code.i0;
      i32 memIndex = code.i1;

      i32 count = stack[--sp] as int;
      i32 srcOffset = stack[--sp] as int;
      i32 dstOffset = stack[--sp] as int;

      if (droppedDataSegments.contains(dataSegment) && count > 0) {
        throw Trap('out of bounds memory access');
      }

      memory!.copyFrom(
          dataSegments[dataSegment].bytes, srcOffset, dstOffset, count);
    }

    void data_drop(Bytecode code) {
      // Drop data segment 'index'.
      i32 index = code.i0;

      droppedDataSegments.add(index);
    }

    void memory_copy(Bytecode code) {
      i32 destMemoryIndex = code.i0;
      i32 srcMemoryIndex = code.i1;

      i32 count = stack[--sp] as int;
      i32 srcOffset = stack[--sp] as int;
      i32 dstOffset = stack[--sp] as int;

      memory!.copy(count, srcOffset, dstOffset);
    }

    void memory_fill(Bytecode code) {
      i32 count = stack[--sp] as int;
      i32 value = stack[--sp] as int;
      i32 offset = stack[--sp] as int;
      memory!.fill(value, offset, count);
    }

    void table_init(Bytecode code) {
      var segmentIndex = code.i0;
      var tableIndex = code.i1;

      if (tableIndex < 0 || tableIndex >= tables.length) {
        throw Trap('out of bounds table access');
      }

      i32 count = stack[--sp] as int;
      i32 srcOffset = stack[--sp] as int;
      i32 dstOffset = stack[--sp] as int;

      final segment = module._segments[segmentIndex];
      if (segment == null) {
        if (count == 0) return;

        throw Trap('out of bounds table access');
      }

      tables[tableIndex]
          .copyFrom(segment.elements, srcOffset, dstOffset, count);
    }

    void elem_drop(Bytecode code) {
      // optionally, drop the given element segment
      u32 index = code.i0;
      module._segments[index] = null;
    }

    void table_copy(Bytecode code) {
      u32 destTable = code.i0;
      u32 srcTable = code.i1;

      i32 count = stack[--sp] as int;
      i32 srcOffset = stack[--sp] as int;
      i32 dstOffset = stack[--sp] as int;

      tables[srcTable].copyTo(tables[destTable], srcOffset, dstOffset, count);
    }

    void table_grow(Bytecode code) {
      i32 growBy = stack[--sp] as int;
      var ref = stack[--sp];

      var table = tables[code.i0];
      var oldSize = table.size;
      if (table.grow(growBy, ref)) {
        stack[sp++] = oldSize;
      } else {
        stack[sp++] = -1;
      }
    }

    void table_size(Bytecode code) {
      int index = code.i0;
      stack[sp++] = tables[index].size;
    }

    void table_fill(Bytecode code) {
      i32 index = code.i0;

      i32 n = stack[--sp] as int;
      var val = stack[--sp];
      i32 offset = stack[--sp] as int;

      tables[index].fill(val, offset, n);
    }

    /* bytecode implementations */

    final List<ImplFn> dispatch = [
      unreachable,
      nop,
      block,
      loop,
      $if,
      $else,
      end,
      br,
      brIf,
      brTable,
      $return,
      call,
      callIndirect,
      drop,
      select,
      selectT,
      localGet,
      localSet,
      localTee,
      globalGet,
      globalSet,
      tableGet,
      tableSet,
      i32_load,
      i64_load,
      f32_load,
      f64_load,
      i32_load8_s,
      i32_load8_u,
      i32_load16_s,
      i32_load16_u,
      i64_load8_s,
      i64_load8_u,
      i64_load16_s,
      i64_load16_u,
      i64_load32_s,
      i64_load32_u,
      i32_store,
      i64_store,
      f32_store,
      f64_store,
      i32_store8,
      i32_store16,
      i64_store8,
      i64_store16,
      i64_store32,
      memory_size,
      memory_grow,
      i32_const,
      i64_const,
      f32_const,
      f64_const,
      i32_eqz,
      i32_eq,
      i32_ne,
      i32_lt_s,
      i32_lt_u,
      i32_gt_s,
      i32_gt_u,
      i32_le_s,
      i32_le_u,
      i32_ge_s,
      i32_ge_u,
      i64_eqz,
      i64_eq,
      i64_ne,
      i64_lt_s,
      i64_lt_u,
      i64_gt_s,
      i64_gt_u,
      i64_le_s,
      i64_le_u,
      i64_ge_s,
      i64_ge_u,
      f32_eq,
      f32_ne,
      f32_lt,
      f32_gt,
      f32_le,
      f32_ge,
      f64_eq,
      f64_ne,
      f64_lt,
      f64_gt,
      f64_le,
      f64_ge,
      i32_clz,
      i32_ctz,
      i32_popcnt,
      i32_add,
      i32_sub,
      i32_mul,
      i32_div_s,
      i32_div_u,
      i32_rem_s,
      i32_rem_u,
      i32_and,
      i32_or,
      i32_xor,
      i32_shl,
      i32_shr_s,
      i32_shr_u,
      i32_rotl,
      i32_rotr,
      i64_clz,
      i64_ctz,
      i64_popcnt,
      i64_add,
      i64_sub,
      i64_mul,
      i64_div_s,
      i64_div_u,
      i64_rem_s,
      i64_rem_u,
      i64_and,
      i64_or,
      i64_xor,
      i64_shl,
      i64_shr_s,
      i64_shr_u,
      i64_rotl,
      i64_rotr,
      f32_abs,
      f32_neg,
      f32_ceil,
      f32_floor,
      f32_trunc,
      f32_nearest,
      f32_sqrt,
      f32_add,
      f32_sub,
      f32_mul,
      f32_div,
      f32_min,
      f32_max,
      f32_copysign,
      f64_abs,
      f64_neg,
      f64_ceil,
      f64_foor,
      f64_trunc,
      f64_nearest,
      f64_sqrt,
      f64_add,
      f64_sub,
      f64_mul,
      f64_div,
      f64_min,
      f64_max,
      f64_copysign,
      i32_wrap_i64,
      i32_trunc_f32_s,
      i32_trunc_f32_u,
      i32_trunc_f64_s,
      i32_trunc_f64_u,
      i64_extend_i32_s,
      i64_extend_i32_u,
      i64_trunc_f32_s,
      i64_trunc_f32_u,
      i64_trunc_f64_s,
      i64_trunc_f64_u,
      f32_convert_i32_s,
      f32_convert_i32_u,
      f32_convert_i64_s,
      f32_convert_i64_u,
      f32_demote_f64,
      f64_convert_i32_s,
      f64_convert_i32_u,
      f64_convert_i64_s,
      f64_convert_i64_u,
      f64_promote_f32,
      i32_reinterpret_f32,
      i64_reinterpret_f64,
      f32_reinterpret_i32,
      f64_reinterpret_i64,
      i32_extend8_s,
      i32_extend16_s,
      i64_extend8_s,
      i64_extend16_s,
      i64_extend32_s,
      refNull,
      ref_is_null,
      refFunc,
      i32_trunc_sat_f32_s,
      i32_trunc_sat_f32_u,
      i32_trunc_sat_f64_s,
      i32_trunc_sat_f64_u,
      i64_trunc_sat_f32_s,
      i64_trunc_sat_f32_u,
      i64_trunc_sat_f64_s,
      i64_trunc_sat_f64_u,
      memory_init,
      data_drop,
      memory_copy,
      memory_fill,
      table_init,
      elem_drop,
      table_copy,
      table_grow,
      table_size,
      table_fill,
    ];

    final len = bytecodes.length;

    while (pc < len) {
      final code = bytecodes[pc++];

      // Call the implementation method for the given bytecode.
      final impl = dispatch[code.code];
      impl(code);
    }

    if (functionType.resultTypes.length == 1) {
      return stack[--sp];
    } else if (functionType.resultTypes.length > 1) {
      return stack.sublist(sp - functionType.resultTypes.length, sp);
    } else {
      return null;
    }
  }
}

const int _mask32 = 0xFFFFFFFF;
const int _bit31 = 0x80000000;
const int _maskTop32 = 0xFFFFFFFF00000000;

class Trap implements Exception {
  final String message;

  Trap(this.message);

  @override
  String toString() => message;
}

class LinkException implements Exception {
  final String message;

  LinkException(this.message);

  @override
  String toString() => message;
}

class Memory {
  static const defaultMaxSize = 64 * 1024;
  static const pageSize = 64 * 1024;

  final int initialPageSize;
  final int? maxPageSize;

  ByteData data;

  // TODO: guard against large initial page sizes

  Memory(this.initialPageSize, [this.maxPageSize])
      : data = ByteData(initialPageSize * pageSize);

  // Utility methods.

  Uint8List getBytes(int offset, int length) {
    return data.buffer.asUint8List(offset, length);
  }

  String getUtf8(int offset, int length) {
    var bytes = data.buffer.asUint8List(offset, length);
    return utf8.decode(bytes);
  }

  /// Return the current size of the memory, in pages.
  int get size => data.buffer.lengthInBytes ~/ pageSize;

  int grow(int growPages) {
    var oldSize = size;

    // TODO: guard against large values for maxPageSize

    if (oldSize + growPages > (maxPageSize ?? defaultMaxSize)) {
      return -1;
    }

    // TODO: find a faster way to do this
    var newData = ByteData((oldSize + growPages) * pageSize);
    int len = data.buffer.lengthInBytes;
    for (int i = 0; i < len; i++) {
      newData.setUint8(i, data.getUint8(i));
    }
    data = newData;

    return oldSize;
  }

  void copyFrom(Uint8List bytes, int sourceOffset, int destOffset, int length) {
    if (sourceOffset < 0 || sourceOffset + length > bytes.length) {
      throw Trap('out of bounds memory access');
    }

    if (destOffset < 0 || destOffset + length > data.lengthInBytes) {
      throw Trap('out of bounds memory access');
    }

    if (length < 0) {
      throw Trap('out of bounds memory access');
    }

    for (int i = 0; i < length; i++) {
      data.setUint8(destOffset + i, bytes[sourceOffset + i]);
    }
  }

  void copy(i32 count, i32 sourceOffset, i32 destOffset) {
    var len = data.lengthInBytes;
    if (sourceOffset + count > len || destOffset + count > len) {
      throw Trap('out of bounds memory access');
    }

    if (sourceOffset > destOffset) {
      try {
        for (int i = 0; i < count; i++) {
          data.setUint8(destOffset + i, data.getUint8(sourceOffset + i));
        }
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    } else {
      try {
        for (int i = count - 1; i >= 0; i--) {
          data.setUint8(destOffset + i, data.getUint8(sourceOffset + i));
        }
      } on RangeError {
        throw Trap('out of bounds memory access');
      }
    }
  }

  void fill(i32 value, i32 offset, i32 count) {
    if (offset < 0 || count < 0 || offset + count > data.lengthInBytes) {
      throw Trap('out of bounds memory access');
    }

    for (int i = 0; i < count; i++) {
      data.setUint8(i + offset, value);
    }
  }
}

abstract class Global {
  final ValueType type;
  final bool mutable;

  Global(this.type, this.mutable);

  Object? get value;
  set value(Object? v);
}

class DefinedGlobal extends Global {
  Object? _value;

  DefinedGlobal(super.type, super.mutable, [this._value]);

  @override
  Object? get value => _value;

  @override
  set value(Object? v) {
    // TOOD: We may not need to check here if checks are done at compile time.
    if (!mutable) throw Trap('value not mutable');

    _value = v;
  }
}

// TODO: specialize tables to function refs (Table<WasmFunction?>) and extern
// refs (Table<Object?> / Table<reftype>)?

class Table<T> {
  final TableType type;
  final int minSize;
  final int? maxSize;

  final List<T?> refs;

  Table(this.type, this.minSize, this.maxSize)
      : refs = List.filled(minSize, null, growable: true);

  int get size => refs.length;

  T? operator [](int index) {
    try {
      return refs[index];
    } on RangeError {
      throw Trap('out of bounds table access');
    }
  }

  void operator []=(int index, T? value) {
    try {
      refs[index] = value;
    } on RangeError {
      throw Trap('out of bounds table access');
    }
  }

  void copyTo(Table<T> dest, int sourceOffset, int destOffset, int count) {
    if (sourceOffset < 0 || destOffset < 0 || count < 0) {
      throw Trap('out of bounds table access');
    }

    if (sourceOffset + count > refs.length ||
        destOffset + count > dest.refs.length) {
      throw Trap('out of bounds table access');
    }

    if (sourceOffset > destOffset) {
      for (int i = 0; i < count; i++) {
        dest.refs[destOffset + i] = refs[sourceOffset + i];
      }
    } else {
      for (int i = count - 1; i >= 0; i--) {
        dest.refs[destOffset + i] = refs[sourceOffset + i];
      }
    }
  }

  void fill(T? val, i32 offset, i32 count) {
    if (offset < 0 || (offset + count > refs.length)) {
      throw Trap('out of bounds table access');
    }

    for (int i = 0; i < count; i++) {
      refs[offset + i] = val;
    }
  }

  bool grow(int growBy, T? fillRef) {
    var newSize = refs.length + growBy;
    if (growBy < 0 || newSize > (maxSize ?? _mask32)) {
      return false;
    }

    refs.length = newSize;
    for (int i = 0; i < growBy; i++) {
      refs[newSize - i - 1] = fillRef;
    }

    return true;
  }

  void copyFrom(List<T> data, int srcOffset, int dstOffset, int count) {
    if (srcOffset + count > data.length || dstOffset + count > refs.length) {
      throw Trap('out of bounds table access');
    }

    for (int i = 0; i < count; i++) {
      refs[dstOffset + i] = data[srcOffset + i];
    }
  }
}

const List<int> _popcntTable = <int>[
  0, 1, 1, 2, // 00000000, 00000001, 00000010, 00000011
  1, 2, 2, 3, // 00000100, 00000101, 00000110, 00000111
  1, 2, 2, 3, // 00001000, 00001001, 00001010, 00001011
  2, 3, 3, 4, // 00001100, 00001101, 00001110, 00001111
  1, 2, 2, 3, // 00010000, 00010001, 00010010, 00010011
  2, 3, 3, 4, // 00010100, 00010101, 00010110, 00010111
  2, 3, 3, 4, // 00011000, 00011001, 00011010, 00011011
  3, 4, 4, 5, // 00011100, 00011101, 00011110, 00011111
  1, 2, 2, 3, // 00100000, 00100001, 00100010, 00100011
  2, 3, 3, 4, // 00100100, 00100101, 00100110, 00100111
  2, 3, 3, 4, // 00101000, 00101001, 00101010, 00101011
  3, 4, 4, 5, // 00101100, 00101101, 00101110, 00101111
  2, 3, 3, 4, // 00110000, 00110001, 00110010, 00110011
  3, 4, 4, 5, // 00110100, 00110101, 00110110, 00110111
  3, 4, 4, 5, // 00111000, 00111001, 00111010, 00111011
  4, 5, 5, 6, // 00111100, 00111101, 00111110, 00111111
  1, 2, 2, 3, // 01000000, 01000001, 01000010, 01000011
  2, 3, 3, 4, // 01000100, 01000101, 01000110, 01000111
  2, 3, 3, 4, // 01001000, 01001001, 01001010, 01001011
  3, 4, 4, 5, // 01001100, 01001101, 01001110, 01001111
  2, 3, 3, 4, // 01010000, 01010001, 01010010, 01010011
  3, 4, 4, 5, // 01010100, 01010101, 01010110, 01010111
  3, 4, 4, 5, // 01011000, 01011001, 01011010, 01011011
  4, 5, 5, 6, // 01011100, 01011101, 01011110, 01011111
  2, 3, 3, 4, // 01100000, 01100001, 01100010, 01100011
  3, 4, 4, 5, // 01100100, 01100101, 01100110, 01100111
  3, 4, 4, 5, // 01101000, 01101001, 01101010, 01101011
  4, 5, 5, 6, // 01101100, 01101101, 01101110, 01101111
  3, 4, 4, 5, // 01110000, 01110001, 01110010, 01110011
  4, 5, 5, 6, // 01110100, 01110101, 01110110, 01110111
  4, 5, 5, 6, // 01111000, 01111001, 01111010, 01111011
  5, 6, 6, 7, // 01111100, 01111101, 01111110, 01111111
  1, 2, 2, 3, // 10000000, 10000001, 10000010, 10000011
  2, 3, 3, 4, // 10000100, 10000101, 10000110, 10000111
  2, 3, 3, 4, // 10001000, 10001001, 10001010, 10001011
  3, 4, 4, 5, // 10001100, 10001101, 10001110, 10001111
  2, 3, 3, 4, // 10010000, 10010001, 10010010, 10010011
  3, 4, 4, 5, // 10010100, 10010101, 10010110, 10010111
  3, 4, 4, 5, // 10011000, 10011001, 10011010, 10011011
  4, 5, 5, 6, // 10011100, 10011101, 10011110, 10011111
  2, 3, 3, 4, // 10100000, 10100001, 10100010, 10100011
  3, 4, 4, 5, // 10100100, 10100101, 10100110, 10100111
  3, 4, 4, 5, // 10101000, 10101001, 10101010, 10101011
  4, 5, 5, 6, // 10101100, 10101101, 10101110, 10101111
  3, 4, 4, 5, // 10110000, 10110001, 10110010, 10110011
  4, 5, 5, 6, // 10110100, 10110101, 10110110, 10110111
  4, 5, 5, 6, // 10111000, 10111001, 10111010, 10111011
  5, 6, 6, 7, // 10111100, 10111101, 10111110, 10111111
  2, 3, 3, 4, // 11000000, 11000001, 11000010, 11000011
  3, 4, 4, 5, // 11000100, 11000101, 11000110, 11000111
  3, 4, 4, 5, // 11001000, 11001001, 11001010, 11001011
  4, 5, 5, 6, // 11001100, 11001101, 11001110, 11001111
  3, 4, 4, 5, // 11010000, 11010001, 11010010, 11010011
  4, 5, 5, 6, // 11010100, 11010101, 11010110, 11010111
  4, 5, 5, 6, // 11011000, 11011001, 11011010, 11011011
  5, 6, 6, 7, // 11011100, 11011101, 11011110, 11011111
  3, 4, 4, 5, // 11100000, 11100001, 11100010, 11100011
  4, 5, 5, 6, // 11100100, 11100101, 11100110, 11100111
  4, 5, 5, 6, // 11101000, 11101001, 11101010, 11101011
  5, 6, 6, 7, // 11101100, 11101101, 11101110, 11101111
  4, 5, 5, 6, // 11110000, 11110001, 11110010, 11110011
  5, 6, 6, 7, // 11110100, 11110101, 11110110, 11110111
  5, 6, 6, 7, // 11111000, 11111001, 11111010, 11111011
  6, 7, 7, 8, // 11111100, 11111101, 11111110, 11111111
];
