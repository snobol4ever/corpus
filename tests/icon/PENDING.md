# PENDING.md — tests/icon/ (root-level loose files deferred to another row)

ROW: icon-n2-generator-activation-frames

Per `tests-consolidate-icon`. Modelled on `test_gate_suite_conversion_complete.sh`'s fourth bucket
(hq_B 2026-08-29, mechanism landed SCRIP `a63cef7f`). This is NOT a KEEP.md: a keeper says "stays
loose forever, on purpose"; these convert once the row named above lands. The gate resolves that row
against the live queue on every run — re-run it with this file removed once the row goes DONE, and
convert these then rather than re-pointing this file at a fresh row to stay quiet.

## 2 files — root-caused to the icon-n2 activation-frame/value-path defect, re-verified fresh today

`rung36_jcon_cxprimes.icn rung36_jcon_scan2.icn`

Both were long documented in this directory's `KEEP.md` (rung36 section) as belonging to this row's
scope, but never formally declared to this gate — that file's prose omits the `.icn` extension, so
the gate's delimited-basename match never recognized them, and they sat as "loose-but-undeclared"
despite being fully characterized. This file is the missing formal declaration, not new analysis.

⭐ **Re-verified against today's pristine build (SCRIP `a63cef7f`+), not trusted from citation —
one of the two has changed shape since `KEEP.md` was last edited:**
- `cxprimes`: still **SIGSEGV, both modes** (m3 rc=139, m4 rc=139) — unchanged from `KEEP.md`'s
  characterization. `sieve` suspends inside a `while` loop, the `icon-n2` "suspend_loop" shape.
- `scan2`: **no longer crashes** — now clean exit (rc=0) with WRONG output, both modes (diffed
  against `.expected`, both m3 and m4 identically short several lines). `KEEP.md`'s rung36 bullet
  still calls this one "SIGSEGV" and is stale on this specific point; this session's own NEXT/LEDGER
  entry has the correction. Root cause unchanged (icon-n2's value-path, not the activation-frame
  crash) — this is the exact "crash → clean-exit-wrong-output" transition seat16's 2026-08-29
  SUPERSEDED-NEXT already flagged for `scan2`/`recogn` after `SCRIP_ICN_GENFRAME2` went default-ON
  (`0b35b5fc`); `KEEP.md`'s older prose simply predates that landing.

## NOT included here, deliberately: `recogn` and `genqueen`

Both are ALSO ultimately blocked on `icon-n2-generator-activation-frames`, but their DIRECT,
dedicated blocking row is `icn-recogn-genqueen-suspend-shape` (QUEUE.tsv rank 1, unassigned, state
`PARKED-AWAITING:icon-n2-generator-activation-frames` — itself not yet unparked). A PENDING.md names
exactly one row (`test_gate_suite_conversion_complete.sh`'s own design: "a file that needs two
owners has not been split yet"), and this directory can hold only one `PENDING.md`. Pointing
`recogn`/`genqueen` at `icon-n2-generator-activation-frames` directly would risk a FALSE
stale-deferral the moment that row closes, while `icn-recogn-genqueen-suspend-shape`'s own follow-up
work is still outstanding — so they stay loose-but-undeclared rather than misattributed. Re-verified
fresh today for the record: `recogn` now exits cleanly both modes (rc=0) but prints NOTHING where
`.expected` has 8 lines — same crash→silent-wrong-output transition as `scan2`. `genqueen` still
aborts both modes (rc=134, SIGABRT — the GENHOST forward-reference/recursive-frame refusal hq_B's
table already recorded). Whoever unparks `icn-recogn-genqueen-suspend-shape` should mint its own
declaration for these two once that row's own scope is clear enough to name precisely.
