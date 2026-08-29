# KEEP.md — tests/prolog/coverage

Per `tests-consolidate-prolog` (parent: `corpus-suites-consolidation`).

## `coverage_pl_nodes.pl` — AST/IR node-coverage fixture, not a runtime test, ruled by hq_C 2026-08-28

```prolog
% coverage_pl_nodes.pl — exercises every Prolog IR node kind
% Covers: E_CLAUSE E_CHOICE E_UNIFY E_CUT E_FNC E_QLIT E_ILIT E_FLIT
%         E_VART E_ADD E_SUB E_MPY E_DIV E_TRAIL_MARK E_TRAIL_UNWIND
```

**Not a runtime test in the shape this task converts, and not convertible by fixing it either.**
The header names SCRIP-internal IR node-kind enum identifiers (`E_CLAUSE`, `E_UNIFY`, `E_CUT`, …),
not domain concepts — this file exists to exercise the parser/lowering pipeline's node-kind coverage,
graded by `--dump-ast`/`--dump-ir`, not by run-and-diff-stdout. It has bare top-level `:- Goal.`
directives (no `initialization(main,main)` wrapper, unlike every real runtime witness in this task),
which is why `--run` doesn't treat it as a program with an entry point.

**Verified directly, not trusted from the ruling alone (2026-08-29):**
```
./scrip --run corpus/tests/prolog/coverage/coverage_pl_nodes.pl < /dev/null   → [IBB] FATAL: mode-3 driver: main BB graph not found, rc=134
./scrip --dump-ast corpus/tests/prolog/coverage/coverage_pl_nodes.pl < /dev/null → rc=0, 32 lines of AST
```
Matches hq_C's measurement exactly — the rc=134 is the known general no-main mechanism (same as
`test_gate_end_only_program.sh`'s witnesses), not a defect in this file.

**hq_C's ruling (2026-08-28, this task's ledger):** "NOT a runtime test. Out of this row's scope. Do
not convert, do not fold into PZ-4... This is the exact twin of `crosscheck/coverage/coverage_sno_nodes.sno`...
Treat them as one class and give them one home; do not solve them differently in two rows."

**Cross-checked against the sibling row directly, not assumed current (2026-08-29):** an earlier pass
on this row (seat03) flagged that `coverage_sno_nodes.sno`'s actual disposition — nondeterministic
oracle SIGSEGV, `IR_MATCH_*` pending-feature witness — didn't obviously match this file's "no entry
point by design" story, and left the "one home" framing unresolved rather than guess. Reading
`corpus-crosscheck-probe-total-conversion.task.md` directly (not the earlier summary) shows that
question has since been settled there: *"`coverage_sno_nodes.sno` IS SETTLED — DO NOT RE-LITIGATE
IT... It is a pending-feature witness for `IR_MATCH_*`, not a test, and its Prolog/Icon twins
(`coverage_pl_nodes.pl`, `jcon_lexer_dot_field.icn`) are ONE class with ONE home."* Same row also
notes the eventual shared mechanism is still being designed there (an `.xfail`-style sidecar,
described as gating that row's own remaining conversions) — this KEEP.md is this row's exit for now,
not a claim that the cross-language "one home" design is finished.

⛔ **Not a permanent architectural ruling by this KEEP.md** — if/when the Snocone row's `.xfail`-sidecar
(or whatever mechanism it settles on) lands and is meant to span languages, this file should move to
that scheme and this entry should be deleted rather than updated, per the standing convention.

## Re-running this classification

Re-run `./scrip --run` vs `--dump-ast` on this file before trusting "no entry point" — if a future
mode-3 change gives bare top-level directives a real entry point, this stops being a no-main case.
Also re-check `corpus-crosscheck-probe-total-conversion.task.md` for whether the cross-language
"one home" mechanism has landed — if so, migrate this file there instead of leaving it here.
