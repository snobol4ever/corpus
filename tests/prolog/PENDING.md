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

⭐ **RE-MEASURED 2026-08-30 (seat13), and the list below is CORRECTED, not just re-timestamped.** Cross-
checked every entry against `ALL.csv`'s own origins before re-running anything: **9 of the original 32 are
already fully converted** — no loose copy remains, and each has a matching origin in the master
(`rung05_backtrack_backtrack`, `rung30_dcg_generate`, `rung31_bridge_catch/05_var_goal_throw`,
`rung34_bridge_setof/{01,02,04,05}_*`, `rung56_ite_backtrack/rung56`, `rung57_forall/rung57`) — swept up in
the parent row's later bulk verify+delete pass without this file being updated to match. Removed from the
list below; nothing further to do for them.

⛔ **SELF-CORRECTION, same pass:** my first edit here moved `coverage/coverage_net_gaps.pl` out on the
belief it was covered by `coverage/KEEP.md` — checked directly, it is not (that file names only
`coverage_pl_nodes.pl`, a different file). Restored below, unconverted, same as before. `queens.pl`/
`sentences.pl` really are routed elsewhere (hq_C's ruling, confirmed in the parent row's own ledger), but
that routing had never actually been written as bullets under the row that owns them — prose in a task
file does not register with this gate, the same rule this file states about itself. Added their own
section below rather than leaving them silently uncounted.

**The remaining 20 (18 puzzle + 2 findall) are UNCHANGED — still crash rc=139, re-confirmed on current
HEAD, not assumed stale.** `rung10_programs_puzzle_02.pl` gdb'd as a representative sample: SIGSEGV lands at
address `0x0` with a fully unwound stack (`#0 0x0...0 in ?? ()`) — a wild-jump-to-garbage shape, not a clean
fault. The program's own structure (`member/2` choice points, `puzzle :- ... fail.` failure-driven
enumeration) is exactly the backtracking-generator shape
`FINDING-2026-08-29-hq_P-prolog-generator-resume-cell-lives-inside-lexprep2-cleared-frame-region.md`
describes: `rt_jmp_frame_lexprep2`'s blanket frame `memset` on a retry destroys a generator resume cell's
*contents* (the cell's address is stable; its content is not). **Plausible same root cause across all 20,
not confirmed identical for each** — not chased further per that FINDING's own routing (the cure belongs to
`prolog-pz4-gamma-retain-activation-frames`, owner hq_C, currently `CLAIMED:seat11` and actively RUNNING).

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
- `coverage/coverage_net_gaps.pl` — rc=134 (re-confirmed 2026-08-30, unchanged)

## DEFERRED prolog-queens-and-sentences-segv-are-more-rt-jmp-frame-lexprep2-witnesses

Routed here per hq_C's ruling in the parent row's ledger (2026-08-30): 2 more witnesses of
`rt_jmp_frame_lexprep2` (same defect class as this file's own puzzle/findall section above), discriminated
by hq_C after `tests-consolidate-prolog`'s own triage. ⛔ **Do NOT capture a `.ref` until the crash cures** —
a program that dies partway through has no stable oracle output to pin (the same vacuous-oracle shape the
ceo stdin-freeze incident was about). Never had a machine-readable deferral before this edit — prose-only in
the parent row's task file, invisible to this gate.

- `queens.pl` — rc=139
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


## ⛔ CORRECTED 2026-08-30 (seat13) — these 4 are NOT genuinely convertible; this heading was wrong

**They exit cleanly, but do NOT match the real oracle** — they matched only a self-referential
`.expected` sidecar pinned from SCRIP's own prior output, which is not the same claim. Verified directly
against this project's own sanctioned oracle invocation (`corpus_suite_harness.py`'s `resolve_oracle_bin`
for `--lang prolog`: `swipl -q -g halt`, exactly what `capture-oracle-refs` would run):

- `rung15_abolish_abolish_existing.pl` — scrip `gone` rc=0; oracle **empty** rc=0 (main never runs under
  `-g halt`; even with `main` called explicitly, real Prolog raises `existence_error` after `abolish/1`
  where SCRIP silently falls through — see the DEFERRED section below, this is a genuine oracle-diff)
- `rung15_abolish_abolish_one_of_two.pl` — scrip `cat_gone|tweety|polly` rc=1; oracle empty rc=0, same cause
- `rung15_abolish_abolish_then_query_fail.pl` — scrip `no` rc=0; oracle empty rc=0, same cause
- `rung22_write_canonical_write_canonical_list.pl` — scrip `'.'(a,'.'(b,[]))` rc=0; oracle `[a,b]` rc=0 —
  confirmed under the oracle's own `:- initialization(main)` (fires at load regardless of `-g halt`), so
  this is not a main-invocation artifact: a real `write_canonical/1` list-notation divergence

A prior pass (commit `bbcf9259c`, mid-rebase when this correction was made) absorbed these 4 into
`ALL.csv`/`ALL.pl`/`ALL.ref` and deleted the loose copies on the strength of the `.expected` sidecar
check alone, without re-running `capture-oracle-refs` against the live oracle. That would have pinned
SCRIP's own bugs into the master suite as the "expected" answer — the one outcome a consolidation must
never produce (this file's own words, below). Reverted before landing; the 4 loose files stay loose and
are now properly declared under the two `## DEFERRED` headings below, which is where the real ownership
already lived — this heading was the only place still calling them convertible.

## One needs the grading convention, not a fix — prose, inert to the gate

- `rung10_programs_puzzle_05.pl` — rc=1, and **no `.ref` exists**. hq_C ruled (via seat03) that rc=1 is
  CORRECT: `main` takes the top-level-goal role, so a failure-driven loop with no fallback clause exits 1 by
  design (ARCH-LANGUAGES.md § ENTRY-POINT CONVENTION). Grade stdout against the oracle, rc against a
  per-family declared expectation in the `.ref`. Its 19 `rung10_programs_puzzle_*` siblings all crash and are
  deferred above; the same convention applies to them once PZ-4 clears.

## Provenance of the counts

49 loose-but-undeclared = 32 crash + 11 generator-resume-cell + 1 existence-error + 4 oracle-diff (⛔
corrected 2026-08-30, seat13: was miscounted as "convertible" — see the correction above) + 1 no-ref.
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
