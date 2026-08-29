# PENDING.md — corpus/tests/prolog

ROW: tests-consolidate-prolog-pz4-blocked-33

Deferred, NOT kept. These convert like any other file once the row named above unblocks. They are
declared here rather than in `KEEP.md` because a keeper says "stays loose forever, on purpose", which would
be false of every one of them — filing a deferral as a keeper is how it silently becomes permanent.

`test_gate_suite_conversion_complete.sh` resolves the `ROW:` line against the live queue on every run: if
that row lands DONE or vanishes, these stop deferring and the gate FAILS. The deferral expires by itself.

⛔ ONLY the `- ` items under `## DEFERRED` declare anything. Every other section here is prose and is inert
to the gate — deliberately, because the first version of this file listed all 49 loose files (32 deferred
plus 17 it was explicitly NOT deferring, described to explain the split) and the gate deferred all 49 and
went GREEN. Do not add a file below this line expecting it to be excluded by the surrounding sentence.

## DEFERRED

- `coverage/coverage_net_gaps.pl` — rc=134, crashes
- `queens.pl` — rc=139, crashes
- `rung05_backtrack_backtrack.pl` — rc=134, crashes
- `rung10_programs_puzzle_02.pl` — rc=139, crashes
- `rung10_programs_puzzle_03.pl` — rc=139, crashes
- `rung10_programs_puzzle_04.pl` — rc=139, crashes
- `rung10_programs_puzzle_06.pl` — rc=139, crashes
- `rung10_programs_puzzle_07.pl` — rc=139, crashes
- `rung10_programs_puzzle_08.pl` — rc=139, crashes
- `rung10_programs_puzzle_09.pl` — rc=139, crashes
- `rung10_programs_puzzle_10.pl` — rc=139, crashes
- `rung10_programs_puzzle_11.pl` — rc=139, crashes
- `rung10_programs_puzzle_12.pl` — rc=139, crashes
- `rung10_programs_puzzle_13.pl` — rc=139, crashes
- `rung10_programs_puzzle_14.pl` — rc=139, crashes
- `rung10_programs_puzzle_15.pl` — rc=139, crashes
- `rung10_programs_puzzle_16.pl` — rc=139, crashes
- `rung10_programs_puzzle_17.pl` — rc=139, crashes
- `rung10_programs_puzzle_18.pl` — rc=139, crashes
- `rung10_programs_puzzle_19.pl` — rc=139, crashes
- `rung10_programs_puzzle_20.pl` — rc=139, crashes
- `rung11_findall_findall_arith.pl` — rc=139, crashes
- `rung11_findall_findall_filter.pl` — rc=139, crashes
- `rung30_dcg_generate.pl` — rc=134, crashes
- `rung31_bridge_catch/05_var_goal_throw.pl` — rc=139, crashes
- `rung34_bridge_setof/01_findall_var_goal.pl` — rc=132, crashes
- `rung34_bridge_setof/02_findall_var_goal_arith.pl` — rc=132, crashes
- `rung34_bridge_setof/04_findall_var_userpred.pl` — rc=132, crashes
- `rung34_bridge_setof/05_findall_var_conj.pl` — rc=135, crashes
- `rung56_ite_backtrack/rung56.pl` — rc=134, crashes
- `rung57_forall/rung57.pl` — rc=134, crashes
- `sentences.pl` — rc=139, crashes

## Measured, not remembered (hq_B 2026-08-29)

Every file above was RUN. The row named at the top defines its scope as "the 33 files that CRASH under
PZ-4 (rc=132/134/139)" and names none of them. That figure was never measured and is wrong twice over: the
measured crash set is **32**, and it contains an **rc=135 (SIGBUS)** that the row's own three-code
definition would have missed.

Binary: SCRIP `a63cef7f` built 2026-08-29T15:39Z, `timeout 30s` per program — generous on purpose, since
this box was at load ~20 on 16 cores and a tight timeout on a loaded box manufactures an rc=124 that reads
as a property of the program. rc over all 49 loose-undeclared: 139×23, 134×5, 132×3, 135×1, 1×9, 0×8.

## ⛔ rc IS THE WRONG CLASSIFIER, AND THE ROW ABOVE IS DEFINED IN TERMS OF IT

Twelve further files do not crash and are still not convertible: they exit 0 or 1 and produce output that
DIFFERS from their own `.ref`. seat03 reached this independently by ASM-diff for five of them — all five
are here, none of them crash, and an rc-only classifier calls every one "convertible".

⛔ **Converting one of these would pin the bug into the suite.** The inherited method is per-entry
byte-equal-or-no-delete, and byte-equal is measured against what the compiler emits TODAY; if today's
emission is wrong, conversion writes the wrong answer into a `.ref` and the family is green forever.
They are NOT deferred to the row above — that row is the PZ-4 *crash* row, and routing a wrong-output
defect into it would widen its scope silently. They need their own routing:

- `rung14_retract_retract_basic.pl` — rc=1, output DIFFERS from its .ref
- `rung14_retract_retract_mixed.pl` — rc=1, output DIFFERS from its .ref
- `rung15_abolish_abolish_then_reassert.pl` — rc=1, output DIFFERS from its .ref
- `rung31_bridge_catch/04_var_goal_userpred.pl` — rc=1, output DIFFERS from its .ref
- `rung33_bridge_callN/04_call3_user_pred.pl` — rc=1, output DIFFERS from its .ref
- `rung38_iso_errors/03_existence_error.pl` — rc=1, output DIFFERS from its .ref
- `rung44_setof_group.pl` — rc=1, output DIFFERS from its .ref
- `rung45_reflect_clause_facts.pl` — rc=0, output DIFFERS from its .ref
- `rung45_reflect_clause_findall.pl` — rc=0, output DIFFERS from its .ref
- `rung50_between_enum.pl` — rc=0, output DIFFERS from its .ref
- `rung50_for_alias.pl` — rc=0, output DIFFERS from its .ref
- `rung66_current_stream.pl` — rc=0, output DIFFERS from its .ref

## Genuinely convertible right now (4)

These exit cleanly AND match their `.ref`. This is the row's real remaining backlog:

- `rung15_abolish_abolish_existing.pl` — rc=0, output matches
- `rung15_abolish_abolish_one_of_two.pl` — rc=1, output matches
- `rung15_abolish_abolish_then_query_fail.pl` — rc=0, output matches
- `rung22_write_canonical_write_canonical_list.pl` — rc=0, output matches

## One needs the grading convention, not a fix

- `rung10_programs_puzzle_05.pl` — rc=1, and **no `.ref` exists**. hq_C ruled (routed via seat03) that rc=1 is
  CORRECT here: `main` takes the top-level-goal role, so a failure-driven loop with no fallback clause
  exits 1 by design (ARCH-LANGUAGES.md § ENTRY-POINT CONVENTION, § FAILURE-DRIVEN LOOP WITH NO FALLBACK
  CLAUSE). Grade stdout against the oracle, rc against a per-family declared expectation in the `.ref`.
  Its 19 `rung10_programs_puzzle_*` siblings all crash and are deferred above; the same convention applies
  to them once PZ-4 clears.
