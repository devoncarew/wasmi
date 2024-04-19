// Generated from spec/test/core/exports.wast.

// ignore_for_file: unused_import, unused_local_variable

import 'dart:io';

import 'package:test/test.dart';
import 'package:wasmi/execute.dart';
import 'package:wasmi/parse.dart';

import '../framework.dart';

void main() {
  final Map<String, ImportModule> registered = {};
  final Map<String, Module> named = {};

  group('exports', () {
    group('exports.0.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.0.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.1.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.1.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.2.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.2.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.3.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.3.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.4.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.4.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.5.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.5.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.6.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.6.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.7.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.7.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.8.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.8.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.9.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.9.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.10.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.10.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.11.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.11.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
        named[r'$Func'] = m;
      });

      returns('e_0', () => m.$('e', [0x2A]), 0x2B);
      returns('e_1', () => named[r'$Func']!.$('e', [0x2A]), 0x2B);
    });

    group('exports.12.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.12.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.13.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.13.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
        named[r'$Other1'] = m;
      });

      returns('e_0', () => named[r'$Func']!.$('e', [0x2A]), 0x2B);
    });

    group('exports.14.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.14.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });

      returns('a_0', () => m.$('a', []), 0x2A);
      returns('b_0', () => m.$('b', []), 0x2A);
      returns('c_0', () => m.$('c', []), 0x2A);
    });

    // assertInvalid('invalid exports.15.wasm', 'exports/exports.15.wasm', 'unknown function');
    // assertInvalid('invalid exports.16.wasm', 'exports/exports.16.wasm', 'unknown function');
    // assertInvalid('invalid exports.17.wasm', 'exports/exports.17.wasm', 'unknown function');
    // assertInvalid('invalid exports.18.wasm', 'exports/exports.18.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.19.wasm', 'exports/exports.19.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.20.wasm', 'exports/exports.20.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.21.wasm', 'exports/exports.21.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.22.wasm', 'exports/exports.22.wasm', 'duplicate export name');

    group('exports.23.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.23.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.24.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.24.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.25.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.25.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.26.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.26.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.27.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.27.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.28.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.28.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.29.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.29.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.30.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.30.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.31.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.31.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.32.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.32.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
        named[r'$Global'] = m;
      });

      returns('e_0', () => m.global('e')!.value, 0x2A);
      returns('e_1', () => named[r'$Global']!.global('e')!.value, 0x2A);
    });

    group('exports.33.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.33.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.34.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.34.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
        named[r'$Other2'] = m;
      });

      returns('e_0', () => named[r'$Global']!.global('e')!.value, 0x2A);
    });

    // assertInvalid('invalid exports.35.wasm', 'exports/exports.35.wasm', 'unknown global');
    // assertInvalid('invalid exports.36.wasm', 'exports/exports.36.wasm', 'unknown global');
    // assertInvalid('invalid exports.37.wasm', 'exports/exports.37.wasm', 'unknown global');
    // assertInvalid('invalid exports.38.wasm', 'exports/exports.38.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.39.wasm', 'exports/exports.39.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.40.wasm', 'exports/exports.40.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.41.wasm', 'exports/exports.41.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.42.wasm', 'exports/exports.42.wasm', 'duplicate export name');

    group('exports.43.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.43.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.44.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.44.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.45.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.45.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.46.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.46.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.47.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.47.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.48.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.48.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.49.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.49.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.50.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.50.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.51.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.51.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.52.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.52.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.53.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.53.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.54.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.54.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.55.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.55.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.56.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.56.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.57.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.57.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertInvalid('invalid exports.58.wasm', 'exports/exports.58.wasm', 'unknown table');
    // assertInvalid('invalid exports.59.wasm', 'exports/exports.59.wasm', 'unknown table');
    // assertInvalid('invalid exports.60.wasm', 'exports/exports.60.wasm', 'unknown table');
    // assertInvalid('invalid exports.61.wasm', 'exports/exports.61.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.62.wasm', 'exports/exports.62.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.63.wasm', 'exports/exports.63.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.64.wasm', 'exports/exports.64.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.65.wasm', 'exports/exports.65.wasm', 'duplicate export name');

    group('exports.66.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.66.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.67.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.67.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.68.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.68.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.69.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.69.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.70.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.70.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.71.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.71.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.72.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.72.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.73.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.73.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.74.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.74.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.75.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.75.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.76.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.76.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.77.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.77.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.78.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.78.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    group('exports.79.wasm', () {
      late ModuleDefinition def;
      late Module m;

      setUpAll(() {
        def = ModuleDefinition.parse(File('test/spec/exports/exports.79.wasm'));
        m = Module(def, imports: {'spectest': specTestModule(), ...registered});
      });
    });

    // assertInvalid('invalid exports.80.wasm', 'exports/exports.80.wasm', 'unknown memory');
    // assertInvalid('invalid exports.81.wasm', 'exports/exports.81.wasm', 'unknown memory');
    // assertInvalid('invalid exports.82.wasm', 'exports/exports.82.wasm', 'unknown memory');
    // assertInvalid('invalid exports.83.wasm', 'exports/exports.83.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.84.wasm', 'exports/exports.84.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.85.wasm', 'exports/exports.85.wasm', 'duplicate export name');
    // assertInvalid('invalid exports.86.wasm', 'exports/exports.86.wasm', 'duplicate export name');
  });
}
