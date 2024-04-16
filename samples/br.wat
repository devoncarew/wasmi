(module

  (func $dummy)

  (func $nestedBlockValue (export "nested-block-value") (param i32) (result i32)
    (i32.add
      (i32.const 1)
      (block (result i32)
        (call $dummy)
        (i32.add (i32.const 4) (br 0 (i32.const 8)))
      )
    )
  )

  (func (export "tester") (result i32)
    i32.const 9
    call $nestedBlockValue
  )
)
