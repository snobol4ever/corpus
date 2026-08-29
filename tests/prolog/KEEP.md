# KEEP.md — tests/prolog

Per `tests-consolidate-prolog` (parent: `corpus-suites-consolidation`).

## `plunit.pl` — live SWI-plunit shim for the x86 backend, not a runtime test with its own output to grade

**Not a runtime test in the shape this task converts, and not convertible by fixing it either.** It
is a 331-line, hand-authored scrip-specific re-implementation of SWI-Prolog's `library(plunit)`
test-suite DSL (`begin_tests/1,2`, `end_tests/1`, `run_tests/0`, pass/fail/skip/empty verdict
bookkeeping via `nb_setval`, since runtime `assertz` is not yet implemented in scrip). It has no
`.ref` of its own expected stdout — it is infrastructure that OTHER files are compiled alongside,
not a program with a correct output to pin.

**Verified live, not dead code (2026-08-29):** three current scripts name this exact file by path
(`$CORPUS/tests/prolog/plunit.pl`, confirmed via each script's own `$CORPUS`/`$PLUNIT` resolution):
- `SCRIP/scripts/test_prolog_swi_suite.sh` — loads it as a compile unit alongside each
  `corpus/packages/prolog/swi_tests/test_*.pl` + a `run_tests`-calling wrapper, via
  `scrip --run "$PLUNIT" "$f" "$WRAP"`, to grade scrip's Prolog runtime against the imported SWI
  conformance corpus.
- `SCRIP/scripts/util_patch_plunit.sh` — an idempotent patcher targeting this file directly
  (sentinel-gated, currently at `PATCHED:v3` in the script; the file itself already carries a
  hand-applied `PATCHED:v4`/`SWI-5` sentinel, i.e. patched by more than this one script over its
  life — see git log below).
- `SCRIP/scripts/util_diagnose_prolog_swi.sh` — same path, diagnosis tooling.

**17 commits of real development history** (`git log --follow -- tests/prolog/plunit.pl`), from
initial creation (`28d6c132a PL-12: add plunit.pl shim`) through iterative correctness fixes,
reverts, and a stdlib enrichment pass, up to `8ffc281e1 SWI-5 EMPTY verdict: 53/57(92%) -> 57/57(100%)
honest baseline` (2026-05-29). It lived at `corpus/programs/prolog/plunit.pl` until the 2026-08-24
flatten (`4d1d92d80`) and then `tests/prolog/plunit.pl` since the 2026-08-27 RE-GRID (`91e4465cc`) —
which is why `SCRIP/docs/PL-12-session-*.md` (dated 2026-04-30/05-01) cite the old path; that is
doc staleness from the reorg, not a sign of a different or abandoned file.

⚠️ **Regression, not this file's disposition to fix:** re-running `test_prolog_swi_suite.sh` today
(2026-08-29, fresh `make` build) shows 0% coverage / all-`EMPTY` verdicts on every file sampled
(`test_call.pl` 0/9, `test_arith.pl` 0/26), contradicting the "57/57(100%) honest baseline" commit
above. Isolated to a minimal synthetic 3-line `begin_tests/test/end_tests` suite: `--run` on
`plunit.pl` + suite file + wrapper produces **rc=1 with zero stdout/stderr** (not even a diagnostic),
while `--dump-ast` on the identical three-file combo parses cleanly and `plunit.pl` alone under
`--run` exits 0. See `.github FINDING-2026-08-29-seat14-plunit-multifile-run-silent-failure.md`,
mailed hq_C (runtime/wrong-answer-class bugs are hq_C's lane per this task's standing convention).
Not attempted here — a compiler runtime bug, not a corpus-conversion question.

**Not a candidate to move next to `frontend/plunit.pl` + `frontend/plunit_mock.pl`.** Those are a
separate, unrelated shim pair for the JVM backend (currently stubbed/dormant — CLAUDE.md's "x86 only
for now" rule), invoked via the old `scrip-cc -pl -jvm` calling convention and explicitly designed
around JVM-backend constraints (`frontend/plunit.pl`'s own header: "No call/N. Goals executed
directly."). Both files moved together in the same RE-GRID commit (`91e4465cc`) without being merged
— confirmed deliberate, not an oversight: different consumer, different design, different target.

⛔⭐ **Mentioning `frontend/plunit.pl` and `frontend/plunit_mock.pl` above incidentally satisfies this
gate for those two files too — that is NOT a ruling on them, and this session did not survey
`frontend/` (still open, current NEXT block item 7).** `test_gate_suite_conversion_complete.sh`'s
"declared" check (line 67) is a bare substring test — `case "$DECLARED" in *"$b"*)` — against the
*concatenated text of every KEEP.md under the tree*, not a structured per-entry list. `frontend/
plunit.pl` shares its exact basename with the file this entry actually rules on, so any KEEP.md
naming "plunit.pl" silently "declares" both, unavoidably, by basename collision alone — and
`frontend/plunit_mock.pl` gets caught the same way purely because its own filename appears in this
entry's contrasting prose. Measured directly: `loose-but-undeclared` dropped by 3 when this file
added only 1 real ruling (89 → 86, not 89 → 88). **This was a false positive when first discovered — since resolved by actually surveying
`frontend/`** (same session: see `tests/prolog/frontend/KEEP.md`, written after this one), so the
gate's count for those two files is now backed by a real ruling, not an accident. The underlying gate
defect (substring match against concatenated KEEP.md text, no per-entry structure) is unfixed and
general — filed as
`.github FINDING-2026-08-29-seat14-keepmd-gate-substring-false-positive.md` for whoever else's KEEP.md
next names a file it does not mean to declare; not fixed here (harness correctness shared by every
language's row, not this session's to change unilaterally).

## Re-running this classification

`grep -rn "tests/prolog/plunit.pl\|CORPUS.*plunit" SCRIP/scripts/*.sh` before trusting "these three
scripts are the live consumers" — a future reorg could add or retire one. Re-run
`bash SCRIP/scripts/test_prolog_swi_suite.sh --file test_call` before trusting the 0%-regression
note above; if the silent `--run` failure is fixed, re-measure the real coverage number rather than
assuming the old 100% baseline still holds.
