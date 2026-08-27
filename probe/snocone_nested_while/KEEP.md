# KEEP.md — probe/snocone_nested_while

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

Nothing converted. Both files are Snocone (`.sc`), not SNOBOL4 -- this directory was included
in `CONSOLIDATE-SCOPE.lst` as a gradable test corpus, but its language is out of reach of
`corpus_suite_harness.py convert` (the SNOBOL4 one-line/banner path) and there is currently
**no `snocone` entry in `LANG_CONFIGS`** either (checked directly: `SCRIP/scripts/
corpus_suite_harness.py`'s `LANG_CONFIGS` table has `raku`/`rebus`/`pascal`/`prolog` only,
2026-08-27) -- mechanically impossible to convert with the existing tool, not merely
deprioritized.

Independently, Snocone is also under a standing, deliberate deferral for correctness reasons:
per `suite-harness-lang-configs.task.md`'s LEDGER (seat05/seat06/seat12, 2026-08-27), Snocone
conversion was explicitly NOT attempted even after LANG_CONFIGS support was in scope for other
languages, because `tests/snocone/parser-fixtures/` is badly drifted (PASS=8/FAIL=59 against
its pinned `.ref`) and Snocone correctness is actively in flux (a `while`/`for` loop
second-iteration bug, live as of that ledger). Converting now would risk baking a
currently-broken shape in as "expected". Left exactly as-is until both close.

| file | reason |
|---|---|
| nested_while_in_function.sc | Snocone -- no LANG_CONFIGS support; also deferred pending active correctness churn |
| nested_while_in_function_1deep_control.sc | Snocone -- no LANG_CONFIGS support; also deferred pending active correctness churn |

## Machine-readable exception list (DONE-WHEN mirror)

⛔ Mirrors `probe/conformance/KEEP.md`'s fix (SCRIP `f3dc4672a`) -- this row's DONE-WHEN
greps this section, not the prose above, for `- <path>` lines. Add a line here in the SAME
edit that adds a file to this KEEP.md; remove one here in the SAME edit that converts a file
out of it.

- probe/snocone_nested_while/nested_while_in_function_1deep_control.sc
- probe/snocone_nested_while/nested_while_in_function.sc
