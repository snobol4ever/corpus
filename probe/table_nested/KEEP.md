# KEEP.md — probe/table_nested

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

0 of 10 witnesses converted. Nothing in this directory is a routine KEEP exclusion --
every file falls into one of two categories, both worth a careful read before anyone treats
this as "0/10, must be broken".

## Category 1 — oversized (2 files, size ceiling only)
`claws5_l1.sno` (47 lines) and `claws5_l2.sno` (44 lines) are over Lon's 40-line suite-entry
ceiling. No correctness question here.

## Category 2 — benchmark-shaped, NOT a correctness defect (8 files)
The other 8 (`chain_incr_d1/d2/d3`, `chain_read_d1/d2/d3`, `ident_guard_d1`, `value_type_tbl`)
all `-INCLUDE '../../benchmarks/snobol4/harness.inc'` and print a timed-loop result: a fixed
`check:` line (the correctness assertion) followed by variable `iters:`/`ns:`/`ms:` timing
lines. Every one of these `.ref` files pins **only** the `check:` line (1 line each) --
consistent with the timing lines being expected to vary run to run.

The harness's byte-equal-or-no-delete conversion check does a full-text comparison and
therefore reports all 8 as "not green" (`output mismatch`), because the live run's timing
lines don't and can't match a fixed `.ref`. **Verified this is a format mismatch, not a
compiler bug**, by running one representative witness by hand:
```
$ ./scrip probe/table_nested/chain_incr_d1.sno < /dev/null
check: 3
iters: 7340032
ns: 515771087
ms: 515
$ cat probe/table_nested/chain_incr_d1.ref
check: 3
```
The `check:` value matches exactly; only the (expected-variable) timing lines differ. All 8
follow the identical one-line-`.ref` + harness-include shape (checked directly, not assumed).
Contrast `probe/callout/claws5_cap.sno`, which has the *same* benchmark shape but whose
`check:` value is actually wrong -- that one IS a live defect, documented in its own KEEP.md.

**Implication, not acted on here:** these 8 read as mis-scoped for probe/ consolidation in
the first place -- they're benchmark-shaped programs (timed loop, non-deterministic output)
that happen to live under `probe/`, and `corpus-suites-consolidation.task.md`'s own scope
boundary keeps `benchmarks/` as standalone files, never suite entries. Whether they belong in
`corpus/benchmarks/snobol4/` instead, or whether the suite format should grow a
prefix-match/partial-oracle mode, is a scope call this row has no standing to make
unilaterally -- flagged for whoever owns that boundary decision.

| file | lines | reason |
|---|---|---|
| claws5_l1.sno | 47 | exceeds the 40-line suite-entry ceiling |
| claws5_l2.sno | 44 | exceeds the 40-line suite-entry ceiling |
| chain_incr_d1.sno | 25 | benchmark-shaped; check: matches, only timing lines differ -- not a defect |
| chain_incr_d2.sno | 26 | benchmark-shaped; check: matches, only timing lines differ -- not a defect |
| chain_incr_d3.sno | 28 | benchmark-shaped; check: matches, only timing lines differ -- not a defect |
| chain_read_d1.sno | 26 | benchmark-shaped; check: matches, only timing lines differ -- not a defect |
| chain_read_d2.sno | 27 | benchmark-shaped; check: matches, only timing lines differ -- not a defect |
| chain_read_d3.sno | 29 | benchmark-shaped; check: matches, only timing lines differ -- not a defect |
| ident_guard_d1.sno | 28 | benchmark-shaped; check: matches, only timing lines differ -- not a defect |
| value_type_tbl.sno | 29 | benchmark-shaped; check: matches, only timing lines differ -- not a defect |

## Machine-readable exception list (DONE-WHEN mirror)

⛔ Mirrors `probe/conformance/KEEP.md`'s fix (SCRIP `f3dc4672a`) -- this row's DONE-WHEN
greps this section, not the prose above, for `- <path>` lines. Add a line here in the SAME
edit that adds a file to this KEEP.md; remove one here in the SAME edit that converts a file
out of it.

- probe/table_nested/chain_incr_d1.sno
- probe/table_nested/chain_incr_d2.sno
- probe/table_nested/chain_incr_d3.sno
- probe/table_nested/chain_read_d1.sno
- probe/table_nested/chain_read_d2.sno
- probe/table_nested/chain_read_d3.sno
- probe/table_nested/claws5_l1.sno
- probe/table_nested/claws5_l2.sno
- probe/table_nested/ident_guard_d1.sno
- probe/table_nested/value_type_tbl.sno
