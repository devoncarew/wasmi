import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:collection/collection.dart';

import 'exec.dart';
import 'instructions.dart';
import 'types.dart';
import 'utils.dart';

const verbose = true;

class Loader {
  Loader();

  Module load(File file) {
    // todo:
    _log('Parsing ${file.path}...');
    _log();

    final fileData = file.readAsBytesSync();
    final r = Reader(fileData);

    // 0x00 0x61 0x73 0x6D
    // 0x01 0x00 0x00 0x00
    final magic = r.readByteHeader(Endian.big);
    r.verifyMarker(magic, 0x0061736D);
    final version = r.readByteHeader();

    _log('magic: ${hex(magic, 8)}');
    _log('version: $version'); // expected: 1
    _log('');

    // todo: use a builder pattern here
    final module = Module();

    while (r.bytesRemaining() > 0) {
      var kind = r.readUint8();
      var sectionKind = SectionKind.from(kind);
      var length = r.leb128();
      _log('[section ${sectionKind?.name}] (bytes: $length)');

      switch (sectionKind) {
        case SectionKind.custom:
          _parseCustomSection(r, module, length);
        case SectionKind.type:
          _parseTypeSection(r, module);
        // case SectionKind.import:
        //   _parseImportSection(r, module);
        case SectionKind.function:
          _parseFunctionSection(r, module);
        // case SectionKind.table:
        //   _parseTableSection(r, module);
        case SectionKind.memory:
          _parseMemorySection(r, module);
        // case SectionKind.global:
        //   _parseGlobalSection(r, module);
        case SectionKind.export:
          _parseExportSection(r, module);
        // case SectionKind.start:
        //   _parseStartSection(r, module);
        // case SectionKind.element:
        //   _parseElementSection(r, module);
        case SectionKind.code:
          _parseCodeSection(r, module);
        // case SectionKind.data:
        //   _parseDataSection(r, module);
        // case SectionKind.data_count:
        //   _parseDataCountSection(r, module);
        default:
          throw 'unhandled section ${sectionKind?.name}';
      }
    }

    return module;
  }

  void _parseCustomSection(Reader r, Module module, int length) {
    var data = r.readUint8List(length).toList();
    var customSectionReader = Reader(Uint8List.fromList(data));

    var name = customSectionReader.readUtf8();
    if (name == 'name') {
      _parseNameCustomSection(customSectionReader, module);
    } else {
      print('  skipping custom section [$name]');
    }
  }

  void _parseNameCustomSection(Reader r, Module module) {
    // https://webassembly.github.io/spec/core/appendix/custom.html#name-section
    // https://github.com/WebAssembly/extended-name-section/blob/main/proposals/extended-name-section/Overview.md

    while (r.bytesRemaining() > 0) {
      var subsectionId = r.readUint8();
      var size = r.leb128_u();

      // 4: type names

      switch (subsectionId) {
        case 0:
          // module name
          var name = r.readUtf8();
          module.debugInfo = DebugInfo(name: name);
          _log('[$name]');
          break;
        case 1:
          // function names
          var functions = r.leb128_u();
          for (int i = 0; i < functions; i++) {
            var functionIndex = r.leb128_u();
            var name = r.readUtf8();
            _log('  [$name]');
            var func = module.functionByIndex(functionIndex);
            if (func is DefinedFunction) {
              (func.debugInfo ??= DebugInfo()).name = name;
            }
          }
          break;
        case 2:
          // local names
          var functions = r.leb128_u();
          for (int i = 0; i < functions; i++) {
            var functionIndex = r.leb128_u();
            var func = module.functionByIndex(functionIndex);
            var locals = r.leb128_u();
            for (int j = 0; j < locals; j++) {
              var localIndex = r.leb128_u();
              var name = r.readUtf8();
              if (func is DefinedFunction) {
                var localMap = (func.debugInfo ??= DebugInfo()).indexedNames;
                localMap[localIndex] = name;
              }
            }
          }
          break;
        case 6:
          // memory names
          var count = r.leb128_u();
          for (int i = 0; i < count; i++) {
            var memoryIndex = r.leb128_u();
            var name = r.readUtf8();
            _log("  [memory $memoryIndex: '$name']");
            // var func = module.memoryByIndex(memoryIndex);
            // // todo: assign name
          }
          break;
        // case 7:
        //   // global names
        //   var functions = r.leb128_u();
        //   for (int i = 0; i < functions; i++) {
        //     var index = r.leb128_u();
        //     // TODO: We could also run this name through patchUpName()
        //     var name = r.readUtf8();
        //     if (isValidIdentifier(name)) {
        //       _log('  [$name]');
        //       var localMap =
        //           (module.globals.debugInfo ??= DebugInfo()).indexedNames;
        //       localMap[index] = name;
        //     }
        //   }
        //   break;
        // case 9:
        //   // data segment names
        //   var items = r.leb128_u();
        //   for (int i = 0; i < items; i++) {
        //     var index = r.leb128_u();
        //     var name = patchUpName(r.readUtf8());
        //     if (isValidIdentifier(name)) {
        //       var localMap =
        //           (module.dataSegments.debugInfo ??= DebugInfo()).indexedNames;
        //       localMap[index] = name;
        //     }
        //   }
        // break;
        default:
          _log('  unknown name subsection kind: ${hex(subsectionId)}');
          r.skip(size);
          break;
      }
    }
  }

  void _parseTypeSection(Reader r, Module module) {
    // "It decodes into a vector of function types that represent the types
    // component of a module.
    //
    //   typesec ::= ft*: section1(vec(functype)) ⇒ ft*"

    // "Function types are encoded by the byte 0x60 followed by the
    // respective vectors of parameter and result types.
    //
    //   functype ::= 0x60 rt1: resulttype rt2: resulttype ⇒ rt1 → rt2"

    int vecCount = r.leb128();
    for (int i = 0; i < vecCount; i++) {
      r.verifyMarker(r.readUint8(), 0x60);
      var parameterType = r.readResultTypeVector();
      var resultType = r.readResultTypeVector();
      module.functionTypes.add(FunctionType(parameterType, resultType));
    }

    for (var element in module.functionTypes) {
      _log('  $element');
    }
  }

  void _parseFunctionSection(Reader r, Module module) {
    // "It decodes into a vector of type indices that represent the type fields
    // of the functions in the funcs component of a module."
    int vecCount = r.leb128();

    for (int i = 0; i < vecCount; i++) {
      int typeIndex = r.leb128();
      module.addDefinedFunction(DefinedFunction(module, typeIndex, i));
    }

    for (var func in module.definedFunctions) {
      _log('  $func');
    }
  }

  void _parseMemorySection(Reader r, Module module) {
    int count = r.leb128();
    if (count > 1) {
      throw StateError('Only 1 memory item supported (found $count)');
    }

    for (int i = 0; i < count; i++) {
      var limitKind = r.readUint8();
      switch (limitKind) {
        case 0x00:
          var min = r.leb128();
          _log('  min: $min pages');
          module.setMemoryInfo(min: min);
          break;
        case 0x01:
          var min = r.leb128();
          var max = r.leb128();
          _log('  min: $min pages');
          _log('  max: $max pages');
          module.setMemoryInfo(min: min, max: max);
          break;
        default:
          throw StateError('unsupported memory kind: ${hex(limitKind)}');
      }
    }
  }

  void _parseExportSection(Reader r, Module module) {
    // "It decodes into a vector of exports that represent the component of a
    // module."
    var exportCount = r.leb128();
    // var exportScope = NameScope();

    for (int i = 0; i < exportCount; i++) {
      var name = r.readName();

      var type = r.readUint8();
      switch (type) {
        case 0x00:
          // funcidx
          var functionIndex = r.leb128();
          _log("  export func '$name' (#$functionIndex)");
          // name = exportScope.uniqueAdd(name);
          module.exportFunction(name, functionIndex);
          break;
        // case 0x01:
        //   // tableidx
        //   var tableIndex = r.leb128();
        //   _log("  export table '$name' (#$tableIndex)");
        //   module.exportTable(name, tableIndex);
        //   break;
        case 0x02:
          // memidx
          var memoryIndex = r.leb128();
          _log('  export memory (#$memoryIndex)');
          module.exportMemory(name, memoryIndex);
          break;
        // case 0x03:
        //   // globalidx
        //   var globalIndex = r.leb128();
        //   _log('  export global (#$globalIndex)');
        //   module.globals.exportGlobal(name, globalIndex);
        //   break;
        default:
          throw 'export type not supported: ${type.toRadixString(16)}';
      }
    }
  }

  void _parseCodeSection(Reader r, Module module) {
    // "It decodes into a vector of code entries that are pairs of value type
    // vectors and expressions. They represent the locals and body field of the
    // functions in the funcs component of a module. The type fields of the
    // respective functions are encoded separately in the function section."

    int vecCount = r.leb128();
    _log('  numFunctions: $vecCount');

    for (int i = 0; i < vecCount; i++) {
      var function = module.definedFunctions[i];

      int funcLength = r.leb128();
      int startPos = r.pos;

      _log('  func $i [len=$funcLength]');

      var locals = <ValueType>[];
      var declsCount = r.leb128();
      for (int i = 0; i < declsCount; i++) {
        var count = r.leb128();
        var kind = ValueType.fromCode(r.readUint8());
        locals.addAll(List.filled(count, kind));
      }

      function.setLocals(locals);

      _log('    locals: $locals');

      // instructions* 0x0B
      int instructionsLength = funcLength - (r.pos - startPos);

      var instrData = r.readUint8List(instructionsLength).toList();
      var reader = Reader(Uint8List.fromList(instrData));
      List<Instr> instructions = [];
      var depth = 0;

      while (reader.bytesRemaining() > 0) {
        int opcode = reader.readUint8();
        int? opcode2;
        if (opcode == Instruction.overflowOpcodeFC) {
          opcode2 = reader.leb128_u();
        }
        Instr? i = Instruction.parse(opcode, reader, opcode2: opcode2);
        if (i != null) {
          if (opcode == Instruction_Block.blockOpcode) {
            depth++;
          } else if (opcode == Instruction_Loop.loopOpcode) {
            depth++;
          } else if (opcode == Instruction_If.ifOpcode) {
            depth++;
          } else if (opcode == Instruction_End.endOpcode) {
            depth--;
          }
          instructions.add(i);
        } else {
          _log('    unknown opcode: ${hex(opcode)}');
          var opcode2Desc = opcode2 == null ? '' : ' ${hex(opcode2)}';
          print('unknown opcode: ${hex(opcode)}$opcode2Desc');
          instructions.add(Instr(Instruction_Unreachable(), [
            opcode2 != null ? '${hex(opcode)} ${hex(opcode2)}' : hex(opcode),
          ]));
          while (depth > 0) {
            instructions.add(Instr(Instruction_End()));
            depth--;
          }
          break;
        }
      }

      function.setInstrs(instructions);
    }
  }

  void _log([String? message]) {
    if (verbose) print(message ?? '');
  }
}

class Module {
  final List<FunctionType> functionTypes = [];

  final List<DefinedFunction> definedFunctions = [];
  final List<ModuleFunction> allFunctions = [];
  final List<ExportedFunction> exportedFunctions = [];

  DebugInfo? debugInfo;

  int minMemory = 0;
  int? maxMemory;
  bool memoryImported = false;

  Module();

  void addDefinedFunction(DefinedFunction function) {
    definedFunctions.add(function);
    allFunctions.add(function);
  }

  void exportFunction(String name, int functionIndex) {
    var func = ExportedFunction(name, functionByIndex(functionIndex)!);
    exportedFunctions.add(func);
  }

  void exportMemory(String name, int memoryIndex) {
    // we make the memory field visible by default
  }

  void setMemoryInfo({
    required int min,
    int? max,
  }) {
    minMemory = min;
    maxMemory = max;
  }

  DefinedFunction? function(String name) {
    final result = exportedFunctions.firstWhereOrNull((fn) => fn.name == name);

    // if (result != null) {
    //   print(result.name);
    //   for (var instr in (result.func as DefinedFunction).instrs) {
    //     print('  $instr');
    //   }
    // }

    return result?.func as DefinedFunction?;
  }

  ModuleFunction? functionByIndex(int functionIndex) {
    return allFunctions[functionIndex];
  }
}

class Reader {
  late final ByteData data;
  int pos = 0;
  late final int length;

  Reader(Uint8List uint8ListData) {
    data = ByteData.sublistView(uint8ListData);
    length = uint8ListData.length;
  }

  int bytesRemaining() => length - pos;

  /// Throws an exception if the expected marker is not what's found.
  void verifyMarker(int actual, int expected) {
    if (actual != expected) {
      throw 'found ${hex(actual)} but expected ${hex(expected)}';
    }
  }

  int readByteHeader([Endian endian = Endian.little]) {
    int val = data.getUint32(pos, endian);
    pos += 4;
    return val;
  }

  int readUint8() {
    return data.getUint8(pos++);
  }

  int leb128() => leb128_u();

  int leb128_u() {
    const CONTINUATION_BIT = 0x80;

    int result = 0;
    int shift = 0;

    do {
      int byte = data.getUint8(pos++);

      var lowBits = byte & 0x7F;
      result |= lowBits << shift;

      if (byte & CONTINUATION_BIT == 0) {
        return result;
      }

      shift += 7;
    } while (true);
  }

  int leb128_s({int bits = 64}) {
    const CONTINUATION_BIT = 0x80;
    const SIGN_BIT = 1 << 6;

    int result = 0;
    int shift = 0;
    int byte;

    do {
      byte = data.getUint8(pos++);

      var lowBits = byte & 0x7F;
      result |= lowBits << shift;
      shift += 7;

      if (byte & CONTINUATION_BIT == 0) {
        break;
      }
    } while (true);

    if ((shift < bits) && ((SIGN_BIT & byte) == SIGN_BIT)) {
      // Sign extend the result.
      result |= ~0 << shift;
    }

    return result;
  }

  double readF32() {
    var result = data.getFloat32(pos, Endian.little);
    pos += 4;
    return result;
  }

  double readF64() {
    var result = data.getFloat64(pos, Endian.little);
    pos += 8;
    return result;
  }

  void skip(int len) {
    pos += len;
  }

  List<ValueType> readResultTypeVector() {
    List<ValueType> result = [];

    int vecCount = leb128();
    for (int i = 0; i < vecCount; i++) {
      result.add(ValueType.fromCode(readUint8()));
    }

    return result;
  }

  Uint8List readUint8List(int length) {
    var result = data.buffer.asUint8List(pos, length);
    pos += length;
    return result;
  }

  Uint8List readByteVector() {
    var len = leb128();
    return readUint8List(len);
  }

  String readName() => readUtf8();

  String readUtf8() {
    var length = leb128_u();
    var bytes = readUint8List(length);
    return utf8.decoder.convert(bytes);
  }

  List<Instr> readInstructionsEndTerminated() {
    var instructions = <Instr>[];

    var opcode = 0;
    while (opcode != Instruction_End.endOpcode) {
      opcode = readUint8();
      int? opcode2;
      if (opcode == Instruction.overflowOpcodeFC) {
        opcode2 = readUint8();
      }
      if (opcode != Instruction_End.endOpcode) {
        Instr? i = Instruction.parse(opcode, this, opcode2: opcode2);
        if (i != null) {
          instructions.add(i);
        } else {
          throw 'unknown opcode: ${hex(opcode)}';
        }
      }
    }

    return instructions;
  }

  List<int> readVectorIndexes() {
    var count = leb128_u();
    var indexs = <int>[];
    for (int i = 0; i < count; i++) {
      indexs.add(leb128_u());
    }
    return indexs;
  }

  List<List<Instr>> readVectorOfInstructions() {
    var count = leb128_u();
    var vector = <List<Instr>>[];
    for (int i = 0; i < count; i++) {
      vector.add(readInstructionsEndTerminated());
    }
    return vector;
  }
}

class FunctionType {
  final List<ValueType> parameterTypes;
  final List<ValueType> resultType;

  FunctionType(this.parameterTypes, this.resultType);

  String get resultTypeDisplayName {
    if (returnsVoid) {
      return 'void';
    }

    if (returnsTuple) {
      var types = resultType.map((t) => t.typeName).join(', ');
      return 'Tuple${resultType.length}<$types>';
    }

    return resultType.first.typeName;
  }

  bool get returnsVoid => resultType.isEmpty;

  bool get returnsTuple => resultType.length >= 2;

  @override
  String toString() {
    var params = parameterTypes.map((e) => e.toString()).join(', ');
    var result = resultType.map((e) => e.toString()).join(', ');
    return '$params => $result';
  }
}

enum SectionKind {
  custom(0),
  type(1),
  import(2),
  function(3),
  table(4),
  memory(5),
  global(6),
  export(7),
  start(8),
  element(9),
  code(10),
  data(11),
  data_count(12);

  const SectionKind(this.id);

  final int id;

  static Map<int, SectionKind>? _idMap;

  static SectionKind? from(int id) {
    _idMap ??= Map.fromIterable(SectionKind.values,
        key: (kind) => (kind as SectionKind).id);
    return _idMap![id];
  }
}

abstract class ModuleFunction {
  final Module module;
  final int functionTypeIndex;

  ModuleFunction(this.module, this.functionTypeIndex);

  String get name;

  FunctionType get functionType => module.functionTypes[functionTypeIndex];

  List<ValueType> get parameterTypes => functionType.parameterTypes;

  bool get returnsVoid => functionType.returnsVoid;

  bool get returnsTuple => functionType.returnsTuple;
}

class DefinedFunction extends ModuleFunction {
  final int generatedIndex;

  DebugInfo? debugInfo;

  List<ValueType> locals = [];
  List<Instr> instrs = [];
  List<ExecInst> execExecInsts = [];

  // late List<Variable> variables;

  final List<BlockType> nesting = [];
  // final List<Scope> scopes = [Scope()];

  DefinedFunction(super.module, super.typeIndex, this.generatedIndex);

  DefinedFunction.temp(Module module)
      : generatedIndex = 0,
        super(module, 0);

  @override
  String get name {
    var digits = module.definedFunctions.length.toString().length;
    var genIndex = generatedIndex.toString().padLeft(digits, '0');

    // if (module.useDebugNames) {
    //   return debugInfo?.name == null
    //       ? '_func$genIndex'
    //       : ensurePrivate(debugInfo!.name!);
    // } else {
    return '_func$genIndex';
    // }
  }

  @override
  String toString() => name;

  void setLocals(List<ValueType> locals) {
    this.locals = locals;
  }

  void setInstrs(List<Instr> instrs) {
    this.instrs = instrs;

    _buildExecInsts();
  }

  void _buildExecInsts() {
    for (var instr in instrs) {
      execExecInsts.add(instr.instruction.convert(instr));
    }
  }

  Object? invoke(List<int> args) {
    final frame = Frame(this, args);

    return frame.exec();
  }

  // void enterBlock(BlockType blockType, BlockFunctionType blockType2) {
  //   nesting.add(blockType);
  //   scopes.add(Scope(parent: scope, blockType: blockType2));
  // }

  // String get currentBlockLabel => labelNameFromIndex(0)!;

  // BlockType? exitBlock() {
  //   if (nesting.isEmpty) {
  //     return null;
  //   }

  //   scopes.removeLast();
  //   return nesting.removeLast();
  // }

  // Scope get scope => scopes.last;

  // String? labelNameFromIndex(int index) {
  //   if (index >= nesting.length) return null;

  //   var block = blockNestingFromIndex(index);
  //   var depth = nesting.length - 1 - index;
  //   return '${block.shortName}_label_$depth';
  // }
}

class DebugInfo {
  String? name;
  final Map<int, String> indexedNames = {};

  DebugInfo({this.name});
}

class ExportedFunction {
  final String name;
  final ModuleFunction func;

  ExportedFunction(this.name, this.func);

  FunctionType get functionType => func.functionType;
}

enum BlockType {
  $block('block'),
  $if('if'),
  $loop('loop'),
  $return('return');

  final String shortName;

  const BlockType(this.shortName);

  bool get returnType => this == BlockType.$return;

  // loop types use 'continue' to re-start the block
  bool get loopType => this == BlockType.$loop;

  bool get breakType => this == BlockType.$block || this == BlockType.$if;
}

// class Scope {
//   final Scope? parent;
//   final BlockFunctionType? blockType;

//   int _stackDepth = 0;

//   int nextTempId = 0;

//   /// Set to indicate that the remaining instructions in this block are not
//   /// reachable.
//   bool unreachable = false;

//   String? blockReturnName;

//   Scope({this.parent, this.blockType}) {
//     // TODO: improve the temp allocation logic
//     if (parent != null) {
//       nextTempId = parent!.nextTempId;
//     }
//   }

//   String get nextTempName => 't${nextTempId++}';

//   void updateStackDepth(int adjust, String desc) {
//     _stackDepth += adjust;

//     // // Stack depth may not go below 0 - num block args.
//     // if (_stackDepth < -blockParamCount && !_unreachable) {
//     //   print(' ** warning: calculated stack depth is $_stackDepth; $desc');
//     // }
//   }

//   int get stackDepth =>
//       parent == null ? _stackDepth : parent!.stackDepth + _stackDepth;

//   int get entryDepth => parent?.stackDepth ?? 0;

//   bool stackNeedsAdjust(Scope innerScope) {
//     var targetDepth = entryDepth - blockParamCount + blockReturnCount;
//     return targetDepth != innerScope.stackDepth;
//   }

//   int get blockParamCount => blockType?.paramItems ?? 0;

//   int get blockReturnCount => blockType?.returnItems ?? 0;
// }
