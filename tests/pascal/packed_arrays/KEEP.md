# KEEP.md -- tests/pascal/packed_arrays (the cto, 2026-11-04, R-2119)

The witnesses of DESIGN-PLAN: pascal-packed-arrays (the pascal skill, section 8), kept loose on purpose: each `.pas` sits beside its `.ref` cut from fpc 3.2.2 in the program's own mode (`{$mode fpc}`, `fpc -v0`, the binary's stdout) and is run by `harness/scripts/test_design_pascal_packed_arrays_steps.sh --step N` in both modes at the step's declared heap, byte-equal to the ref. They are not suite entries and are never converted into `ALL.pas`. The step table is `STEPS.tsv` beside them.

## The keepers, each named

`pa01_bytes.pas` -- the rung: an array [1..100000000] of byte filled and summed at a declared heap of 256 MB; red today by error 204 (one 1,600,000,000-byte kind-214 request), green when the array is one raw block of 100,000,000 bytes.
`pa02_widths.pas` -- every flat ordinal element type (byte, shortint, char, boolean, word, smallint, longword, longint, int64, qword, an enumeration, a subrange), a two-dimensional array of word, an array of arrays of byte, low, high and sizeof.
`pa03_dynamic.pas` -- dynamic arrays of longword and byte: setlength grows, shrinks and empties, the reference semantics of a dynamic-array assignment, length, high, low.
`pa04_pointer.pas` -- pointers into elements: @a[i], inc(p), p^ as a load and a store, @a as a whole-array pointer, a ^byte over an array of byte.
`pa05_params.pas` -- an element as a var actual, a whole array as a var actual, an array value parameter copied (the callee's store does not reach the caller), array assignment copies, an array field under with, a const record parameter.
`pa06_unpacked.pas` -- the element types that stay ARBLK: real, string, record, set, pointer (the irzero probe of step 3 reads no arr_make_raw here).
`pa07_churn.pas` -- allocation churn: 3,000 calls of a procedure with a local array of 1,000 bytes and 3,000 setlengths of a dynamic array of word kept in an array of 50; the collector runs, and under SCRIP_GC_STRESS=1 at every safe point.
`pa09_setlength_raw.pas` -- (officer_06, 2026-11-09, step 3f) setlength of a global dynamic array of boolean and of longword to 10,000,000 elements at the default 131072 KB heap, grown with its prefix kept, shrunk and emptied; red on 54780f914 by error 204 (pas_dynset asked for a 16-byte DESCR block of n cells before its raw branch), green when setlength of a raw array allocates only raw bytes.
`pa10_local_dynamic.pas` -- (officer_06, 2026-11-09, step 3g) dynamic arrays of boolean, longword and byte declared in a procedure and a function, 1,000,000 elements each (small on purpose: step 3g does not wait on 3f, the size claim is pa09's), the procedure called twice (each call starts zeroed), a byte store truncating 259 to 3; red on 54780f914 by its irgrep probe (mk_proc made the locals by arr_make, DESCR elements), green when they are arr_make_raw.

A red found while cutting these, outside the plan's subject and left to its own row: `setlength(keep[i], 2000)` on an element of a static array of dynamic arrays, followed by `keep[i][j] := ...`, ends with `ISO 7185 6.5.3.2: an index value is not assignment-compatible` in both modes (fpc prints 839176 for the ten-line program recorded in the plan's baton ledger).
