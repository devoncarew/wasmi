## Generated from example/fib.wasm.

```dart
class FibModule extends Module {

  i32 _func0(i32 arg0) {
    i32 local0 = 0;
    i32 local1 = 0;
    i32 local2 = 0;

    local0 = 1;
    var t0 = vm.i32_gt_s(arg0, 0);
    if_label_0:
    if (t0 != 0) {
      loop_label_1:
      for (;;) {
        var t1 = vm.i32_sub(arg0, 1);
        arg0 = t1;
        if_label_2:
        if (t1 != 0) {
          var t2 = vm.i32_add(local0, local1);
          local2 = t2;
          local1 = local0;
          local0 = local2;
          continue loop_label_1;
        }
        break;
      }
      return local0;
    }
    return 0;
  }

  FibModule() {
    vm = VM(this);
  }

  late final VM vm;

  @override
  final Memory memory = Memory(0);

  @override
  late final List<Table> tables = [];

  i32 fib(i32 arg0) => _func0(arg0);
}

typedef FunctionType0 = i32 Function(i32);
```
