# Archived Pascal debug scratch (moved 2026-08-27, tests-consolidate-pascal)

These 22 files were found directly under `corpus/tests/pascal/` with no `.ref` sibling, not
mentioned in `packages/pascal/README.md`'s file table (the documented Pascal-P4 import), and not
cited as a needed witness by any open Pascal task row at the time of the move (`pascal-m4-registered-
dispatch-segv`, `pascal-uplevel-nested-proc-hang` — checked directly; neither names any of these).

21 of them (`pcom_dbg.pas`, `pcom_diag1-4.pas`, `pcom_eq.pas`, `pcom_gtest.pas`, `pcom_htest.pas`,
`pcom_pre.pas`, `pcom_root.pas`, `pcom_root2.pas`, `pcom_sdtest.pas`, `pcom_trace.pas`,
`pcom_trace2-9.pas`) are near-duplicate ~4000-line copies of `packages/pascal/pcom.pas`, named in
the classic ASM-DIFF-FIRST bisection-witness shape (trace/diag/dbg/eq/gtest/htest/sdtest/root/pre
variants). `git log` shows no separate authorship trail distinguishing them from the investigation
that produced `FINDING-2026-08-27-hq_C-the-pascal-alpha-link-failure-...md` (root-caused and CURED,
SCRIP `81b50c3b`) — they are the most likely leftover scratch copies from that hunt, or a sibling
one, never cleaned up.

The 22nd, `chararr_probe.pas`, is a small (17-line) standalone probe, also NOREF, also undocumented,
most likely a minimal reproduction from the char-array/alpha-string investigation now described in
`GOAL-PASCAL-100.md`'s `pas_alpha_wrap` architecture notes.

None of this is deleted — moved here, out of `tests/pascal/` (which `tests-consolidate-pascal`'s own
DONE-WHEN requires clear of loose `.pas` files), pending a human or a dedicated follow-up row's
decision on final disposition (keep for reference vs. delete). Flagged via
`s4e_msg.sh ask tests-consolidate-pascal-pcom-debug-scratch-disposition`.
