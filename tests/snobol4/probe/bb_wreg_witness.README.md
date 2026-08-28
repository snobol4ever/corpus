# WREG witness set — constructed s39c (Claude Sonnet 5), NOT part of the graded probe suite

⭐ **RELOCATED 2026-08-28** (probe-consolidate-bb, LON-20260828 total conversion): the one file this
README describes converted from loose `corpus/probe/bb/witness_wreg_s39/W01_stored_pattern_defer_len_capture.sno`+`.ref`
into `bb_wreg_witness.sno`/`.ref` beside this file (harness `corpus_suite_harness.py`, byte-equal-or-no-delete
proven both directions, both modes). ⭐ **ALSO NOW GREEN**: re-verified live during this conversion
(2026-08-28) — the entry now PASSES (`=S`, no crash) under a pristine build. The SIGSEGV this witness was
built to pin down has since been fixed; kept for its historical analysis, not as an open-defect tracker.

One minimal repro (`W01_stored_pattern_defer_len_capture.sno`), oracle-verified, for a previously
unrecorded SIGSEGV found while checking W-3's charter status. See `FINDING-2026-08-12r-…` in `.github`.

| File | Shape | want | SCRIP got (s39c) |
|------|-------|------|-----------|
| W01_stored_pattern_defer_len_capture | `P = LEN(*N) . X` (stored pattern var, deferred LEN, capture), then `S ? P` | =S | SIGSEGV (139) |

Minimal-pair siblings tried and NOT committed (all pass, kept only in the finding's prose for reference):
- Same pattern INLINED at the match site instead of stored in `P` first → passes.
- Same stored pattern WITHOUT the `. X` capture → passes.
- entry `D07` in `bb_probes.sno` (`POS(0) LEN(*N) . OUTPUT`, inlined, no stored var) → passes, pre-existing
  suite member (formerly `corpus/probe/bb/probes/D07.sno`).

So the trigger needs BOTH: (a) the DEFER-containing pattern stored in a variable before use, AND (b) a
capture (`.`) on the LEN. Not diagnosed to a root cause this session (no gdb source-level trace, only a
raw disassembly-address backtrace — see the finding). Not added to `run_suite.sh` (retired; see `bb_probes`).
