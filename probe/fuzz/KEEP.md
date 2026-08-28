# KEEP.md — probe/fuzz

Per `probe-consolidate-fuzz` (parent: `corpus-crosscheck-probe-total-conversion`, methodology inherited
from `corpus-suites-consolidation`). 34 of the original 59 witnesses are converted into
`corpus/tests/snobol4/probe/fuzz.{sno,ref}` (all 34 as one-line entries; 0 fell back to the multi-line
block form). **25 stay loose, for the same reason: each is a live SCRIP defect witness whose whole
purpose is to record a currently-wrong verdict (CRASH/HANG/FAIL) against the oracle's correct one.**

`corpus_suite_harness.py convert` refuses, by design, to convert any witness whose original file is not
currently green (`convert_one`: "original file itself is not green" — this is the SAME byte-equal-or-
no-delete law that produces `probe/conformance`'s Category A, not a special case invented for this
family). Forcing these 25 through would either be mechanically refused, or — if the format ever grows a
"convert while preserving a non-PASS verdict" mode — risk baking today's bug into the suite as tomorrow's
"expected", corrupting the regression value the fuzz corpus exists to carry. Left exactly as-is, unmoved,
un-renamed, so every `.github` FINDING/GOAL citation by bare filename keeps resolving.

⛔ **These 25 files are NOT the same set the file-header comments (`oracle=X scrip=Y`, `(rc134)`, etc.)
would suggest if read as current fact.** Those comments were written at authoring time (sessions s188–
s192, 2026-08-20, per `.github/GOAL-SNOBOL4-100.md`) and have drifted: e.g. `fz_diff_01` and `fz_segv_15`
carry RED-sounding names/comments but are **measured GREEN today** (converted, below) — 8 days of active
development moved the ground. The table below is a **fresh measurement**, not a transcription of the
comments — re-run it before trusting either this file or the header comments from memory.

## Machine-readable exception list

- probe/fuzz/fz_abort_05.sno
- probe/fuzz/fz_abort_fence1_stackcap.sno
- probe/fuzz/fz_diff_13.sno
- probe/fuzz/fz_hang_11.sno
- probe/fuzz/fz_min_nested_alt_red.sno
- probe/fuzz/fz_red_m1a_arbno_defer_fencenull.sno
- probe/fuzz/fz_red_m1b_arbno_defer_blob.sno
- probe/fuzz/fz_red_m2_breach_m3only.sno
- probe/fuzz/fz_red_m2_breach_m4only.sno
- probe/fuzz/fz_red_m2b_fence_cap_nullalt.sno
- probe/fuzz/fz_red_m2c_cap_around_defer.sno
- probe/fuzz/fz_red_m3_arbno_nullalt_gen.sno
- probe/fuzz/fz_red_m4a_blob_alt_fence_defer.sno
- probe/fuzz/fz_red_m4b_blob_defer_fence.sno
- probe/fuzz/fz_red_m4c_blob_defer_arbno_fence.sno
- probe/fuzz/fz_segv_02.sno
- probe/fuzz/fz_segv_03.sno
- probe/fuzz/fz_segv_09.sno
- probe/fuzz/fz_segv_14.sno
- probe/fuzz/fz_segv_17.sno
- probe/fuzz/fz_segv_18.sno
- probe/fuzz/fz_segv_19.sno
- probe/fuzz/fz_segv_23.sno
- probe/fuzz/fz_segv_24.sno
- probe/fuzz/fzr_13_alt_of_arbno.sno

## Fresh verdicts (seat03, 2026-08-28, SCRIP HEAD at this commit's parent, `corpus_suite_harness.py convert`, `--modes m3,m4`, `TIMEOUT=10`)

| file | m3 | m4 |
|---|---|---|
| fz_abort_05 | CRASH signal 11 | CRASH signal 11 |
| fz_abort_fence1_stackcap | CRASH signal 11 | FAIL (output mismatch) |
| fz_diff_13 | FAIL (output mismatch) | FAIL (output mismatch) |
| fz_hang_11 | HANG (>10.0s) | HANG (>10.0s) |
| fz_min_nested_alt_red | HANG (>10.0s) | HANG (>10.0s) |
| fz_red_m1a_arbno_defer_fencenull | CRASH signal 11 | CRASH signal 11 |
| fz_red_m1b_arbno_defer_blob | HANG (>10.0s) | CRASH signal 11 |
| fz_red_m2_breach_m3only | CRASH signal 11 | PASS |
| fz_red_m2_breach_m4only | CRASH signal 11 | CRASH signal 6 |
| fz_red_m2b_fence_cap_nullalt | CRASH signal 11 | CRASH signal 11 |
| fz_red_m2c_cap_around_defer | CRASH signal 11 | CRASH signal 4 |
| fz_red_m3_arbno_nullalt_gen | CRASH signal 11 | CRASH signal 11 |
| fz_red_m4a_blob_alt_fence_defer | CRASH signal 4 | CRASH signal 11 |
| fz_red_m4b_blob_defer_fence | CRASH signal 11 | CRASH signal 11 |
| fz_red_m4c_blob_defer_arbno_fence | CRASH signal 11 | CRASH signal 11 |
| fz_segv_02 | CRASH signal 11 | CRASH signal 11 |
| fz_segv_03 | CRASH signal 11 | CRASH signal 11 |
| fz_segv_09 | CRASH signal 11 | CRASH signal 11 |
| fz_segv_14 | CRASH signal 11 | CRASH signal 4 |
| fz_segv_17 | CRASH signal 11 | CRASH signal 11 |
| fz_segv_18 | CRASH signal 11 | CRASH signal 4 |
| fz_segv_19 | CRASH signal 11 | CRASH signal 11 |
| fz_segv_23 | CRASH signal 11 | CRASH signal 11 |
| fz_segv_24 | HANG (>10.0s) | CRASH signal 11 |
| fzr_13_alt_of_arbno | FAIL (output mismatch) | FAIL (output mismatch) |

⚠️ **`fz_red_m2_breach_m4only` is measured differently from its own checked-in premise.**
`.github/GOAL-SNOBOL4-100.md` (session s188-era) documents this pair as the mode-selective discriminator
`fz_red_m2_breach_m3only` (m3 SEGV / m4 correct) vs `fz_red_m2_breach_m4only` (**m3 correct** / m4 SEGV) —
"checked in for this alone." Measured today, `fz_red_m2_breach_m4only` CRASHES in **both** modes (m3
signal 11, m4 signal 6) — the m3 side no longer answers correctly. Not investigated further here (out of
this row's scope — this row moves files, it does not chase defects); flagged so whoever owns this
mechanism next does not inherit the stale "m3 correct" premise from memory.

⭐ **Two witnesses got extra scrutiny before being trusted GREEN and converted, because
`.github/GOAL-SNOBOL4-100.md` (session s189-era) names them as historically flaky
(`fz_segv_15`/`fz_segv_24`: "8 runs of ONE binary give 139…132…139 and 139 139 0 0 0 0 0 0"):**
`fz_segv_15` and `fz_abort_25` were each run standalone (`./scrip --run`, outside the harness) 6x/4x on
top of the harness's own 4 independent live checks (initial + one-line-join + two post-write
re-validation runs) — all clean, `rc=0`, identical output every time. `fz_segv_24` independently
measured RED today (HANG m3 / CRASH m4) and stayed loose regardless, so its historical flakiness needed
no further scrutiny to decide.

## Re-running this classification

```
python3 SCRIP/scripts/corpus_suite_harness.py convert probe/fuzz /tmp/out.sno /tmp/out.ref --modes m3,m4
```
run from `SCRIP/`, with the 25 stems above passed as `--skip`, reproduces the split; omit `--skip` to see
the full 59-witness census (writes nothing while any witness is red, per the harness's own byte-equal-or-
no-delete law). `git pull --ff-only` both repos and rebuild before trusting any verdict from it — a stale
`./scrip` binary produces false verdicts in both directions.

— seat03, 2026-08-28, task `probe-consolidate-fuzz`
