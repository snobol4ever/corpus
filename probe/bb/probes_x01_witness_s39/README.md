# X01 witness set — constructed s39 (Claude Sonnet 5), NOT part of the graded probe suite

Seven hand-constructed `.sno` probes isolating the X01 wrong-answer class (`ARBNO(ARBNO(...))` nested
pattern, silent `=F` when SPITBOL says `=S`). All `.ref` files generated from the real oracle
(`/home/claude/x64/bin/sbl -b <file>`, public repo `snobol4ever/x64`), not hand-guessed. See
`FINDING-2026-08-12q-…` in `.github` for the full analysis these support.

| File | Shape | want | SCRIP got |
|------|-------|------|-----------|
| X01W1_bare_nested | `ARBNO(ARBNO(LEN(1)))` — X01's exact shape, 1-char subject | =S | =F |
| X01W2_bare_nested_2char | same, 2-char subject | =S | =F |
| X01W3_lit_prefix_outside | `'x' ARBNO(ARBNO(LEN(1)))` — literal OUTSIDE, before | =S | =F |
| X01W4_lit_suffix_outside | `ARBNO(ARBNO(LEN(1))) 'x'` — literal OUTSIDE, after | =S | =F |
| X01W5_lit_sibling_inside_arm | `ARBNO(ARBNO(LEN(1)) 'x')` — literal INSIDE the outer arm, alongside the inner ARBNO | =S | **=S (passes)** |
| X01W6_null_lit_sibling_inside | `ARBNO(ARBNO(LEN(1)) '')` — null-literal INSIDE the arm | =S | =F |
| X01W7_len0_sibling_inside | `ARBNO(ARBNO(LEN(1)) LEN(0))` — real zero-width node INSIDE the arm | =S | =F |

**Current best-supported discriminator (n=7, NOT gdb/monitor-confirmed):** the outer ARBNO's own arm needs
a co-member alongside the nested ARBNO that consumes at least one subject character on its own turn — not
merely "any other node in the span" (W6/W7 show a zero-consuming sibling does not rescue it) and not merely
"a literal exists anywhere in the statement" (W3/W4 show a literal OUTSIDE the outer ARBNO's own repeated
unit does not rescue it either). This matches X02's shape (`ARBNO('(' ARBNO(...) ')')` — the delimiters are
co-members of the outer arm, consuming real characters) and explains why X02 passes while X01 (bare,
zero co-members) does not.

No source field currently staged in the emitter distinguishes any of these cases (confirmed — same
`framed/k0/sq/kk/osv` trace on W1 and W5 despite opposite outcomes). Mechanism NOT diagnosed further this
session; needs gdb/monitor tracing (MON-CAP still blocking — csnobol4 not built in container).
