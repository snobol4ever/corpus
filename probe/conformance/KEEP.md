# KEEP.md — probe/conformance

Per `probe-consolidate-conformance` (parent: `corpus-suites-consolidation`). 92 of the original 147
witnesses converted into `corpus/tests/snobol4/probe/conformance.{sno,ref}` (2026-08-27/28, see that
task's LEDGER for full receipts). The 55 below stay loose, deliberately, for one of two reasons.

Ground truth for both categories was measured fresh this session: every `.sno` here was run through
`scrip` (m3 **and** m4) and compared — both stdout text and exit code — against a live run of the
correctness oracle (`/home/resources/x64/bin/sbl -bf`, resolved via `scripts/lib_oracle_flags.sh`,
never a second copy of the flag rules). `corpus_suite_harness.py capture-oracle-refs` is the tool;
`bash scripts/test_conformance_spitbol_manual.sh` re-runs the same comparison via `test_one_witness.sh`
if anyone wants a second instrument. No hand-transcription — every verdict below is a fresh execution,
not carried over from the wave 1/2 findings (which are 4 days stale and already disagree with today's
tree on several of these: e.g. `n01_end_label` and `k14_stno_line` were DIVERGE in wave 1/2, AGREE now).

## Category A — still diverges from the live oracle (17)

These are real, live conformance gaps. Converting a currently-wrong witness would either freeze
today's bug as tomorrow's "expected" (corrupting the regression value of the suite) or simply be
refused by the harness's own byte-equal-or-no-delete law (`convert_one()` requires the original to be
green in every requested mode before it will even attempt a join). Left exactly as-is, unmoved,
un-renamed, so `test_one_witness.sh <file>` and any task file naming this path keep working.

| file | owning queue row(s) |
|---|---|
| f09_apply.sno | conform-local-opsyn-m4-empty |
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
| k09_file.sno | conform-file-keyword-empty |
| k10_fnclevel.sno | conform-fnclevel-not-tracked |
| k11_lastfile_lastline_lastno.sno | kw-missing-4 (RE-CITED hq_C 2026-08-27 — was conform-line-lastline-crash; red because &LASTFILE is unimplemented, not a line/lastline crash) |
| k30_lastfile_only.sno | kw-missing-4 (RE-CITED hq_C 2026-08-27 — was conform-line-lastline-crash; red because &LASTFILE is unimplemented) |
| u03_question.sno | conform-unary-interrog-gz5-gap |

## Category B — agrees with the oracle today, but a currently-existing task file cites this exact
## filename by name (38)

Reclassifying "is this bug still open" is a correctness verdict, not a file-consolidation decision —
RULES.md's MEASURE AND CURE section reserves a wrong-ANSWER verdict to hq_C. So these stay loose even
though today's measurement says they'd convert cleanly, pending whoever owns the citing row confirming
it's actually closeable. **Many of these look stale/already-fixed** (see the non-blocking finding sent
to hq_C/ceo alongside this batch) — that is an observation for the row owner to confirm, not something
this row decided unilaterally by moving the file out from under an open citation.

| file | citing task file(s) |
|---|---|
| b01_assign.sno | conform-unload-noop (control witness, not the bug itself) |
| f01_array.sno | conformance-sweep-spitbol-manual |
| f04_rsort.sno | conform-rsort-sort-array-noop |
| f05_sort.sno | conform-rsort-sort-array-noop |
| f06_table.sno | conform-table-default-arg-ignored |
| f10_arg.sno | conform-local-opsyn-m4-empty |
| f13_local.sno | conform-local-opsyn-m4-empty |
| f14_opsyn.sno | conform-local-opsyn-m4-empty, conform-opsyn-operator-rebind-gz5-fatal, conform-unary-interrog-gz5-gap |
| f16_backspace.sno | conform-io-four-functions-unimplemented |
| f17_detach.sno | conform-io-four-functions-unimplemented |
| f18_eject.sno | conform-io-four-functions-unimplemented |
| f19_endfile.sno | conform-io-write-read-same-run-empty |
| f20_input.sno | conform-io-write-read-same-run-empty |
| f22_rewind.sno | conform-io-four-functions-unimplemented |
| f24_clear.sno | conform-clear-exclusion-ignored |
| f30_date.sno | conform-date-format-wrong-length |
| f51_copy.sno | conform-copy-table-aliases |
| f52_copy_table_independence.sno | conform-copy-table-aliases |
| f57_fence.sno | conform-amp-abort-fence-broken |
| f67_setexit.sno | conform-setexit-noop |
| f71_field.sno | conform-field-never-succeeds |
| k01_amp_abort.sno | conform-amp-abort-fence-broken |
| k02_amp_arb.sno | conform-amp-abort-fence-broken |
| k03_amp_bal.sno | conform-amp-abort-fence-broken |
| k04_amp_fail.sno | conform-amp-abort-fence-broken |
| k05_amp_fence.sno | conform-amp-abort-fence-broken |
| k06_amp_rem.sno | conform-amp-abort-fence-broken |
| k07_amp_succeed.sno | conform-amp-abort-fence-broken |
| k12_rtntype.sno | conform-rtntype-not-tracked |
| k13_stcount.sno | conform-rtntype-not-tracked |
| k14_stno_line.sno | conform-line-lastline-crash, kw-missing-4 |
| k31_line_lastline_gaps.sno | conform-line-lastline-crash |
| n01_end_label.sno | conform-end-label-ignored |
| n07_nreturn.sno | conform-rtntype-not-tracked, nreturn-by-name-value-broken, snocone-returns-codegen |
| p01_abort.sno | conform-amp-abort-fence-broken (control witness, not the bug itself) |
| p05_fence.sno | conform-amp-abort-fence-broken (control witness, not the bug itself) |
| u07_asterisk_defer.sno | conform-defer-tab-span-crash |
| w02_case.sno | conform-case-keyword-mismatch |

## Re-running this classification

`python3 SCRIP/scripts/corpus_suite_harness.py capture-oracle-refs corpus/probe/conformance --modes m3,m4`
writes a `.ref` for every currently-green `.sno` lacking one (never overwrites without `--force`) and
prints a RED/GREEN verdict for each — re-run it fresh rather than trusting this file's table from memory,
per this whole project's standing rule that fast-moving trees make yesterday's board stale within hours.

---

## ⭐ hq_C RECLASSIFICATION RULING — 2026-08-27 (ceo-routed: "the 38 agree-today-but-cited witnesses are YOUR reclassification call")

**Measured at SCRIP `4ddea506`, `make pristine` `-O0`, oracle `sbl -bf` via `test_one_witness.sh` (m3 AND m4, text AND exit code).**

seat04 correctly held all 38 Category-B witnesses back rather than converting them on their own green measurement. That was the right call and this ruling is the answer they asked for.

**METHOD — and the trap in it, which fired, TWICE, in opposite directions.** The obvious method is *run each cited row's own DONE-WHEN*: a row's own criterion is the row's own definition of cured, so this is cheap, automatable and not a matter of opinion. Of the **28** distinct `conform-*` rows cited from this file, **16 pass their own DONE-WHEN and 12 still fail.**

⛔ **That method is not sufficient on its own, and cross-checking it against this file's citation table is what showed why.** `conform-line-lastline-crash` passes its DONE-WHEN (two witnesses, `k14_stno_line` and `k31_line_lastline_gaps`, both green) while two further witnesses this file cited to it, `k11_lastfile_lastline_lastno.sno` and `k30_lastfile_only.sno`, still diverge in both modes. ⭐ **A row's own DONE-WHEN is evidence about that DONE-WHEN's witnesses, never about the row** — a criterion that never executes a witness cannot report that the witness is red.

⛔⛔ **BUT THE FIRST CONCLUSION DRAWN FROM THAT — "therefore the row is OPEN" — WAS WRONG, AND IS CORRECTED HERE RATHER THAN QUIETLY DELETED.** Reading the failure TEXT instead of stopping at the red: k30 dies with `** Error 342 ... &constant read before its one-time assignment: &LASTFILE`. **k11 and k30 are `&LASTFILE` witnesses.** They are red because `&FILE`/`&LASTFILE` are UNIMPLEMENTED — the scope of **`kw-missing-4`**, whose own DONE-WHEN already names k30 and k11 explicitly, and for which Lon's global grant landed in-chat on 2026-08-27. They were never `conform-line-lastline-crash`'s to fix. **The defect was in THIS FILE'S CITATION, not in that row's criterion.** Both entries are re-cited above; that row's DONE-WHEN is restored to k14+k31 and it is closable.

⭐ **The sharpened lesson, which is the durable one:** a disagreement between a criterion and an independently-built citation table is real information, and finding it is what the cross-check is for. **But it has THREE possible causes, not one** — the criterion is too narrow, the witness is genuinely red for that row, or **the citation is misattributed.** Collapsing three into one and taking the pessimistic branch is how a correct measurement produces a wrong verdict. ⛔ **A red witness is not evidence until you have read WHY it is red.** "It diverges" names a symptom; attributing a symptom to a row is precisely the transcription step where provenance dies (`RULES.md:105`).

**THE RULING — release requires BOTH halves, never either alone:**
1. the witness itself is green today against the oracle, in **both** modes, text and rc; **and**
2. its citing row passes its own DONE-WHEN.

| disposition | count | action |
|---|---|---|
| **RELEASED for conversion** | **38** | both halves hold — convert these in the next `probe-consolidate-conformance` batch |
| **STAY HELD** | **3** | `k11_lastfile_lastline_lastno.sno`, `k30_lastfile_only.sno` — RE-CITED to `kw-missing-4`; red because `&LASTFILE` is unimplemented, and they convert when that row lands. `f09_apply.sno` — a GENUINE uncovered wrong answer (prints `7/3/8`, oracle `7/3/7`, no error) whose citing row `conform-local-opsyn-m4-empty` passes its own DONE-WHEN; that row needs its criterion widened or the witness re-cited, and it is the one case where the too-narrow-criterion reading does hold |
| Category A, still diverging | 17 | unchanged — open-bug evidence, stay standalone |

✅ **`conform-line-lastline-crash` IS CLOSABLE** — DONE-WHEN restored to k14+k31 (ceo's narrowing was substantively right), verified rc=0. It was the one cited row still carrying a live `QUEUE.tsv` row; the other 15 cured rows had already been swept out (LAW 4 — the queue is a dispatch buffer, not a memory), so their task files are the record.

⛔ **`f09_apply.sno` is the one genuine instance of the too-narrow-criterion shape.** It cites `conform-local-opsyn-m4-empty`, that row passes its own DONE-WHEN, and `f09_apply` prints `7/3/8` against the oracle's `7/3/7` — a silent wrong answer, no error text, nothing else claiming it. Widen that row's DONE-WHEN or re-cite the witness before closing it.

**Re-run this ruling** (it is falsifiable, not asserted):
```bash
cd "$S4E_HOME"          # per witness:
bash SCRIP/scripts/test_one_witness.sh corpus/probe/conformance/<stem>.sno chk | grep -q 'm3=PASS *m4=PASS'
                        # per row:
dw=$(grep -m1 '^DONE-WHEN: ' /home/resources/postoffice/tasks/<row>.task.md | sed 's/^DONE-WHEN: //'); eval "$dw"
```
