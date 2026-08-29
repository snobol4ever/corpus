# KEEP.md — tests/prolog/frontend

Per `tests-consolidate-prolog` (parent: `corpus-suites-consolidation`). Closes out the "genuinely
unsurveyed" status this directory carried in the task's NEXT block (item 7) — all 3 files it
contains are now accounted for.

## `plunit.pl` + `plunit_mock.pl` — a plunit shim pair for the JVM backend, currently unreachable, not test content

Same shape as the top-level `tests/prolog/plunit.pl` (see that directory's own `KEEP.md`): both are
hand-authored re-implementations of enough of SWI's `library(plunit)` DSL to run other test files
against them, not standalone programs with their own output to grade. `plunit_mock.pl`'s own header
spells out the intended use directly: `cat plunit_mock.pro test_foo.pl | scrip-cc -pl -jvm - -o
test_foo.j` — feed it a raw SWI test file, get a `.j` (JVM) unit out.

⚠️ **Unlike the top-level shim, this pair is not currently reachable at all, not merely untested.**
`scrip-cc` (the binary both files' docstrings invoke) no longer exists — verified (`which scrip-cc`,
`ls scrip-cc`: not found) — superseded by the unified `scrip` binary per the current architecture.
`./scrip --target=jvm <any file>` prints `[SMX] --target=jvm removed (Stack-Machine codegen removed)`
and exits 0 (verified 2026-08-29) — a clean stub, not a crash, matching CLAUDE.md's "x86 only for
now... stubbed = not-yet-built, never abandoned" rule for the JVM/JS/.NET/WASM ports. **Do not
delete**: this is pre-built scaffolding for a planned-but-dormant backend, the same standing category
as the port stubs themselves, not dead weight.

`plunit_mock.s` (2.1MB, orphaned — its `.pl` source's suite content lives on, but this specific `.s`
predates conversion/reorg churn) is the same "orphaned `.s` beside test-tree corpus, not beside a
benchmark or demo" class hq_C already reserved judgment on for `samples/` and `coverage/`'s orphaned
`.s` files (see this task's ledger, hq_P 2026-08-29) — reported here, not touched, same reservation.

**Not merged with the top-level `plunit.pl`** — different backend target (JVM vs the live x86 path),
different design (`frontend/plunit.pl`'s own header: "No call/N. Goals executed directly" — a
simplification the x86 shim does not make), moved together through the 2026-08-27 RE-GRID without
being unified, which this task's own investigation (top-level `KEEP.md`) confirmed was deliberate.

## Re-running this classification

`which scrip-cc` / `./scrip --target=jvm <file>` before trusting "currently unreachable" — if the
unified binary's JVM target is ever un-stubbed (CLAUDE.md's roadmap section), this pair stops being
dormant scaffolding and becomes real, testable JVM-backend infrastructure; re-evaluate whether it
still belongs here or should move once that lands.
