# KEEP.md — standalone-keep exceptions in corpus/tests/rebus/

These 3 files are deliberately NOT converted into the tests/rebus one-liner/banner-block suite
(tests-consolidate-rebus, fan-out child of corpus-suites-consolidation). Not a line-count judgment
call under Lon's Size Ruling (corpus-suites-consolidation.task.md LEDGER, ceo·2026-08-28) — all
three are stdin-driven and/or carry an open, separately-tracked correctness bug. Converting one
would mean either inventing a stdin-input suite format the SNOBOL4 side already ruled out
permanently (hq_C: input-bearing tests stay loose, no parallel `family.input`), or converting a
program whose expected behavior isn't settled yet.

- binary_trees.reb (42 lines) — reads via `input`; RUNTIME HANGS on `repeat output :=
  bexp(btree(input))` at EOF. Tracked: rebus-corpus-100pct-broken.task.md item (a).
- syntax_exercise.reb (133 lines) — m3-vs-m4 divergence: m3 fails "Error 5 Undefined function
  or operation" at statement 0, m4 runs and prints the full expected trace. Tracked:
  rebus-corpus-100pct-broken.task.md item (b).
- word_count.reb (17 lines) — reads via `input`; runs rc=0 both modes but prints NOTHING on
  piped input. Tracked: rebus-corpus-100pct-broken.task.md item (c).

Revisit once rebus-corpus-100pct-broken.task.md closes each item. word_count at 17 lines would
likely become a normal suite candidate once its stdin question is resolved one way or the other;
the other two also exceed the ≤40-line one-liner/block threshold from Lon's Size Ruling regardless,
so standalone-keep is likely to stick for them even after the bugs close.
