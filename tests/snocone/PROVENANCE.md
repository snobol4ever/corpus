# Ref provenance — `tests/snocone/parser.sc` / `.ref`

These 67 entries have no external oracle (there is no independent Snocone implementation to diff
against) — they are regression pins of **our own compiler's AST shape**, honest only when labeled
so. This file is that label. Re-run the checks cited below before trusting any count in it.

Governing chain: `snocone-parser-fixture-ast-drift-ruling.task.md` (the full LEDGER); ceo's
family-by-family ruling (same task file); hq_P ruling `ruling-option-b-scoped-revert-family-5-only`;
ceo's reconciliation + amendment (`re-snocone-reconciliation-ruled`, `re-family5-one-voice`).

## 38 entries — `SELF-PINNED-SCRIP-SHAPE`, families 1–4, REGENERATED

Every entry not listed under Family 5 below carries at least one of these four shapes, all
regenerated from the live compiler (corpus `94901334`) per ceo's ruling that they are deliberate
cross-frontend design, not drift:

| Family | Old (stale) shape | Current (pinned) shape |
|---|---|---|
| 1. assign-wrap | `(STMT :eq :subj X :repl Y)` | `(STMT :subj (TT_ASSIGN X Y))` |
| 2. augop-node | assign+binop desugar at parse time | dedicated `(TT_AUGOP X Y)` node |
| 3. n-ary→binary chain | `(TT_SUB a b c)` (one n-ary node) | `(TT_SUB (TT_SUB a b) c)` (nested binary) |
| 4. return-fusion | two statements: assign-to-result-var, then bare `RETURN` | one `(TT_RETURN expr)` node |

⛔ **CONDITION PER CEO'S RULING: cite the compiler sha that "deliberately moved" each shape, or
escalate the family. Reconstructed here, and it does NOT fit that frame — recorded exactly as
found, not guessed into the expected shape:**

**There is no migration commit, for any of the four, because none of the four shapes has ever been
anything else inside this repository.** `git log --oneline --follow` on
`src/frontend/snocone/snocone_parse.y` (SCRIP) returns exactly 5 commits in the file's entire
history: `713c581b` (**the repo's own initial commit**, "SCRIP fresh start from one4all working
tree", 2026-05-31T02:30:53Z) and four purely mechanical ones after it —
`4cd80c66` (comment-strip, commit message asserts "Behavior byte-identical"),
`113d1fb2`/`cf1f2961` (directory renames, `parser/`↔`frontend/`), `4730c074` (200-col style pass,
commit message asserts "OBJECT-IDENTICAL through a new regeneration Oracle"). `git log -S` for each
family's signature construct (`expr_binary(TT_ASSIGN`, `TT_AUGOP`, `TT_RETURN`) independently traces
every one of them to `713c581b` and nothing since. The grammar rule behind family 3
(`expr_binary(TT_SUB, $1, $3)`, `snocone_parse.y:432`) is ordinary yacc left-recursion, present the
same way since the same commit — there was never an n-ary `TT_SUB` node to migrate away from.

**The stale `.ref` fixtures predate SCRIP's own history.** Corpus `a0b3e603` ("SI-7: add 60 snocone
parser-fixtures .ref oracles for canonical AST shape") is dated 2026-05-11T22:09:58Z — **20 days
before** SCRIP's initial commit. Its own message says the shape was captured via `scrip --dump-ir`
"after SI-3/SI-4/SI-5 landed" — a different, pre-fresh-start tree, not any commit reachable from
SCRIP's history. **These fixtures were never validated against the current compiler until this row's
2026-08-27/28 investigation** — not a regression, a gap that was never closed.

**So the deliberateness evidence here is stronger than a migration sha would have been, not weaker:**
the shape hasn't drifted even once across the compiler's entire recorded life, and (seat06,
2026-08-28, this task's LEDGER) `TT_ASSIGN` is built via the same generic `expr_binary()` helper
every other binary operator uses and is shared verbatim across four frontends
(`raku.y`/`rebus_lower.c`/`pascal.y`/`snocone_parse.y`); `TT_AUGOP` is kept deliberately distinct
rather than desugared. Constancy-since-inception plus cross-frontend sharing is evidence the shape
was never anything else *by design*, which a single pivot commit would not have shown.

⭐ **A related, previously unnamed delta, flagged here for completeness rather than silently folded
into family 1:** old refs for `TT_WHILE`/`TT_FOR`/`TT_DO_WHILE` carried trailing synthetic
`_Ltop_`/`_Lend_`/`_Lcont_` label `QLIT`s and flat goto/label `STMT` sequences (SNOBOL4-style control
flow); the live compiler expresses the same control flow as nested `TT_PROGRAM`/`TT_STMT` structure
with no explicit labels. This is NOT one of the ceo-ruled 5 families and was not separately excluded
— it ships as part of the same regen because it was independently **runtime-verified**, not just
shape-compared: seat08 hand-ran `while(LT(i,10)){i=i+1;if(EQ(i,3)){continue;}if(EQ(i,7)){break;}
n=n+1;}` end to end and got `n=5, i=7`, matching hand-computed expectations exactly (task LEDGER,
2026-08-28). Label generation evidently moved to a later compiler phase; control-flow semantics are
unaffected.

## 29 entries — `SELF-PINNED-SCRIP-SHAPE`, family 5, EXCLUDED — marked ` XFAIL`, reason in `parser.xfail`

`break_for break_nested break_while continue_for continue_while do_simple do_with_stmt func_args
func_body func_def_call func_freturn func_nreturn func_one_assign func_simple func_three_args
func_two_funcs if_else if_else_if if_else_if_else if_else_if_else_if if_multi_body if_seq if_simple
switch_break switch_default switch_fallthrough switch_simple while_seq while_simple`

Every block-body statement in these 29 entries carries `(TT_ATTR :incl (TT_QLIT "1"))` and
`(TT_ATTR :src (TT_QLIT "..."))` in the live compiler's `--dump-ast` output — traced (task LEDGER)
to `stmt_ast.c`'s `stmt_src_slice()`, a SNOBOL4-era dump-printer helper that falls back to this
placeholder whenever a statement's line number doesn't resolve to a literal top-file slice, which is
unconditionally true for Snocone's per-block statement renumbering. ⛔ **EXCLUDED from the
family-1–4 ruling on purpose (ceo, hq_B's escalation): "zero evidence covers it."** Neither a
source-read of `stmt_src_slice()` (shows what the code DOES) nor runtime execution (asks the same
binary that produced the attribute — cannot distinguish correct output from a consistent bug) can
settle what it SHOULD do. That requires the **attr-introduction commit** — git archaeology, reserved
to `hq_C` — not yet examined.

**These 29 `.ref` entries are pinned to the PRE-regen shape for `:incl`/`:src` only** (i.e., those
two attribute lines are absent, matching corpus `a0b3e603`'s original content for that part of the
shape) — every other shape change in the same entry (assign-wrap, augop, return-fusion, loop
structuring) is left at the ratified current shape, since those are unrelated questions that happen
to share a block. This makes each of the 29 entries **genuinely fail** against the live compiler,
by design — banner-marked ` XFAIL` (`corpus_suite_harness.py`'s existing mechanism) so
`test_snocone_parser_fixtures.sh` buckets them as `ast_xfail`, not `ast_fail`, and a real regression
elsewhere stays visible instead of being lost in 29 already-known reds. Reason text lives in
`parser.xfail`, keyed by entry name (the harness's own convention — boolean in the banner, reason in
the sidecar, never fused).

⛔ **This is provisional, not a verdict.** When `hq_C` rules on the attr-introduction commit:
**if deliberate** — remove the ` XFAIL` suffix (both `parser.sc` and `parser.ref` banners, they must
match byte-for-byte), delete the entry's `parser.xfail` reason block, and re-add the `:incl`/`:src`
lines this file's sibling regen already produced once (git history has them, in the pre-XFAIL
`94901334`/`94296b33`-descended tree). **If not deliberate** — the compiler needs the fix, not the
ref; leave these 29 exactly as they are (red, known, XFAIL) until that lands, then re-derive from a
corrected `--dump-ast`.

## History

- corpus `94901334` — original combined regen (all 67, 0 excluded — pre-dates the family-5 exclusion
  ruling, superseded below for the 29).
- corpus `94296b33` — consolidated the 67 loose pairs into this `parser.sc`/`.ref` suite
  (`tests-consolidate-snocone`).
- corpus (this commit) — retroactive `SELF-PINNED-SCRIP-SHAPE` provenance (families 1–4) +
  family-5 revert to red-and-known via `XFAIL` + `parser.xfail` sidecar, per the reconciliation
  ruling chain above. DONE-WHEN for `snocone-parser-fixture-ast-drift-ruling` amended in the same
  landing (task file, not this repo) to read `ast_fail=` instead of the suite-conversion-obsoleted
  `FAIL=`.
