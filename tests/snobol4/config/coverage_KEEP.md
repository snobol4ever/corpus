# KEEP.md — tests/snobol4/coverage

Per `corpus-crosscheck-probe-total-conversion` (LON-20260828 total conversion of `corpus/crosscheck/`).

## `coverage_sno_nodes.sno` — SNOBOL4 IR node-coverage fixture, not a runtime test

```snobol4
* coverage_sno_nodes.sno — exercises every SNOBOL4 IR node kind
* One touch per node: E_QLIT E_ILIT E_FLIT E_VART E_KW E_NULV
*   E_ADD E_SUB E_MPY E_DIV E_ASGN E_EXPOP
*   E_CONCAT E_SEQ E_OR E_NAM E_DOL E_ATP E_ARB E_ARBNO E_STAR E_INDR
*   E_FNC E_IDX E_NULV E_OPSYN E_MNS E_PLUS
```

**Not convertible into the `.sno`/`.ref` runtime scheme this task converts everything else into — for
two independent reasons, both verified directly, neither trusted from the prior KEEP.md's word alone
(2026-08-29):**

1. **SCRIP itself refuses to run it.** The file exercises pattern-assignment capture (`S ('hello' = CAPT)`)
   and other pattern shapes outside SCRIP's currently-landed subset:
   ```
   ./scrip --run tests/snobol4/coverage/coverage_sno_nodes.sno < /dev/null
     → FATAL lower_snobol4 (GZ#5 subset): pattern shape outside the SN4-PAT subset (LEN, literal, ANY,
       NOTANY, SPAN, BREAK, BREAKX, TAB, RTAB, POS, RPOS, REM, ARB). Pattern matching, EVAL and CODE are
       outside the landed subset (IR_MATCH_* family pending); see GOAL-SNOBOL4-BB.md.  rc=1
   ./scrip --dump-ast tests/snobol4/coverage/coverage_sno_nodes.sno < /dev/null
     → rc=0, parses and prints AST cleanly (14 top-level forms)
   ```
   It parses fine — the file is exactly what its header says, a hand-written touch of every IR node kind —
   but it cannot *execute* until `IR_MATCH_*` lands. This is a pending-feature witness, not a bug repro.

2. **The correctness oracle cannot produce a stable `.ref` for it, on two independent axes.** Ran
   `/home/resources/x64/bin/sbl -bf` against it 5 times, same binary, same file, back to back:
   ```
   run 1: rc=231   run 2: rc=231   run 3: rc=231   run 4: rc=231   run 5: rc=139 (Segmentation fault)
   ```
   The `rc=231` runs are byte-identical to each other in content (`ERROR 212 -- syntax error: value used
   where name is required`, at line 42 — the same `S ('hello' = CAPT)` construct SCRIP refuses, for a
   different reason: SPITBOL's parser rejects this specific capture shape outright), but even that
   "successful" exit **cannot pin a stable `.ref`** — the oracle's own error-report page embeds a wall-clock
   timestamp header (`x86-64  Sat Aug 29 05:51:43 2026`), so no two runs ever produce byte-identical output
   regardless of the crash. And a fifth of the time (measured, not assumed — this run mid-sequence), it
   segfaults instead. Genuinely nondeterministic, genuinely un-pinnable, on top of the mode-3 refusal above.

**This is the exact twin of `tests/prolog/coverage/coverage_pl_nodes.pl`** (KEEP.md there, corpus
`dfd27a182`) and of Icon's `jcon_lexer_dot_field.icn` — hq_C's 2026-08-28 ruling (this task's ledger)
treats the three as ONE class needing ONE home; the Prolog file's disposition (own `coverage/` dir
beside its language's suite tree, `KEEP.md`-documented, excluded from runtime grading) is the landed
precedent this file now mirrors. **This KEEP.md is this row's exit for now, not a claim that the
cross-language "one home" design is finished** — if/when a shared mechanism lands (an `.xfail`-style
sidecar was being discussed on this row for exactly this class), migrate this entry there instead of
updating it in place.

`corpus_coverage_manifest.tsv`'s `SUBTREE crosscheck/coverage` line is retired in the same commit set —
`tests/snobol4` is already its own top-level `GATED test_corpus_snobol4.sh` entry, and that harness's
crosscheck/suite globs never reach a lone `.sno` with no `.ref` sibling, so this file needs no new
manifest line; `test_gate_corpus_coverage_classified.sh` and `test_corpus_snobol4.sh` were both run
green before and after moving it, not assumed.

## Re-running this classification

Re-run `./scrip --run` vs `--dump-ast`, and the oracle 3–5×, before trusting "not convertible" — if a
future mode-3 change lands `IR_MATCH_*` for pattern-assignment capture, this stops being a pending-feature
case on axis 1 (axis 2, the oracle's own nondeterminism and timestamp header, is independent and would
still block a stable `.ref`). Also re-check `corpus-crosscheck-probe-total-conversion.task.md` for
whether the cross-language "one home" mechanism has landed — if so, migrate this file there instead of
leaving it here.
