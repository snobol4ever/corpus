# KEEP.md — probe/plz

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

Nothing converted. This directory (9 `.pl`/`.ref` pairs plus `test_pl_1.c` and
`test_pl_zeta_1.pl`) is **Prolog, not SNOBOL4**, swept into `CONSOLIDATE-SCOPE.lst` as a
gradable test corpus but out of reach of `corpus_suite_harness.py convert`'s SNOBOL4 path.

Unlike `probe/icn` (Icon) and `probe/snocone_*` (Snocone), Prolog **does** have a
`LANG_CONFIGS` entry (`"prolog": {"ext": ".pl", ..., "modes": "ast"}`, confirmed 2026-08-27)
-- so this is a smaller lift for a dedicated pass, not a hard tool gap. Not attempted this
session because (a) it needs the `convert-blocks --lang prolog` path, a materially different
mechanism (AST-diff grading, not the m3/m4 run-verdict ladder every other family in this
batch used) that deserves its own careful pass rather than an ad hoc extension mid-batch, and
(b) `suite-harness-lang-configs.task.md`'s LEDGER notes Prolog carries "its own independent
correctness-churn reasons (vacuous gate + open crashes)" as of 2026-08-27 -- worth confirming
that has settled before converting, the same caution Snocone's deferral was built on.

| files | reason |
|---|---|
| all 20 (9 .pl/.ref pairs + test_pl_1.c + test_pl_zeta_1.pl) | Prolog, not SNOBOL4 -- needs convert-blocks --lang prolog (AST mode), a dedicated pass; not a hard tool gap like Icon/Snocone |
