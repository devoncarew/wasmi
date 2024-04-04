import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/parse.dart';

void main() {
  group('example/fib.wasm', () {
    late ModuleDefinition module;

    setUpAll(() {
      module = ModuleDefinition.parse(File('example/fib.wasm'));
    });

    test('SectionKind.custom', () {
      final fn = module.definedFunctions.first;
      expect(fn.debugInfo, isNotNull);
      expect(fn.debugInfo!.indexedNames, isNotEmpty);
    });

    test('SectionKind.type', () {
      expect(module.functionTypes, hasLength(1));
      final type = module.functionTypes.first;
      expect(type.displayText, 'i32 => i32');
    });

    test('SectionKind.function', () {
      expect(module.definedFunctions, hasLength(1));
      final fn = module.definedFunctions.first;
      final type = module.functionTypes[fn.typeIndex];
      expect(type.displayText, 'i32 => i32');
    });

    test('SectionKind.memory', () {
      expect(module.memoryInfo, isNotNull);
      expect(module.memoryInfo!.min, 0);
      expect(module.memoryInfo!.max, null);
    });

    test('SectionKind.export', () {
      expect(module.exportedFunctions, isNotEmpty);

      final export = module.exportedFunctions.first;
      expect(export.name, 'fib');

      final fn = export.func;
      final type = fn.functionType;
      expect(type?.displayText, 'i32 => i32');
    });

    test('SectionKind.code', () {
      expect(module.exportedFunctions, isNotEmpty);

      final fn = module.exportedFunctions.first.func as DefinedFunction;
      expect(fn.instructions, isNotEmpty);
    });
  });

  group('samples', () {
    test('branch1.wasm', () {
      final module = ModuleDefinition.parse(File('samples/branch1.wasm'));

      expect(module.exportedFunctions, isNotEmpty);
      expect(module.globals.globals, isNotEmpty);
    });

    test('branch2.wasm', () {
      final module = ModuleDefinition.parse(File('samples/branch2.wasm'));

      expect(module.globals.globals, isNotEmpty);

      expect(module.importModules, isNotEmpty);
      final import = module.importModules.first;
      expect(import.functions, isNotEmpty);

      expect(module.startFunctionIndex, isNotNull);
    });

    test('eratosthenes.wasm', () {
      final module = ModuleDefinition.parse(File('samples/eratosthenes.wasm'));

      expect(module.importModules, isNotEmpty);
      expect(module.globals.globals, isNotEmpty);
      expect(module.memoryInfo, isNotNull);
      expect(module.memoryInfo!.min, 1);
      expect(module.dataSegments.segments, isNotEmpty);
      expect(module.exportedFunctions, isNotEmpty);
      expect(module.startFunctionIndex, isNotNull);
    });

    test('fac.wasm', () {
      final module = ModuleDefinition.parse(File('samples/fac.wasm'));

      expect(module.exportedFunctions, isNotEmpty);
      final export = module.exportedFunctions.first;
      expect(export.name, 'fac');

      final type = export.func.functionType;
      expect(type!.displayText, 'i32 => i32');
    });

    test('gcd.wasm', () {
      final module = ModuleDefinition.parse(File('samples/gcd.wasm'));

      expect(module.exportedFunctions, isNotEmpty);
      final export = module.exportedFunctions.first;
      expect(export.name, 'gcd');

      final type = export.func.functionType;
      expect(type!.displayText, 'i32, i32 => i32');
    });

    test('hello.wasm', () {
      final module = ModuleDefinition.parse(File('samples/hello.wasm'));

      expect(module.memoryInfo, isNotNull);
      expect(module.memoryInfo!.min, 10);
      expect(module.globals, isNotEmpty);
      expect(module.exportedFunctions, isNotEmpty);
    });

    test('icu_capi.wasm', () {
      final module = ModuleDefinition.parse(File('samples/icu_capi.wasm'));

      expect(module.importModules, isNotEmpty);
      expect(module.exportedFunctions, isNotEmpty);
    });

    test('mandelbrot.wasm', () {
      final module = ModuleDefinition.parse(File('samples/mandelbrot.wasm'));

      expect(module.importModules, isNotEmpty);
      expect(module.globals.globals, isNotEmpty);
      expect(module.tables, isNotEmpty);
      expect(module.elementSegments.segments, isNotEmpty);
      expect(module.exportedFunctions, isNotEmpty);
    });

    test('print.wasm', () {
      final module = ModuleDefinition.parse(File('samples/print.wasm'));

      expect(module.importModules, isNotEmpty);
      expect(module.dataSegments.segments, isNotEmpty);
      expect(module.dataSegments.segments, hasLength(2));
      expect(module.startFunctionIndex, isNotNull);
    });

    test('rot13.wasm', () {
      final module = ModuleDefinition.parse(File('samples/rot13.wasm'));

      // memory is imported
      expect(module.memoryInfo?.imported, isTrue);

      // defines imports
      expect(module.importModules, isNotEmpty);
      final import = module.importModules.first;

      // imports fill_buf, buf_done
      expect(import.name, 'host');
      expect(import.functions, hasLength(2));
      expect(import.functions.map((fn) => fn.name),
          unorderedEquals(['fill_buf', 'buf_done']));

      // export rot13
      expect(module.exportedFunctions, isNotEmpty);
      final export = module.exportedFunctions.first;
      expect(export.name, 'rot13');
    });

    test('sha3.wasm', () {
      final module = ModuleDefinition.parse(File('samples/sha3.wasm'));

      expect(module.exportedFunctions, isNotEmpty);
      expect(module.globals.globals, isNotEmpty);
      // (memory (;0;) 10 65536)
      expect(module.memoryInfo, isNotNull);
      expect(module.memoryInfo!.min, 10);
      expect(module.memoryInfo!.max, 65536);
    });
  });
}
