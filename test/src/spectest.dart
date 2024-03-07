// Generated from test/src/spectest.wasm.

// ignore_for_file: curly_braces_in_flow_control_structures, dead_code
// ignore_for_file: non_constant_identifier_names, unused_element, unused_label
// ignore_for_file: unused_local_variable

import 'package:wasmi/runtime.dart';

class SpectestModule extends Module {
  SpectestModule() {
    _initGlobals();
  }

  @override
  final Memory memory = Memory(
    1,
    2,
  );

  final Globals globals = Globals();

  final Table table0 = Table(
    10,
    20,
  );

  @override
  late final List<Table> tables = [table0];

  i32 get global_i32 => globals.global0;
  i64 get global_i64 => globals.global1;
  f32 get global_f32 => globals.global2;
  f64 get global_f64 => globals.global3;

  void print() => _func0();
  void print_i32(i32 arg0) => _func1(arg0);
  void print_i64(i64 arg0) => _func2(arg0);
  void print_f32(f32 arg0) => _func3(arg0);
  void print_f64(f64 arg0) => _func4(arg0);
  void print_i32_f32(i32 arg0, f32 arg1) => _func5(arg0, arg1);
  void print_f64_f64(f64 arg0, f64 arg1) => _func6(arg0, arg1);

  void _func0() {
    final frame = Frame(this);
  }

  void _func1(i32 arg0) {
    final frame = Frame(this);
  }

  void _func2(i64 arg0) {
    final frame = Frame(this);
  }

  void _func3(f32 arg0) {
    final frame = Frame(this);
  }

  void _func4(f64 arg0) {
    final frame = Frame(this);
  }

  void _func5(i32 arg0, f32 arg1) {
    final frame = Frame(this);
  }

  void _func6(f64 arg0, f64 arg1) {
    final frame = Frame(this);
  }

  void _initGlobals() {}
}

typedef FunctionType0 = void Function();
typedef FunctionType1 = void Function(i32);
typedef FunctionType2 = void Function(i64);
typedef FunctionType3 = void Function(f32);
typedef FunctionType4 = void Function(f64);
typedef FunctionType5 = void Function(i32, f32);
typedef FunctionType6 = void Function(f64, f64);

class Globals {
  final i32 global0 = 666;

  final i64 global1 = 666;

  final f32 global2 = 0.0;

  final f64 global3 = 0.0;
}
