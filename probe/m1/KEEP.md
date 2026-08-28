# m1 — probe consolidation status

⛔ **`KEEP.md`-as-permanent-disposition is VOID for crosscheck/probe (Lon ruling 2026-08-28,
`corpus-crosscheck-probe-total-conversion.task.md`).** This is a STATUS record, not a policy keep.

## Removed 2026-08-28 (probe-consolidate-m1-and-small, seat02)

`m1_include_sort_loop.sno`/`.ref`/`.inc` — file-driven via `-INCLUDE`, no suite-format
representation (same class as `probe/gimpel`'s double-include trio). Removed rather than left
loose: its inline twin (`m1_include_sort_loop_inline`) already converted into
`tests/snobol4/probe/m1.sno`/`.ref` in an earlier session, exercising the same defect without the
`-INCLUDE` dependency, and `-INCLUDE` as a mechanism is exercised by dozens of other corpus files
(`packages/snobol4/gimpel/*_driver.sno`, `probe/rtx11_dynvar_include.sno`,
`probe/csnobol4_triage/*include*`, `tests/snobol4/beauty_suite/*_driver.sno`, …) — nothing lost.

## BLOCKED on xfail representation — still genuinely red, re-verified fresh 2026-08-28

`m1_nret_cap.sno`/`.ref` (m3 FATAL rc=1, m4 `scrip --compile` fails) and `m1_trailing_ws.sno`/`.ref`
(m3 genuine PARSE ERROR + "missing END statement" on a program with trailing whitespace after a
statement, m4 also fails to compile) — both re-run through `corpus_suite_harness.py convert`
directly and both correctly REFUSED. Same xfail-format gap as `probe/gimpel`'s red witnesses; see
that family's `KEEP.md` for the full reasoning, not re-derived here. `m1_trailing_ws` in particular
looks like it may be a genuine, previously-uncharacterized lexer/parser defect (trailing whitespace
after a statement causing a parse error) rather than an already-tracked one — no `.github` citation
found for it by name; flagged non-blocking (`s4e_msg.sh ask hq_C m1-trailing-ws-may-be-new-defect`)
rather than investigated further (out of scope for a consolidation row). Left loose.

## OUT OF SCOPE — do not touch, do not convert

`m1_min_indented_assign.in`/`.ref` — **not a probe-consolidation target at all.** No `.sno` exists
because this pair is not a standalone program: `.in` (` X = 1`, six characters) is piped as STDIN
into a *different* program, `demo/snobol4/beauty/beauty.sno`, and `.ref` is the oracle's
"beautified" expected output. This is the minimal repro for a live, actively-tracked architecture
investigation (the "M1 wall" / beauty self-host defect, `*Parse` failing on token classification) —
cited by exact path in `GOAL-SCRIP-HQ.md` and `GOAL-SNOBOL4-100.md` across multiple FINDING-backed
sessions (s195/s196/s197). Left completely untouched: this belongs to that goal, not to corpus
consolidation, and the total-conversion ruling's stdin-bearing-tests clause does not reach a witness
that is not itself a `probe/` regression test but live evidence for a separate, open investigation.
