# `tests/snobol4/rtx_func_11/` — STANDALONE-KEEP: genuinely file-driven, not suite material

**Moved here from `tests/snobol4/probe/` by seat12, 2026-08-29**, under the `corpus-crosscheck-probe-total-conversion` clause-3 sweep. This is the RTX-FUNC-11 witness pair's SECOND relocation, not its first: seat06 (2026-08-29, same task) already moved it once, from `corpus/probe/` to `tests/snobol4/probe/`, per Lon's ruling that a genuinely file-driven test may stay standalone "marked in a KEEP.md beside it" rather than being banner-block-converted. That first hop satisfied the letter of the ruling but landed in the wrong place: `tests/snobol4/probe/` is exactly the directory `test_corpus_snobol4.sh`'s board scans **recursively** (`find "$SUITES/probe" -name '*.sno'`) for suite families, and a loose non-suite `.sno`/`.ref` pair dropped there is misread as a broken suite — the identical trap `tests/snobol4/gimpel_triage/KEEP.md` already documents and already gives the fix for.

## What broke, measured directly (not inferred from the gimpel_triage precedent alone)

None of these four files carry the suite banner format (`*---...--- N name`) — they are plain single-program `.sno`/`.ref` pairs. `corpus_suite_harness.py`'s `read_suite()` has no "whole file is one implicit entry" fallback: every non-banner line is read as its own one-line entry, each consuming one line of the `.ref`. A real program's line count almost always exceeds its output's line count, so the parser runs off the end of `.ref` almost immediately:

| file | harness `run` result before this move |
|---|---|
| `rtx11_dynvar_include.sno` | `ValueError: family.ref is shorter than family.sno at seq 2` |
| `rtx11_dynvar_inline.sno` | `ValueError: family.ref is shorter than family.sno at seq 2` |
| `rtx_func_11_include.sno` | `ValueError: family.ref is shorter than family.sno at seq 4` |
| `rtx_func_11_inline.sno` | `ValueError: family.ref is shorter than family.sno at seq 4` |

`test_corpus_snobol4.sh` catches the crash (stderr discarded, no `SUITE_BOARD` line on stdout) and correctly counts each as `MISSING` rather than silently grading a shrunken denominator — but `MISSING>0` is itself a hard `exit 2` refusal for the whole board (the INSTRUMENT LAWS' "a test that cannot measure REFUSES" rule), so all four were failing the blocking SNOBOL4 corpus gate for every session that ran it since the `tests/snobol4/probe/` landing, not merely sitting ungraded. Flagged by ceo's QA pass on this row (`## QA` entry, 2026-08-29) as three files; direct re-measurement here found the fourth (`rtx11_dynvar_include`) breaks identically and was undercounted.

## Why these can't be suite entries at all (unchanged from seat06's original reasoning)

`-INCLUDE` is the mechanism under test for the include arms — `rtx11_dynvar_include.sno` pulls `rtx11_dynvar.inc`, `rtx_func_11_include.sno` pulls `rtx_func_11_inc.sno`. Folding either into a banner-block suite entry would stop testing what the witness exists to test (a suite entry is one block inside one file; `corpus_suite_harness.py` has zero `-INCLUDE` handling, same gap `gimpel_triage/KEEP.md` documents). Each include arm is kept paired with its byte-identical inline control arm so the two stay directly diffable — that comparison is the point of the witness, same rationale as seat06's original placement, only the placement itself was wrong.

## Re-verified correct from this new location, both modes, both pairs

```
./scrip tests/snobol4/rtx_func_11/rtx11_dynvar_include.sno   < /dev/null   # mode 3
./scrip --compile ... && link && run                                      # mode 4
```
All four `.sno` files agree with their `.ref` in both scrip modes from the new path (bare bare-filename `-INCLUDE` targets resolve the same as they did at the previous location, since both halves of each pair moved together again).

⚠️ **Both pairs' own header comments still claim a live SIGSEGV** ("Oracle: clean. SCRIP m3/m4: SIGSEGV" / "this (-INCLUDE) arm SEGVs under SCRIP mode 3 and mode 4") that seat06 already found does not reproduce (re-verified against the live SPITBOL oracle and both scrip modes, 2026-08-29). Not re-investigated as a compiler question here either — carried forward as still-flagged-stale, not silently edited out of the header comments themselves.

## Consumers

**Zero scripts.** Repo-wide `grep -rl 'rtx_func_11\|rtx11_dynvar'` over `SCRIP/`, `corpus/` and `.github/` finds only two frozen historical citations, neither live:
- `.github/profile/s264-board/{list.probes_misc,results.tsv}` — a frozen historical board snapshot (same disposition already established for this row's `retry`/`fz` sweep: `grep -rl s264-board SCRIP/scripts/` is empty, nothing reads it).
- `.github/GOAL-SNOBOL4-100.md`'s R-3 scorecard cites `probe/rtx_func_11_include` by bare name as a carry-forward defect pointer — updated in the same commit as this move to the new path (GOAL clause (c), path-citation sweep).

## Declared keepers — all 10 files (4 graded pairs + 2 include fragments), kept as loose standalone witnesses

`rtx11_dynvar.inc` (include fragment, no `.ref`) · `rtx11_dynvar_include` · `rtx11_dynvar_inline` · `rtx_func_11_inc` (include fragment, no `.ref`) · `rtx_func_11_include` · `rtx_func_11_inline`

— seat12, 2026-08-29, task `corpus-crosscheck-probe-total-conversion`
