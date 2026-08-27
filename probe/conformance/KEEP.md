# KEEP.md — probe/conformance

Per `probe-consolidate-conformance` (parent: `corpus-suites-consolidation`). 129 of the original 147
witnesses, plus 1 Lon added 2026-08-27 (`k32_file_keyword.sno`, 148 total), are converted into
`corpus/tests/snobol4/probe/conformance.{sno,ref}` (94 as of 2026-08-27 seat04/seat13, +35 this pass).
19 stay loose, for one of two different reasons below. Full LEDGER: the postoffice task file
`tasks/probe-consolidate-conformance.task.md` (not a git repo — the record lives there, not here).

Ground truth for both categories is measured fresh each pass: every `.sno` here is run through `scrip`
(m3 **and** m4) and compared — stdout text and exit code — against a live run of the correctness
oracle (`/home/resources/x64/bin/sbl -bf`, resolved via `scripts/lib_oracle_flags.sh`, never a second
copy of the flag rules).

## Machine-readable exception list (DONE-WHEN mirror)

⛔ **This section, not the tables below, is what the row's own `DONE-WHEN` actually parses**
(`sed -n 's/^- //p'` over this whole file, matched against `find probe/conformance -name '*.sno' ...`).
Add a line here in the SAME edit that adds a row to either table below, remove one here in the SAME
edit that converts a file out of both tables (`git rm`).

- probe/conformance/f09_apply.sno
- probe/conformance/f12_load.sno
- probe/conformance/f15_unload.sno
- probe/conformance/f21_output.sno
- probe/conformance/f25_collect.sno
- probe/conformance/f26_dump.sno
- probe/conformance/f52_dupl.sno
- probe/conformance/f65_exit.sno
- probe/conformance/f65b_exit_savefile.sno
- probe/conformance/f68_stoptr.sno
- probe/conformance/f69_trace.sno
- probe/conformance/f83_trim.sno
- probe/conformance/k09_file.sno
- probe/conformance/k10_fnclevel.sno
- probe/conformance/k11_lastfile_lastline_lastno.sno
- probe/conformance/k30_lastfile_only.sno
- probe/conformance/k31_line_lastline_gaps.sno
- probe/conformance/k32_file_keyword.sno
- probe/conformance/u03_question.sno

## Category A — still diverges from the live oracle (14)

Real, live conformance gaps. Converting a currently-wrong witness would either freeze today's bug as
tomorrow's "expected" (corrupting the regression value of the suite) or simply be refused by the
harness's own byte-equal-or-no-delete law. Left exactly as-is, unmoved, un-renamed, so
`test_one_witness.sh <file>` and any task file naming this path keep working.

| file | owning queue row(s) |
|---|---|
| f09_apply.sno | conform-local-opsyn-m4-empty — genuine uncovered wrong answer per hq_C's 2026-08-27 ruling (prints `7/3/8`, oracle `7/3/7`); that row's own DONE-WHEN passes without covering this witness, so it needs a widened criterion or a re-cite, not a fix here |
| f12_load.sno | conform-load-missing-error-validation, conform-unload-noop |
| f15_unload.sno | conform-unload-noop |
| f21_output.sno | conform-output-1arg-noop |
| f25_collect.sno | conform-collect-huge-not-failing |
| f26_dump.sno | conform-dump-function-noop |
| f52_dupl.sno | conform-dupl-pattern-overload-fails |
| f65_exit.sno | (none found — oracle itself exits via signal 11 on this witness; not a stable comparison either way) |
| f65b_exit_savefile.sno | conform-exit-savefile-unimplemented |
| f68_stoptr.sno | conform-trace-stoptr-inert |
| f69_trace.sno | conform-trace-stoptr-inert |
| f83_trim.sno | conform-trim-tabs-not-stripped |
| k10_fnclevel.sno | conform-fnclevel-not-tracked |
| u03_question.sno | conform-unary-interrog-gz5-gap |

⭐ **Left this table 2026-08-27, this pass:** `k09_file.sno`, `k11_lastfile_lastline_lastno.sno`,
`k30_lastfile_only.sno` — previously here, cited to `conform-file-keyword-empty`/`kw-missing-4`.
Fresh measurement (after a SCRIP pull landed Lon's `&FILE`/`&LASTFILE` keyword implementation) shows
all three now GREEN against the oracle. They did not move to the converted suite, though — see
Category C: they are green but cannot survive the conversion mechanism itself.

## Category B — agrees with the oracle, citing row closed (0 remaining, all converted)

**All 36 witnesses formerly listed here were RELEASED by hq_C's 2026-08-27 reclassification ruling**
(both halves required: witness green in both modes AND its citing row passes its own DONE-WHEN) **and
converted into the suite this pass.** `b01_assign.sno`/`p01_abort.sno`/`p05_fence.sno` converted as
control witnesses (cited only as siblings of `conform-amp-abort-fence-broken`, not the bug itself).
Full ruling text (the "a red witness has three possible causes, not one" lesson, and the k11/k30
re-citation to `kw-missing-4`) is git history on this file (commit `f3dc4672` and its parent) and is
copied into the task LEDGER rather than repeated here now that it's fully executed.

## Category C — agrees with the oracle, but cannot survive conversion at all (5)

**Structural, not a bug and not a citation question — do not retry via more careful joining.** These
witnesses read `&FILE`/`&LASTFILE` (the literal invocation path) or `&LINE`/`&LASTLINE`/`&STNO`
measured against the source's own exact physical line layout. The suite format cannot preserve either
property by construction: `convert`'s validation runs the file from a scratch-copy path different from
its committed location, and `corpus_suite_harness.py run`'s `run_suite_entry()` always extracts each
graded entry to its own fresh temp file under a **generated name** — so a converted `&FILE`/`&LASTFILE`
witness would read a temp path/name at every future grading, never its original identity. `k30`/`k32`
were already written defensively (`RPOS(0)` matching only the filename TAIL, not the full path — see
their own header comments) to survive being *moved*, but suite extraction *renames* the file too, which
that guard cannot survive. `k31`'s line/blank-line layout is destroyed by either join form (one-line
flattens it entirely; the block form does not promise byte-identical blank-line/comment placement).

Measured 2026-08-27: `capture-oracle-refs` reports all 5 GREEN standalone; `convert`'s own internal
byte-equal re-validation refuses to join any of them (2 as "original file itself is not green" once
read from a scratch path, 3 as "NEITHER form reproduced the original's behavior" once joined) — this
is the tool's own check catching it, not an assertion. Separately re-verified `k09`/`k11` are not
flaky (3/3 identical `test_one_witness.sh` PASS runs) — the mismatch is the captured `.ref`'s baked-in
path, never run-to-run non-determinism.

| file | why |
|---|---|
| k09_file.sno | `OUTPUT = &FILE` with no self-check; `.ref` bakes in the invoking path literally |
| k11_lastfile_lastline_lastno.sno | last line is bare `&LASTFILE`; same path-bake issue |
| k30_lastfile_only.sno | `RPOS(0)`-guarded against its own filename, but suite extraction renames the file, not just relocates it |
| k31_line_lastline_gaps.sno | tests `&LINE`/`&LASTLINE` against blank-line/comment placement neither join form preserves |
| k32_file_keyword.sno | Lon's 2026-08-27 addition (`kw-missing-4` STEP 4 witness); same `RPOS(0)`-vs-rename gap as k30 |

⭐ **Worth telling every sibling `probe-consolidate-*` row:** check for `&FILE`/`&LASTFILE`/`&LINE`/
`&STNO` witnesses before assuming a GREEN `capture-oracle-refs` verdict means convertible.
`capture-oracle-refs`'s in-place measurement cannot see this class; only `convert`'s own byte-equal
re-validation (or reasoning about the keyword's semantics up front) catches it.

## Re-running this classification

```
python3 SCRIP/scripts/corpus_suite_harness.py capture-oracle-refs probe/conformance --modes m3,m4
```
writes a `.ref` for every currently-green `.sno` lacking one (never overwrites without `--force`) and
prints a RED/GREEN verdict for each — re-run it fresh rather than trusting this file's tables from
memory, per this whole project's standing rule that fast-moving trees make yesterday's board stale
within hours. ⛔ **`git pull --ff-only` SCRIP and corpus, then `make pristine`, before trusting ANY
verdict from it** — a stale `./scrip` binary produces false REDs (seat13 hit exactly this on f04/f05).
