;; hello.wat — hand-written pipeline proof (not emitter-generated)
;; Proves: wat2wasm --enable-tail-call + node run_wasm.js pipeline works end-to-end.
;; Contract: main() writes output to memory[0..len-1], returns len (i32).
;; Output must match corpus/crosscheck/hello/hello.ref: "HELLO WORLD\n"

(module
  (memory (export "memory") 1)
  (data (i32.const 1024) "HELLO WORLD\n")

  (func (export "main") (result i32)
    (local $i i32)
    (local.set $i (i32.const 0))
    (block $done
      (loop $copy
        (br_if $done (i32.ge_u (local.get $i) (i32.const 12)))
        (i32.store8
          (local.get $i)
          (i32.load8_u (i32.add (i32.const 1024) (local.get $i))))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $copy)
      )
    )
    (i32.const 12)
  )
)
