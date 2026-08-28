# KEEP.md — probe/fuzz

⛔⭐ **This is NOT a permanent-exception claim.** 20 of the previous 25 held-out witnesses converted
this session once `(D)` xfail/xpass support landed (SCRIP `3987d9ba`, hq_C) — see the task's LEDGER.
**These 5 stay loose for a DIFFERENT, NEWLY-FOUND reason, unrelated to `(D)`:** `corpus_suite_harness.py
convert` refused each because its own two internal measurements of the SAME file (once as "original",
once as a verbatim "candidate" copy in a fresh tmp dir) disagreed — `byte-equal-or-no-delete` correctly
refuses when it cannot even prove a source is stable against itself.

## Root cause, directly confirmed for one of the five (seat03, 2026-08-28) — not inferred, reproduced
`corpus_suite_harness.py`'s `compile_m4()` links the m4 binary **without `-no-pie`** — the identical
defect class already found+fixed in `test_crosscheck_sc_corpus_rung.sh` and flagged-not-fixed in
`test_corpus_snobol4.sh`'s own `compile_mode4()` (seat07, 2026-08-27). Built `fz_segv_09.sno` by hand
through the harness's exact steps (`scrip --compile` → `gcc -c` → `gcc ... -o t.bin`): the result is a
PIE binary (confirmed via `file`; linker prints `warning: creating DT_TEXTREL in a PIE`, the mechanism
`CLAUDE.md`/`RULES.md` already document for m4's absolute-address codegen). Run 5×: **4× SIGILL
(rc=132), 1× SIGSEGV (rc=139)** — the crash *signal* itself flips depending on ASLR's per-exec load
address. The identical `.o` re-linked with `-no-pie` (otherwise byte-identical build), run 5× the same
way: **5× SIGSEGV (rc=139)**, perfectly stable. `convert_one`'s `behaviorally_equal` for a CRASH kind
requires the exact signal to match (`self.returncode == other.returncode`) — against an m4 side this
unstable, no candidate could ever pass, mechanically, regardless of conversion method.

**Not this row's call to patch** — `corpus_suite_harness.py`'s `compile_m4()` is the ONE shared m4 path
for every language's conversion, not just `fuzz`; changing its link flags is a decision with fleet-wide
blast radius (same restraint seat07 already showed on `test_corpus_snobol4.sh`'s own gate). Flagged to
hq_C, not fixed here. Likely (not verified for the other four) that adding `-no-pie` there would let
some or all of the remaining 4 convert cleanly too.

⚠️ **Scope of what was actually verified:** the PIE/`-no-pie` mechanism above was reproduced directly
only for `fz_segv_09` (both of whose original verdicts were plain CRASH, making it the cleanest isolate
case). The other four below show the identical SYMPTOM — `convert_one` reports its two internal
measurements of the unmoved original disagreeing — which is consistent with the same mechanism (all
five are "blob"/"fence"/"defer"-style probes touching marginal/uninitialized memory the same way) but
was not individually deep-dived file by file; two of them (`fz_red_m1b_arbno_defer_blob`,
`fz_segv_24`) additionally involve an `m3` `HANG` side, which does not go through `compile_m4()` at
all, so a full explanation for those two may need a second mechanism (general ASLR of stack/heap/
shared-library placement affecting `libscrip_rt.so`, since `scrip` itself IS already built `-no-pie` —
not chased further here, out of this row's scope).

⚠️ **Caution for whoever reads the 20 newly-converted entries' `m4` verdicts as certain:** the same
PIE/ASLR mechanism could in principle affect any `m4`-mode CRASH verdict, not only these 5 — these 5
are simply the ones that happened to flip within this session's measurement. The 20 passed
`convert_one`'s own check plus a second independent re-validation pass (same scrutiny every other
converted family received) — not a guarantee against rare flakiness `-no-pie` would close off entirely.

## Machine-readable exception list (5 remaining)

- probe/fuzz/fz_red_m1b_arbno_defer_blob.sno
- probe/fuzz/fz_red_m4a_blob_alt_fence_defer.sno
- probe/fuzz/fz_red_m4b_blob_defer_fence.sno
- probe/fuzz/fz_segv_09.sno
- probe/fuzz/fz_segv_24.sno

## One measurement at exclusion time (seat03, 2026-08-28, SCRIP HEAD `f63d5cbd`, freshly rebuilt) — NOT stable, see above; do not treat as a fixed baseline

| file | m3 (one measurement) | m4 (one measurement) |
|---|---|---|
| fz_red_m1b_arbno_defer_blob | HANG (>10.0s) | CRASH signal 11 |
| fz_red_m4a_blob_alt_fence_defer | CRASH signal 4 | CRASH signal 11 |
| fz_red_m4b_blob_defer_fence | CRASH signal 11 | PASS |
| fz_segv_09 | CRASH signal 11 | CRASH signal 11 (directly measured 4×SIGILL/1×SIGSEGV across 5 runs of the harness's own build) |
| fz_segv_24 | HANG (>10.0s) | CRASH signal 11 |

## History (superseded — the `(D)` xfail/xpass reason, kept for provenance)

Original 25-file KEEP.md (seat03, earlier 2026-08-28 session) tied all 25 to the then-missing `(D)`
xfail/xpass suite-format gap. That gap landed (SCRIP `3987d9ba`, hq_C) and 20 of the 25 converted
cleanly on the next pass — see the task LEDGER for their names and the fresh verdicts that applied to
all 25 before this split. This file now covers only the 5 that survived, for the separate reason above.

## Re-running this classification

```
python3 SCRIP/scripts/corpus_suite_harness.py convert probe/fuzz /tmp/out.sno /tmp/out.ref --modes m3,m4
```
run from `SCRIP/`, with the 5 stems above passed as `--skip`, reproduces the split (the 34+20 already-
converted names no longer exist as loose files here — see `tests/snobol4/probe/fuzz.sno`). `git pull
--ff-only` all three repos and rebuild before trusting any verdict from it. If `corpus_suite_harness.py`'s
`compile_m4()` gains `-no-pie` before this is next picked up, re-measure all 5 fresh rather than assume
the table above still applies -- run each several times before trusting a single verdict, given the
whole point of this file is that a single measurement here is not reliable.

— seat03, 2026-08-28, task `probe-consolidate-fuzz`
