# gimpel — probe consolidation status

⛔ **`KEEP.md`-as-permanent-disposition is VOID for crosscheck/probe (Lon ruling 2026-08-28,
`corpus-crosscheck-probe-total-conversion.task.md`): "it matters not the number of lines... make
them all use the multi-liner or one-liner Python harness as appropriate."** What follows is a
STATUS record, not a policy keep — every file named here is either converted, renamed out of scope,
or blocked on a specific, named, still-open mechanism, never held back by choice.

## Removed 2026-08-28 (probe-consolidate-m1-and-small, seat02) — exact duplicates

`BALREV.sno`, `BLANKS.sno`, `DIFF.sno`, `OR.sno` were byte-identical (`diff -q`, confirmed before
removal) to `packages/snobol4/gimpel/{BALREV,BLANKS,DIFF,OR}.sno` — the imported-suite copy that
already owns provenance for the whole Gimpel package (corpus re-grid map,
`corpus-suites-consolidation.task.md` line 144: `gimpel` is a named `packages/{lang}/` import).
Not "converted" — they were never probe-specific content, just stray duplicates; `git rm`'d, no
suite entry needed, nothing lost (still present under `packages/`, still in git history here too).

## Converted 2026-08-28 (probe-consolidate-m1-and-small, seat02) — XFAIL, once the format landed

`gim_blanks_min_wrong`, `gim_defer_cassign_array_elt`, `gim_fortput_m4_only_segv`,
`gim_goto_function_call_parse`, `gim_indirect_read_third_operand`, `gim_name_of_field_store`,
`gim_not_op_no_template`, `gim_omitted_arg_shift`, `gim_or_single_alternative_crash`,
`gim_real_literal_parse`, `gim_seq_code_loop_in_function`, `gim_span_self_rebind_wrong`, and (added
in a second pass, below) `gim_double_include_hang` are now XFAIL entries 10-22 of
`tests/snobol4/probe/gimpel.sno`/`.ref`. SCRIP commit `3987d9ba` (landed 2026-08-28, answering this
row's own `gimpel-xfail-needed` ask) added XFAIL witness support to `corpus_suite_harness.py`:
`convert`/the manual `convert_one()` path no longer refuse a non-green original — byte-equal-or-no-
delete now requires the candidate to reproduce the ORIGINAL's exact verdict, whatever it is
(wrong-output rc=0, parse/FATAL rc=1, SIGABRT rc=134/signal 6 for `gim_not_op_no_template`, SIGSEGV
rc=139/signal 11 for `gim_seq_code_loop_in_function`), never silently requiring PASS. Every verdict
re-verified byte-for-byte against this KEEP.md's own prior fresh-2026-08-28 characterization before
conversion — exact match for all 12, nothing drifted. `test_corpus_snobol4.sh`'s probe/
auto-discovery loop reads `m3_fail`/`m4_fail` only, so these documented reds do not inflate its FAIL
count; `SUITE_BOARD` reports them under `m3_xfail`/`m4_xfail`, `m3_xpass`/`m4_xpass` both 0.

**Used the harness's own library functions directly (`convert_one`/`write_suite`) rather than the
`convert` CLI subcommand**: `convert` reprocesses (re-executes) every entry already in the target
family, and doing that once for `probe/eval` corrupted an unrelated, already-green one-liner
(`ev_fn_beauty_shape`) into a bogus XFAIL block, reproducibly — reported to hq_C
(`convert-cli-reexecutes-existing-entries-corrupts-eval`), not re-investigated further here (out of
scope: harness-internal, not a gimpel disposition question). Appending only the new entries
(existing entries pass through `read_suite`→`write_suite` untouched, never re-executed) sidesteps it.

**Second pass, same session, after hq_C's reply**: hq_C independently verified that CRASH/HANG
verdicts convert safely too (`cmd_run` grades each entry in isolation — one SIGSEGV/timeout never
takes the suite down — and `behaviorally_equal` still demands the exact signal/timeout match), citing
`gim_double_include_hang` and `gim_or_single_alternative_crash` by name (`.github/FINDING-2026-08-28-
hq_C-the-xfail-gap-three-seats-were-blocked-on-had-already-landed.md`). Re-verified independently
before trusting it (not taken on citation alone): `gim_double_include_hang` converts cleanly as
XFAIL. **Correction to the prior KEEP.md's "still red, hangs" characterization**: fresh verification
today shows it does NOT hang (no timeout) — it fails fast (m3 rc=1 output mismatch, m4 `scrip
--compile` fails), deterministically, both before and after the `.inc` rename below. The "hangs"
label was stale (this file's own name is now a bit of a misnomer, left as-is — renaming it is a
`GOAL-SNOBOL4-100.md` citation-sweep concern, not this row's).

## RENAMED, not a probe-consolidation target — was never a `.sno` in truth

`gim_double_include_hang_A.sno` → `gim_double_include_hang_A.inc`. Content is a single
`DEFINE('DI_COUNT(...)')` with a labeled body and **no `END` statement** — by this project's own
corpus convention (project CLAUDE.md, "Corpus conventions": "`.inc` = DEFINE-only include file"),
this was always an include fragment, never a standalone program; it only ever carried `.sno` by a
naming oversight, not because anyone judged it a test. Renaming (plus updating the 2 `-INCLUDE`
references in `gim_double_include_hang.sno`/`gim_double_include_once_control.sno`, both still using
literal quoted filenames, e.g. `-INCLUDE "gim_double_include_hang_A.inc"`) removes it from
`-name "*.sno"` DONE-WHEN glob entirely — correctly, not as a workaround: it was never a probe
regression test to begin with. Re-verified both referencing files behave identically before and
after the rename (direct `run_all_modes` calls, byte-for-byte same verdicts).

## BLOCKED on -INCLUDE (no suite-format representation) — genuinely unresolved

`gim_double_include_once_control.sno` — GREEN (rc=0, m3 and m4 both PASS) but **cannot convert**:
tested directly via `convert_one()`, and it correctly REFUSED ("NEITHER form reproduced the
original's behavior") because the candidate is written to a temp dir with no sibling `-INCLUDE`
target, and this witness (unlike `gim_double_include_hang`, which apparently fails/hangs on some
path that doesn't depend on the include resolving) genuinely needs its sibling present to produce
its correct output. Same scope boundary as `probe/m1/m1_include_sort_loop`
(`corpus-suites-consolidation.task.md`'s stdin-bearing-tests precedent): a suite entry must be
self-contained, and the suite format has no `-INCLUDE` concept. Authoring a sibling-free inline
rewrite was judged out of scope for a mechanical consolidation pass (would mean writing new witness
content, not converting existing content) — same reasoning as `m1`'s already-declined alternative.
Left loose; this is a genuine, still-open format gap, not a disposition choice.

## BLOCKED on self-pinned/meaningful-grading question — deliberately ref-less, not an oversight

`gim_cassign_array_elt_loud.sno` — **checked whether the 2026-08-28 XFAIL landing or
`capture-oracle-refs` could close this; neither can, and not by omission**:
- `capture-oracle-refs` requires SCRIP's own m3/m4 to already agree before minting a `.ref`; here
  m3=FAIL(rc=1) vs oracle rc=0, so it correctly refuses ("RED ... untouched, no .ref").
- The SPITBOL oracle itself prints `[x]` (rc=0) for this program — SPITBOL supports the full
  array-element capture-target syntax SCRIP's GZ#5 subset boundary deliberately refuses. Minting a
  `.ref` from that oracle run and converting as XFAIL would encode "SCRIP fails to match SPITBOL" as
  the thing being tracked — but the file's OWN header comment says otherwise: *"No .ref: SCRIP is
  expected to refuse, the oracle prints [x]."* SCRIP's refusal is the intended, correct behavior for
  this witness, not a bug converging toward SPITBOL parity; an oracle-derived ref here would be
  actively misleading, not merely superfluous.
- The refusal text itself goes to **stderr**; `corpus_suite_harness.py`'s grading (`classify()`)
  compares stdout only, so even a self-pinned "asserts empty stdout" entry would not meaningfully
  test the thing this witness documents (SCRIP's GZ#5 subset boundary, `GOAL-SNOBOL4-BB.md`).

This is the same self-pinned-ref-grading class hq_C was concurrently resolving for Pascal — not
re-decided here solo. Left loose.
