// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:collection/collection.dart';

import 'instructions.dart';
import 'opcodes.dart';
import 'src/utils.dart';
import 'types.dart';

const _verbose = false;

class ModuleDefinition {
  static ModuleDefinition parse(File file) {
    Uint8List fileData = file.readAsBytesSync();
    Reader r = Reader(fileData);

    // 0x00 0x61 0x73 0x6D 0x01 0x00 0x00 0x00
    int magic = r.readByteHeader(Endian.big);
    r.verifyMarker(magic, 0x0061736D);
    int version = r.readByteHeader();

    final module = ModuleDefinition(magic: magic, version: version);

    _log('magic: ${hex(magic, 8)}');
    _log('version: $version'); // expected: 1
    _log('');

    while (r.bytesRemaining() > 0) {
      var kind = r.readUint8();
      var sectionKind = SectionKind.from(kind);
      var length = r.leb128();
      _log('[section ${sectionKind?.name}] (bytes: $length)');

      if (sectionKind == SectionKind.custom) {
        module._parseCustomSection(r, length);
      } else if (sectionKind == SectionKind.type) {
        module._parseTypeSection(r);
      } else if (sectionKind == SectionKind.import) {
        module._parseImportSection(r);
      } else if (sectionKind == SectionKind.function) {
        module._parseFunctionSection(r);
      } else if (sectionKind == SectionKind.table) {
        module._parseTableSection(r);
      } else if (sectionKind == SectionKind.memory) {
        module._parseMemorySection(r);
      } else if (sectionKind == SectionKind.global) {
        module._parseGlobalSection(r);
      } else if (sectionKind == SectionKind.export) {
        module._parseExportSection(r);
      } else if (sectionKind == SectionKind.start) {
        module._parseStartSection(r);
      } else if (sectionKind == SectionKind.element) {
        module._parseElementSection(r);
      } else if (sectionKind == SectionKind.code) {
        module._parseCodeSection(r, length);
      } else if (sectionKind == SectionKind.data) {
        module._parseDataSection(r);
      } else if (sectionKind == SectionKind.data_count) {
        module._parseDataCountSection(r, length);
      } else {
        throw FormatException('unhandled section ${sectionKind?.name}');
      }
    }

    return module;
  }

  final int magic;
  final int version;

  final List<FunctionType> functionTypes = [];

  final List<ModuleFunction> functions = [];
  final List<DefinedFunction> definedFunctions = [];

  final List<Table> tables = [];

  final List<MemoryInfo> memories = [];

  final List<Global> globals = [];

  final List<ImportModuleDefinition> importModules = [];
  final Exports exports = Exports();

  final DataSegments dataSegments = DataSegments();
  final ElementSegments elementSegments = ElementSegments();

  DebugInfo? debugInfo;
  int? startFunctionIndex;

  ModuleDefinition({
    this.magic = 0x0061736D,
    this.version = 1,
  });

  void _parseCustomSection(Reader r, int length) {
    var data = r.readUint8List(length).toList();
    var customSectionReader = Reader(Uint8List.fromList(data));

    var name = customSectionReader.readUtf8();
    if (name == 'name') {
      _parseNameCustomSection(customSectionReader);
    } else {
      _log('  skipping custom section [$name]');
    }
  }

  void _parseNameCustomSection(Reader r) {
    // https://webassembly.github.io/spec/core/appendix/custom.html#name-section

    while (r.bytesRemaining() > 0) {
      var subsectionId = r.readUint8();
      var size = r.leb128_u();

      // 4: type names

      switch (subsectionId) {
        case 0:
          // module name
          var name = r.readUtf8();
          debugInfo = DebugInfo(name: name);
          _log('[$name]');
          break;
        case 1:
          // function names
          var functionCount = r.leb128_u();
          for (int i = 0; i < functionCount; i++) {
            var functionIndex = r.leb128_u();
            var name = r.readUtf8();
            _log('  [$name]');
            var func = functions[functionIndex];
            if (func is DefinedFunction) {
              (func.debugInfo ??= DebugInfo()).name = name;
            }
          }
          break;
        case 2:
          // local names
          var functionCount = r.leb128_u();
          for (int i = 0; i < functionCount; i++) {
            var functionIndex = r.leb128_u();
            var func = functions[functionIndex];
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
        case 7:
          // global names
          var functions = r.leb128_u();
          for (int i = 0; i < functions; i++) {
            var index = r.leb128_u();
            // TODO: We could also run this name through patchUpName()
            var name = r.readUtf8();
            _log('  [$name]');
            var localMap = (debugInfo ??= DebugInfo()).indexedNames;
            localMap[index] = name;
          }
          break;
        case 9:
          // data segment names
          var items = r.leb128_u();
          for (int i = 0; i < items; i++) {
            var index = r.leb128_u();
            var name = r.readUtf8();
            var localMap =
                (dataSegments.debugInfo ??= DebugInfo()).indexedNames;
            localMap[index] = name;
          }
          break;
        default:
          _log('  unknown name subsection kind: ${hex(subsectionId)}');
          r.skip(size);
          break;
      }
    }
  }

  void _parseTypeSection(Reader r) {
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
      functionTypes.add(FunctionType(parameterType, resultType));
    }

    for (var element in functionTypes) {
      _log('  $element');
    }
  }

  void _parseImportSection(Reader r) {
    var numImports = r.leb128();
    for (int i = 0; i < numImports; i++) {
      var moduleName = r.readUtf8();
      var itemName = r.readUtf8();
      var importType = r.readUint8();

      switch (importType) {
        case 0x00:
          // function
          var importModule = _getCreateImportModule(moduleName);
          var functionTypeIndex = r.leb128_u();
          importModule.addImportedFunction(
            ImportedFunctionDefinition(
                this, functionTypeIndex, importModule, itemName),
          );
          break;
        case 0x01:
          // table
          var importModule = _getCreateImportModule(moduleName);
          // "Table get fooTable;"
          var refType = r.readUint8();
          var tableType = TableType.from(refType);
          if (tableType == null) {
            throw FormatException('unknown table type: ${hex(refType)}');
          }

          var limitKind = r.readUint8();
          switch (limitKind) {
            case 0x00:
              var min = r.leb128();
              _log('  table ${tableType.name}: [$min) elements');
              importModule.addImportedTable(itemName, tableType, min);
              break;
            case 0x01:
              var min = r.leb128();
              var max = r.leb128();
              _log('  table ${tableType.name}: [$min $max] elements');
              importModule.addImportedTable(itemName, tableType, min, max);
              break;
            default:
              throw StateError('unsupported table limit: ${hex(limitKind)}');
          }
          break;
        case 0x02:
          // mem
          var importModule = _getCreateImportModule(moduleName);

          var limitKind = r.readUint8();
          switch (limitKind) {
            case 0x00:
              var min = r.leb128();
              if (min > 65536) {
                throw FormatException(
                    'memory size must be at most 65536 pages (4GiB)');
              }
              _log('  min: $min pages');

              importModule.addImportedMemory(
                  ImportedMemoryDefinition(importModule, itemName, min: min));
              break;
            case 0x01:
              var min = r.leb128();
              if (min > 65536) {
                throw FormatException(
                    'memory size must be at most 65536 pages (4GiB)');
              }

              var max = r.leb128();
              if (max > 65536) {
                throw FormatException(
                    'memory size must be at most 65536 pages (4GiB)');
              }
              if (min > max) {
                throw FormatException(
                    'size minimum must not be greater than maximum');
              }

              _log('  min: $min pages');
              _log('  max: $max pages');
              importModule.addImportedMemory(ImportedMemoryDefinition(
                  importModule, itemName,
                  min: min, max: max));
              break;
            default:
              throw StateError('unsupported memory kind: ${hex(limitKind)}');
          }

          break;
        case 0x03:
          // global
          var type = r.readUint8();
          var mutability = r.readUint8();
          var importModule = _getCreateImportModule(moduleName);
          importModule.addImportedGlobal(itemName,
              type: ValueType.fromCode(type), mutable: mutability == 0x01);
          break;
        default:
          throw FormatException('unknown import type: ${hex(importType)}');
      }
    }
  }

  void _parseFunctionSection(Reader r) {
    // "It decodes into a vector of type indices that represent the type fields
    // of the functions in the funcs component of a module."
    int vecCount = r.leb128();

    for (int i = 0; i < vecCount; i++) {
      int typeIndex = r.leb128();
      _addDefinedFunction(DefinedFunction(this, typeIndex));
    }

    for (var func in definedFunctions) {
      _log('  $func');
    }
  }

  void _parseTableSection(Reader r) {
    var tableCount = r.leb128();
    for (int i = 0; i < tableCount; i++) {
      var refType = r.readUint8();
      var tableType = TableType.from(refType);
      if (tableType == null) {
        throw FormatException('unknown table type: ${hex(refType)}');
      }
      var limitKind = r.readUint8();
      switch (limitKind) {
        case 0x00:
          var min = r.leb128();
          _log('  table ${tableType.name}: [$min) elements');
          _addDefinedTable(tableType, min);
          break;
        case 0x01:
          var min = r.leb128();
          var max = r.leb128();
          _log('  table ${tableType.name}: [$min $max] elements');
          _addDefinedTable(tableType, min, max);
          break;
        default:
          throw StateError('unsupported table limit: ${hex(limitKind)}');
      }
    }
  }

  void _parseMemorySection(Reader r) {
    int count = r.leb128();
    // // TODO: do we need to check this?
    // if (count > 1) {
    //   throw FormatException('multiple memories');
    // }

    for (int i = 0; i < count; i++) {
      var limitKind = r.readUint8();
      switch (limitKind) {
        case 0x00:
          // // TODO: do we need to check this?
          // if (memoryInfo != null) {
          //   throw FormatException('multiple memories');
          // }

          var min = r.leb128();
          if (min > 65536) {
            throw FormatException(
                'memory size must be at most 65536 pages (4GiB)');
          }
          memories.add(DefinedMemoryInfo(min: min));
          _log('  min: $min pages');
          break;
        case 0x01:
          // // TODO: do we need to check this?
          // if (memoryInfo != null) {
          //   throw FormatException('multiple memories');
          // }

          var min = r.leb128();
          if (min > 65536) {
            throw FormatException(
                'memory size must be at most 65536 pages (4GiB)');
          }
          var max = r.leb128();
          if (max > 65536) {
            throw FormatException(
                'memory size must be at most 65536 pages (4GiB)');
          }
          if (min > max) {
            throw FormatException(
                'size minimum must not be greater than maximum');
          }
          memories.add(DefinedMemoryInfo(min: min, max: max));
          _log('  min: $min pages');
          _log('  max: $max pages');
          break;
        default:
          throw StateError('unsupported memory kind: ${hex(limitKind)}');
      }
    }
  }

  void _parseGlobalSection(Reader r) {
    int globalCount = r.leb128();

    for (int i = 0; i < globalCount; i++) {
      var type = r.readUint8();
      var mutability = r.readUint8();
      var instructions = r.readInstructionsEndTerminated();

      var global = DefinedGlobal(
        module: this,
        type: ValueType.fromCode(type),
        mutable: mutability == 0x01,
        initExpression: instructions,
      );
      globals.add(global);

      _log('  global: ${global.type} (mutable: ${global.mutable})');
    }
  }

  void _parseExportSection(Reader r) {
    // "It decodes into a vector of exports that represent the component of a
    // module."
    var exportCount = r.leb128();

    for (int i = 0; i < exportCount; i++) {
      var name = r.readName();

      var type = r.readUint8();

      switch (type) {
        case 0x00:
          // funcidx
          var functionIndex = r.leb128();
          _log("  export func '$name' (#$functionIndex)");
          exports.functions[name] = functionIndex;
          break;
        case 0x01:
          // tableidx
          var tableIndex = r.leb128();
          _log("  export table '$name' (#$tableIndex)");
          exports.tables[name] = tableIndex;
          break;
        case 0x02:
          // memidx
          var memoryIndex = r.leb128();
          _log('  export memory (#$memoryIndex)');
          exports.memories[name] = memoryIndex;
          break;
        case 0x03:
          // globalidx
          var globalIndex = r.leb128();
          _log('  export global (#$globalIndex)');
          exports.globals[name] = globalIndex;
          break;
        default:
          throw FormatException(
              'export type not supported: ${type.toRadixString(16)}');
      }
    }
  }

  void _parseStartSection(Reader r) {
    int funcIndex = r.leb128();
    startFunctionIndex = funcIndex;
  }

  void _parseElementSection(Reader r) {
    var count = r.leb128();
    for (int i = 0; i < count; i++) {
      var sectionType = r.leb128();
      late SegmentKind segmentKind;
      ValueType? elementKind;
      int tableIndex = 0;
      List<Instruction>? offsetInstrs;
      List<int>? functionIndexs;
      List<List<Instruction>>? functionInstrs;

      ValueType? readType() {
        var elementKind = r.leb128_u();
        if (elementKind == 0) return null;

        var valueType = ValueType.fromCode(elementKind);
        if (!valueType.refType) {
          throw FormatException(
              'elementKind type not yet supported (${hex(elementKind)})');
        }

        return valueType;
      }

      // https://stackoverflow.com/questions/74218077/how-does-the-element-section-of-wasm-module-in-binary-format-looks

      switch (sectionType) {
        case 0x00:
          // an active segment, implicit table index of 0, a vector of funcrefs
          elementKind = ValueType.funcref;
          segmentKind = SegmentKind.active;
          offsetInstrs = r.readInstructionsEndTerminated();
          functionIndexs = r.readVectorIndexes();
          break;
        case 0x01:
          // a passive segment, the elemkind, followed by a vector of the items
          elementKind = readType();
          segmentKind = SegmentKind.passive;
          functionIndexs = r.readVectorIndexes();
          break;
        case 0x02:
          // an active segment
          segmentKind = SegmentKind.active;
          tableIndex = r.leb128_u();
          offsetInstrs = r.readInstructionsEndTerminated();
          elementKind = readType();
          functionIndexs = r.readVectorIndexes();
          break;
        case 0x03:
          // a declarative segment
          segmentKind = SegmentKind.declaritive;
          elementKind = readType();
          functionIndexs = r.readVectorIndexes();
          break;
        case 0x04:
          // an active segment, table index of 0, vector values are expressions
          elementKind = ValueType.funcref;
          segmentKind = SegmentKind.active;
          offsetInstrs = r.readInstructionsEndTerminated();
          functionInstrs = r.readVectorOfInstructions();
          break;
        case 0x05:
          elementKind = readType();
          segmentKind = SegmentKind.passive;
          functionInstrs = r.readVectorOfInstructions();
          break;
        case 0x06:
          segmentKind = SegmentKind.active;
          tableIndex = r.leb128_u();
          offsetInstrs = r.readInstructionsEndTerminated();
          elementKind = readType();
          functionInstrs = r.readVectorOfInstructions();
          break;
        case 0x07:
          segmentKind = SegmentKind.declaritive;
          elementKind = readType();
          functionInstrs = r.readVectorOfInstructions();
          break;
        default:
          throw FormatException(
              'unhandled element section type: ${hex(sectionType)}');
      }

      elementSegments.addElementSegment(ElementSegment(
        segmentKind: segmentKind,
        tableIndex: tableIndex,
        elementKind: elementKind,
        offsetExpression: offsetInstrs,
        functionIndexs: functionIndexs,
        functionIndexExpressions: functionInstrs,
      ));
    }
  }

  void _parseCodeSection(Reader r, int size) {
    // "It decodes into a vector of code entries that are pairs of value type
    // vectors and expressions. They represent the locals and body field of the
    // functions in the funcs component of a module. The type fields of the
    // respective functions are encoded separately in the function section."

    int vecCount = r.leb128();
    _log('  numFunctions: $vecCount');

    for (int i = 0; i < vecCount; i++) {
      var function = definedFunctions[i];

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
      List<Instruction> instructions = [];

      while (reader.bytesRemaining() > 0) {
        int opcode = reader.readUint8();
        int? opcode2;
        if (opcode == Opcode.overflow.index) {
          opcode2 = reader.leb128_u();
        }
        Instruction? instr = Instruction.parse(reader, opcode, code2: opcode2);
        if (instr != null) {
          instructions.add(instr);
        } else {
          _log('    unknown opcode: ${hex(opcode)}');
          var opcode2Desc = opcode2 == null ? '' : ' ${hex(opcode2)}';
          print('unknown opcode: ${hex(opcode)}$opcode2Desc');
          instructions.add(Instruction(Opcode.unreachable, [
            opcode2 != null ? '${hex(opcode)} ${hex(opcode2)}' : hex(opcode),
          ]));
        }
      }

      function.setCode(instructions);
    }
  }

  void _parseDataSection(Reader r) {
    var dataCount = r.leb128();
    for (int i = 0; i < dataCount; i++) {
      var type = r.leb128();
      switch (type) {
        case 0x00:
          var instructions = r.readInstructionsEndTerminated();
          var bytes = r.readByteVector();
          dataSegments.add(DataSegment(this,
              passive: false, offsetExpression: instructions, bytes: bytes));
          break;
        case 0x01:
          var bytes = r.readByteVector();
          dataSegments.add(DataSegment(this, passive: true, bytes: bytes));
          break;
        case 0x02:
          var memIndex = r.leb128();
          if (memIndex != 0) {
            throw FormatException(
                'Only data segments with memory indexes of 0 are supported; '
                'found $memIndex');
          }
          var instructions = r.readInstructionsEndTerminated();
          var bytes = r.readByteVector();
          dataSegments.add(DataSegment(
            this,
            passive: false,
            offsetExpression: instructions,
            bytes: bytes,
          ));
          break;
        default:
          throw FormatException('unsupported data type ${hex(type)}');
      }
    }
  }

  void _parseDataCountSection(Reader r, int length) {
    if (length > 0) {
      var count = r.leb128();
      _log('  data count: $count');
    }
  }

  void _addDefinedFunction(DefinedFunction function) {
    functions.add(function);
    definedFunctions.add(function);
  }

  void _addDefinedTable(TableType type, int minSize, [int? maxSize]) {
    tables.add(DefinedTable(type, minSize, maxSize));
  }

  ImportModuleDefinition _getCreateImportModule(String name) {
    return importModules.firstWhere((import) => import.name == name,
        orElse: () {
      var module = ImportModuleDefinition(name, this);
      importModules.add(module);
      return module;
    });
  }

  static void _log([String? message]) {
    if (_verbose) print(message ?? '');
  }
}

class DebugInfo {
  String? name;

  final Map<int, String> indexedNames = {};

  DebugInfo({this.name});
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
      throw FormatException(
          'found ${hex(actual)} but expected ${hex(expected)}');
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

  int u32() => leb128_u();

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

  int i32() => leb128_s(bits: 64);

  int i64() => leb128_s(bits: 64);

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

  double f32() => readF32();

  double readF32() {
    var result = data.getFloat32(pos, Endian.little);
    pos += 4;
    return result;
  }

  double f64() => readF64();

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

  List<int> readVectorIndexes() {
    var count = leb128_u();
    var indexs = <int>[];
    for (int i = 0; i < count; i++) {
      indexs.add(leb128_u());
    }
    return indexs;
  }

  List<Instruction> readInstructionsEndTerminated() {
    var instructions = <Instruction>[];

    while (true) {
      final opcode = readUint8();
      final opcode2 = opcode == Opcode.overflow.index ? readUint8() : null;

      if (opcode == Opcode.end.index) {
        break;
      }

      final instruction = Instruction.parse(this, opcode, code2: opcode2);
      if (instruction != null) {
        instructions.add(instruction);
      } else {
        throw FormatException('unknown opcode: ${hex(opcode)}');
      }
    }

    return instructions;
  }

  List<List<Instruction>> readVectorOfInstructions() {
    final count = leb128_u();
    final vector = <List<Instruction>>[];
    for (int i = 0; i < count; i++) {
      vector.add(readInstructionsEndTerminated());
    }
    return vector;
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
  final ModuleDefinition module;
  final int typeIndex;

  ModuleFunction(this.module, this.typeIndex);

  FunctionType? get functionType => module.functionTypes[typeIndex];
}

class DefinedFunction extends ModuleFunction {
  DebugInfo? debugInfo;

  List<ValueType> locals = [];
  List<Instruction> instructions = [];

  DefinedFunction(super.module, super.typeIndex);

  void setLocals(List<ValueType> locals) {
    this.locals = locals;
  }

  void setCode(List<Instruction> instructions) {
    this.instructions = instructions;
  }
}

abstract class MemoryInfo {
  /// min pages
  final int min;

  /// max pages
  final int? max;

  MemoryInfo({required this.min, this.max});
}

class DefinedMemoryInfo extends MemoryInfo {
  DefinedMemoryInfo({required super.min, super.max});
}

class ImportedMemoryDefinition extends MemoryInfo {
  final ImportModuleDefinition importModule;
  final String name;

  ImportedMemoryDefinition(this.importModule, this.name,
      {required super.min, super.max});
}

class ImportModuleDefinition {
  final String name;
  final ModuleDefinition wasmModule;

  final List<ImportedFunctionDefinition> functions = [];
  final List<ImportedTableDefinition> tables = [];
  final List<ImportedMemoryDefinition> memories = [];
  final List<ImportedGlobalDefinition> globals = [];

  ImportModuleDefinition(this.name, this.wasmModule);

  void addImportedFunction(ImportedFunctionDefinition function) {
    functions.add(function);

    wasmModule.functions.add(function);
  }

  void addImportedTable(String name, TableType tableType, int min, [int? max]) {
    var table = ImportedTableDefinition(this, name, tableType, min, max);
    tables.add(table);

    wasmModule.tables.add(table);
  }

  void addImportedMemory(ImportedMemoryDefinition memory) {
    memories.add(memory);

    wasmModule.memories.add(memory);
  }

  void addImportedGlobal(
    String name, {
    required ValueType type,
    required bool mutable,
  }) {
    var global = ImportedGlobalDefinition(type, mutable, this, name);
    wasmModule.globals.add(global);
    globals.add(global);
  }
}

class ImportedFunctionDefinition extends ModuleFunction {
  final ImportModuleDefinition importModule;
  final String name;

  ImportedFunctionDefinition(
      super.module, super.functionTypeIndex, this.importModule, this.name);
}

class Exports {
  final Map<String, int> functions = {};
  final Map<String, int> tables = {};
  final Map<String, int> memories = {};
  final Map<String, int> globals = {};
}

abstract class Global {
  final ValueType type;
  final bool mutable;

  Global(this.type, this.mutable);
}

class DefinedGlobal implements Global {
  final ModuleDefinition module;
  @override
  final ValueType type;
  @override
  final bool mutable;
  final List<Instruction> initExpression;

  DefinedGlobal({
    required this.module,
    required this.type,
    required this.mutable,
    required this.initExpression,
  });
}

class ImportedGlobalDefinition extends Global {
  final ImportModuleDefinition importModule;
  final String name;

  ImportedGlobalDefinition(
      super.type, super.mutable, this.importModule, this.name);
}

abstract class Table {
  final TableType type;
  final int minSize;
  final int? maxSize;

  Table(this.type, this.minSize, [this.maxSize]);
}

class DefinedTable extends Table {
  DefinedTable(super.type, super.minSize, [super.maxSize]);
}

class ImportedTableDefinition extends Table {
  final ImportModuleDefinition parent;
  final String name;

  ImportedTableDefinition(
    this.parent,
    this.name,
    super.type,
    super.minSize, [
    super.maxSize,
  ]);
}

class DataSegments {
  final List<DataSegment> segments = [];

  DebugInfo? debugInfo;

  DataSegments();

  bool get isNotEmpty => segments.isNotEmpty;

  void add(DataSegment dataSegment) {
    segments.add(dataSegment);
  }

  DataSegment? getNamed(String name) {
    return segments.firstWhereOrNull((segment) => segment.name == name);
  }
}

class DataSegment {
  final ModuleDefinition module;

  final bool passive;
  final Uint8List bytes;
  final List<Instruction>? offsetExpression;

  String? name;

  DataSegment(
    this.module, {
    required this.passive,
    required this.bytes,
    this.offsetExpression,
  });
}

class ElementSegments {
  final List<ElementSegment> segments = [];

  bool get isNotEmpty => segments.isNotEmpty;

  void addElementSegment(ElementSegment segment) {
    segments.add(segment);
  }
}

enum SegmentKind {
  passive,
  active,
  declaritive;
}

class ElementSegment {
  final SegmentKind segmentKind;
  final int tableIndex;
  final ValueType? elementKind;
  final List<Instruction>? offsetExpression;
  final List<int>? functionIndexs;
  final List<List<Instruction>>? functionIndexExpressions;

  ElementSegment({
    required this.segmentKind,
    required this.tableIndex,
    this.elementKind,
    this.offsetExpression,
    this.functionIndexs,
    this.functionIndexExpressions,
  });

  bool get passive => segmentKind == SegmentKind.passive;
}

extension MapExtension on Map<String, int> {
  Map<int, String> get reversed {
    final result = <int, String>{};
    for (var entry in entries) {
      result[entry.value] = entry.key;
    }
    return result;
  }
}
