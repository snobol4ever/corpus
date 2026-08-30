# PENDING.md — corpus/tests/prolog

ROW: tests-consolidate-prolog-pz4-blocked-33

Deferred, NOT kept. These convert like any other file once the row that owns them unblocks. They are
declared here rather than in `KEEP.md` because a keeper says "stays loose forever, on purpose", which would
be false of every one — filing a deferral as a keeper is how it silently becomes permanent.

`test_gate_suite_conversion_complete.sh` resolves each section's row against the live queue on every run: if
a row lands DONE or vanishes, its files stop deferring and the gate FAILS. The deferral expires by itself.

⛔ ONLY the `- ` items under a `## DEFERRED` heading declare anything; every other section here is prose and
is inert to the gate. That is deliberate: the first version of this file listed all 49 loose files in prose
— 32 deferred plus 17 it was explicitly NOT deferring, described to explain the split — and the gate deferred
all 49 and went GREEN. Do not add a filename under a DEFERRED heading expecting a surrounding sentence to
exclude it. A heading may name its own row (`## DEFERRED <row>`); a bare one uses the `ROW:` line above.

## DEFERRED tests-consolidate-prolog-pz4-blocked-33

Crash outright. Measured on SCRIP `a63cef7f` (built 2026-08-29T15:39Z), `timeout 30s` per program, box at
load ~20 on 16 cores — generous on purpose, since a tight timeout on a loaded box manufactures an rc=124
that reads as a property of the program.

- `coverage/coverage_net_gaps.pl` — rc=134
- `queens.pl` — rc=139
- `rung10_programs_puzzle_02.pl` — rc=139
- `rung10_programs_puzzle_03.pl` — rc=139
- `rung10_programs_puzzle_04.pl` — rc=139
- `rung10_programs_puzzle_06.pl` — rc=139
- `rung10_programs_puzzle_07.pl` — rc=139
- `rung10_programs_puzzle_08.pl` — rc=139
- `rung10_programs_puzzle_09.pl` — rc=139
- `rung10_programs_puzzle_10.pl` — rc=139
- `rung10_programs_puzzle_11.pl` — rc=139
- `rung10_programs_puzzle_12.pl` — rc=139
- `rung10_programs_puzzle_13.pl` — rc=139
- `rung10_programs_puzzle_14.pl` — rc=139
- `rung10_programs_puzzle_15.pl` — rc=139
- `rung10_programs_puzzle_16.pl` — rc=139
- `rung10_programs_puzzle_17.pl` — rc=139
- `rung10_programs_puzzle_18.pl` — rc=139
- `rung10_programs_puzzle_19.pl` — rc=139
- `rung10_programs_puzzle_20.pl` — rc=139
- `rung11_findall_findall_arith.pl` — rc=139
- `rung11_findall_findall_filter.pl` — rc=139
- `sentences.pl` — rc=139

## DEFERRED prolog-backtracking-yields-first-solution-only

⛔ These DO NOT CRASH — rc=0 or rc=1 — and are still not convertible: they silently truncate to the first
solution, so their output differs from their own `.ref`. Invisible to any rc-based classifier.

Routed on seat03's ASM discriminator, not on symptom shape: each file's own emitted `.s` calls BOTH
`rt_call_arr_gen` and `rt_jmp_frame_lexprep2`. seat03 confirmed 5 by individually grepping compiled output;
the same test was then run here on the other 7, with seat03's 5 as a positive control — the method
reproduced their result on all 5 before being trusted on the rest, and 6 of the 7 matched.

- `rung14_retract_retract_basic.pl` — rc=1, arr_gen=1 lexprep2=1
- `rung14_retract_retract_mixed.pl` — rc=1, arr_gen=1 lexprep2=1
- `rung15_abolish_abolish_then_reassert.pl` — rc=1, arr_gen=1 lexprep2=1
- `rung44_setof_group.pl` — rc=1, arr_gen=1 lexprep2=2
- `rung45_reflect_clause_facts.pl` — rc=0, arr_gen=2 lexprep2=3
- `rung45_reflect_clause_findall.pl` — rc=0, arr_gen=2 lexprep2=3
- `rung50_between_enum.pl` — rc=0, arr_gen=1 lexprep2=5
- `rung50_for_alias.pl` — rc=0, arr_gen=1 lexprep2=3
- `rung66_current_stream.pl` — rc=0, arr_gen=1 lexprep2=4

## DEFERRED prolog-existence-error-not-catchable-iso

⭐ The one file that did NOT share the mechanism, and the reason seat03's "do not extrapolate my 5 to all
12" was worth saying: its `.s` contains NEITHER symbol (arr_gen=0, lexprep2=0). Confirmed by reading it —
it expects `caught_existence_error` and scrip prints `** Error 22 ... Undefined function called`, i.e. the
existence_error is not catchable. Different defect, and it already has its own live row.


## Genuinely convertible right now (4) — prose, inert to the gate

These exit cleanly AND match their `.ref`. This is the row's real remaining backlog:

- `rung15_abolish_abolish_existing.pl` — rc=0
- `rung15_abolish_abolish_one_of_two.pl` — rc=1
- `rung15_abolish_abolish_then_query_fail.pl` — rc=0
- `rung22_write_canonical_write_canonical_list.pl` — rc=0

## One needs the grading convention, not a fix — prose, inert to the gate

- `rung10_programs_puzzle_05.pl` — rc=1, and **no `.ref` exists**. hq_C ruled (via seat03) that rc=1 is
  CORRECT: `main` takes the top-level-goal role, so a failure-driven loop with no fallback clause exits 1 by
  design (ARCH-LANGUAGES.md § ENTRY-POINT CONVENTION). Grade stdout against the oracle, rc against a
  per-family declared expectation in the `.ref`. Its 19 `rung10_programs_puzzle_*` siblings all crash and are
  deferred above; the same convention applies to them once PZ-4 clears.

## Provenance of the counts

49 loose-but-undeclared = 32 crash + 11 generator-resume-cell + 1 existence-error + 4 convertible + 1 no-ref.
The sibling row's remembered "33 files that CRASH (rc=132/134/139)" is wrong three ways: the crash set is 32;
it includes an rc=135 SIGBUS that definition excludes; and 12 further files are blocked WITHOUT crashing, so
"crashes" was never the right definition of "blocked" — rc answers "did it crash", and the row asked it "is
it blocked".

## DEFERRED prolog-abolish-leaves-predicate-defined-but-empty

ORACLE-DIFF, root-caused by seat06 2026-08-29 and not re-derived here: SCRIP's `abolish/1` should leave the
predicate UNDEFINED, so the next call raises an existence_error -- both oracles agree on that, for different
reasons. SCRIP instead leaves it defined-but-empty, so the call quietly fails. ⛔ The consequence for THIS
row is the part that matters: every `.expected` in this group was pinned from SCRIP's own output, so they
are SELF-REFERENTIAL, not oracle-grounded. Converting them would freeze the defect into the master as the
expected answer -- the one outcome a consolidation must never produce.
Re-measured 2026-08-30 (hq_B) to confirm the group is still red and still this shape.

- `rung15_abolish_abolish_existing.pl` — scrip prints `gone` rc=0; oracle prints nothing rc=0
- `rung15_abolish_abolish_one_of_two.pl` — scrip prints `cat_gone|tweety|polly` rc=1; oracle prints nothing rc=0
- `rung15_abolish_abolish_then_query_fail.pl` — scrip prints `no` rc=0; oracle prints nothing rc=0

## DEFERRED prolog-write-canonical-prints-dot-functor-form-for-lists

Pure output-form divergence, measured 2026-08-30 (hq_B). Both sides terminate cleanly at rc=0; the entire
difference is how a list is written. Nothing else stands between this witness and conversion.

- `rung22_write_canonical_write_canonical_list.pl` — scrip `'.'(a,'.'(b,[]))` vs oracle `[a,b]`

## DEFERRED prolog-failed-initialization-goal-exits-1-where-swipl-exits-0

Measured 2026-08-30 (hq_B). BOTH implementations agree the initialization goal fails, and both print the
solution line first; the whole diff is the warning wording plus the exit code (swipl rc=0, scrip rc=1).
⭐ Deferred rather than kept because it is one rc away from converting -- a keeper would say "stays loose
forever, on purpose", which is false of it.

- `rung10_programs_puzzle_05.pl` — text agrees; swipl rc=0 vs scrip rc=1, warning worded differently
