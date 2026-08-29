# probe/mwseg — the mixed_workload m4 SEGV, ablated to its three ingredients

Minted 2026-08-19 s170 (BM-2 seat) while converting `benchmarks/snobol4/mixed_workload.sno`
to a harness body. The program SEGVs in **m4 only** (m3 and the oracle are green), and it
SEGV'd identically **before** the conversion — `git show HEAD~:benchmarks/snobol4/mixed_workload.sno`
compiled and run at pristine HEAD `b7e10d3c` reads rc=139 too, so the conversion did not
cause it; it made it VISIBLE, because an ungraded program is one nothing looks at.

**Scale is not the trigger**: the original loops 50,000 times and crashes; the same program
with the loop count set to **0** (one pass) crashes identically.

## The three ingredients — remove ANY ONE and m4 is green

| witness | self-recursive DEFINE | pattern capture + destructive replace | TABLE store of the captured value | m4 |
|---|---|---|---|---|
| `mwseg_recfn_capture_table.sno` | ✅ | ✅ | ✅ | **SIGSEGV** |
| `mwseg_flatfn_capture_table.sno` | ❌ (same 2-stmt body, no self-call) | ✅ | ✅ | rc=0 ✅ |
| `mwseg_recfn_capture_novar.sno` | ✅ | ✅ | ❌ (plain variable) | rc=0 ✅ |
| `mwseg_recfn_table_nopat.sno` | ✅ | ❌ (plain LT test) | ✅ | rc=0 ✅ |

Every `.ref` is live `x64/bin/sbl -b` output. All four are green in m3 and on the oracle;
only the first row's m4 differs, so the pair `recfn_capture_table` (fails) vs
`flatfn_capture_table` (passes) is a **one-ingredient ASM-DIFF** — the two programs differ
by the single self-call `F = N + F(N - 1)` versus `F = N + 1`.

⛔ The function is **never called** in any of these witnesses. Its mere presence changes the
codegen of the rest of the program. That is the fact to start the asm diff from.

Not owned by the BM-2 seat — routed, not hunted (END-OF-CONTEXT LAW). Record:
`.github/FINDING-2026-08-19-s170-bm2-one-copy-and-two-m4-segv-classes-the-ungraded-were-hiding.md`.
