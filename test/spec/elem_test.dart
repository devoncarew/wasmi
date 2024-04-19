// Generated from spec/test/core/elem.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('elem.0.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.0.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.1.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.1.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.2.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.2.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.3.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.3.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.4.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.4.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.5.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.5.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.6.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.6.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.7.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.7.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.8.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.8.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('call_7_0', () => m.$('call-7', []), 0x41);
    returns('call_9_0', () => m.$('call-9', []), 0x42);
  });

  group('elem.9.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.9.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('call_7_0', () => m.$('call-7', []), 0x41);
    returns('call_9_0', () => m.$('call-9', []), 0x42);
  });

  // assertInvalid('invalid elem.10.wasm', 'elem/elem.10.wasm', 'unknown global');
  // assertInvalid('invalid elem.11.wasm', 'elem/elem.11.wasm', 'unknown global');

  group('elem.12.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.12.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.13.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.13.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.14.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.14.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.15.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.15.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.16.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.16.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.17.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.17.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.18.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.18.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.19.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.19.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.20.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.20.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  group('elem.21.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.21.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });
  });

  // assertUninstantiable('uninstantiable elem.22.wasm');
  // assertUninstantiable('uninstantiable elem.23.wasm');
  // assertUninstantiable('uninstantiable elem.24.wasm');
  // assertUninstantiable('uninstantiable elem.25.wasm');
  // assertUninstantiable('uninstantiable elem.26.wasm');
  // assertUninstantiable('uninstantiable elem.27.wasm');
  // assertUninstantiable('uninstantiable elem.28.wasm');
  // assertUninstantiable('uninstantiable elem.29.wasm');
  // assertUninstantiable('uninstantiable elem.30.wasm');
  // assertUninstantiable('uninstantiable elem.31.wasm');
  // assertUninstantiable('uninstantiable elem.32.wasm');
  // assertUninstantiable('uninstantiable elem.33.wasm');

  group('elem.34.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.34.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('init_0', () => m.$('init', []), 'out of bounds table access');
  });

  group('elem.35.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.35.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    traps('init_0', () => m.$('init', []), 'out of bounds table access');
  });

  // assertInvalid('invalid elem.36.wasm', 'elem/elem.36.wasm', 'unknown table');
  // assertInvalid('invalid elem.37.wasm', 'elem/elem.37.wasm', 'type mismatch');
  // assertInvalid('invalid elem.38.wasm', 'elem/elem.38.wasm', 'type mismatch');
  // assertInvalid('invalid elem.39.wasm', 'elem/elem.39.wasm', 'type mismatch');
  // assertInvalid('invalid elem.40.wasm', 'elem/elem.40.wasm', 'type mismatch');
  // assertInvalid('invalid elem.41.wasm', 'elem/elem.41.wasm', 'type mismatch');
  // assertInvalid('invalid elem.42.wasm', 'elem/elem.42.wasm', 'type mismatch');
  // assertInvalid('invalid elem.43.wasm', 'elem/elem.43.wasm', 'constant expression required');
  // assertInvalid('invalid elem.44.wasm', 'elem/elem.44.wasm', 'constant expression required');
  // assertInvalid('invalid elem.45.wasm', 'elem/elem.45.wasm', 'constant expression required');
  // assertInvalid('invalid elem.46.wasm', 'elem/elem.46.wasm', 'constant expression required');
  // assertInvalid('invalid elem.47.wasm', 'elem/elem.47.wasm', 'constant expression required');
  // assertInvalid('invalid elem.48.wasm', 'elem/elem.48.wasm', 'unknown global 0');
  // assertInvalid('invalid elem.49.wasm', 'elem/elem.49.wasm', 'unknown global 1');
  // assertInvalid('invalid elem.50.wasm', 'elem/elem.50.wasm', 'constant expression required');
  // assertInvalid('invalid elem.51.wasm', 'elem/elem.51.wasm', 'type mismatch');
  // assertInvalid('invalid elem.52.wasm', 'elem/elem.52.wasm', 'type mismatch');
  // assertInvalid('invalid elem.53.wasm', 'elem/elem.53.wasm', 'type mismatch');
  // assertInvalid('invalid elem.54.wasm', 'elem/elem.54.wasm', 'type mismatch');
  // assertInvalid('invalid elem.55.wasm', 'elem/elem.55.wasm', 'constant expression required');

  group('elem.56.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.56.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('call_overwritten_0', () => m.$('call-overwritten', []), 0x42);
  });

  group('elem.57.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.57.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('call_overwritten_element_0',
        () => m.$('call-overwritten-element', []), 0x42);
  });

  group('elem.58.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.58.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      named[r'$module1'] = m;
    });

    action(
        'register-module1', () => registered['module1'] = importModuleFrom(m));
    traps('call_7_0', () => m.$('call-7', []), 'uninitialized element');
    returns('call_8_0', () => named[r'$module1']!.$('call-8', []), 0x41);
    returns('call_9_0', () => named[r'$module1']!.$('call-9', []), 0x42);
  });

  group('elem.59.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.59.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      named[r'$module2'] = m;
    });

    returns('call_7_0', () => named[r'$module1']!.$('call-7', []), 0x43);
    returns('call_8_0', () => named[r'$module1']!.$('call-8', []), 0x44);
    returns('call_9_0', () => named[r'$module1']!.$('call-9', []), 0x42);
  });

  group('elem.60.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.60.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      named[r'$module3'] = m;
    });

    returns('call_7_0', () => named[r'$module1']!.$('call-7', []), 0x43);
    returns('call_8_0', () => named[r'$module1']!.$('call-8', []), 0x45);
    returns('call_9_0', () => named[r'$module1']!.$('call-9', []), 0x46);
  });

  // assertInvalid('invalid elem.61.wasm', 'elem/elem.61.wasm', 'type mismatch');
  // assertInvalid('invalid elem.62.wasm', 'elem/elem.62.wasm', 'type mismatch');
  // assertInvalid('invalid elem.63.wasm', 'elem/elem.63.wasm', 'type mismatch');
  // assertInvalid('invalid elem.64.wasm', 'elem/elem.64.wasm', 'type mismatch');

  group('elem.65.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.65.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      named[r'$m'] = m;
    });

    action('register-exporter',
        () => registered['exporter'] = importModuleFrom(m));
    returns('get_0', () => named[r'$m']!.$('get', [0]), null);
    returns('get_1', () => named[r'$m']!.$('get', [1]), null);
    returns('set_0', () => named[r'$m']!.$('set', [0, $externref(42)]),
        null /*void*/);
    returns('set_1', () => named[r'$m']!.$('set', [1, $externref(137)]),
        null /*void*/);
    returns('get_2', () => named[r'$m']!.$('get', [0]), $externref(42));
    returns('get_3', () => named[r'$m']!.$('get', [1]), $externref(137));
  });

  group('elem.66.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.66.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('get_0', () => named[r'$m']!.$('get', [0]), null);
    returns('get_1', () => named[r'$m']!.$('get', [1]), $externref(137));
  });

  group('elem.67.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.67.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      named[r'$module4'] = m;
    });

    action(
        'register-module4', () => registered['module4'] = importModuleFrom(m));
  });

  group('elem.68.wasm', () {
    late ModuleDefinition def;
    late Module m;

    setUpAll(() {
      def = ModuleDefinition.parse(File('test/spec/elem/elem.68.wasm'));
      m = Module(def, imports: {'spectest': specTestModule(), ...registered});
    });

    returns('call_imported_elem_0', () => m.$('call_imported_elem', []), 0x2A);
  });
}
