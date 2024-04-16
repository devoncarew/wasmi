(module
  (type (;0;) (func))
  (type (;1;) (func (param i32) (result i32)))
  (type (;2;) (func (result i32)))
  (func (;0;) (type 0))
  (func (;1;) (type 1) (param i32) (result i32)
    i32.const 1
    block (result i32)  ;; label = @1
      call 0
      i32.const 4
      i32.const 8
      br 0 (;@1;)
      i32.add
    end
    i32.add)
  (func (;2;) (type 2) (result i32)
    i32.const 9
    call 1)
  (export "nested-block-value" (func 1))
  (export "tester" (func 2)))
