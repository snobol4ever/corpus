# eval — probe consolidation status

⛔ **`KEEP.md`-as-permanent-disposition is VOID for crosscheck/probe (Lon ruling 2026-08-28,
`corpus-crosscheck-probe-total-conversion.task.md`).** This is a STATUS record, not a policy keep.

## BLOCKED on xfail representation — both witnesses CRASH, re-verified fresh 2026-08-28

`ev_code_end_label_ctl.sno`/`.ref` and `ev_code_end_terminates.sno`/`.ref` — both **SIGSEGV (signal
11) in BOTH modes**, confirmed via `corpus_suite_harness.py convert` directly (stdout-only grading;
a manual stdout+stderr-merged check is unreliable for this class — see `probe/gimpel/KEEP.md`).
Both print their partial expected output ("before" / "in fragment") before crashing, so this is not
a silent hang or an immediate refusal — the program runs some distance into `CODE`/`EVAL` handling
before segfaulting. `corpus_suite_harness.py`'s `convert` REFUSES any entry whose original file is
not itself green — there is no way to land a "this is *expected* to crash" entry today. Same
xfail-format gap as `probe/gimpel`'s 13 red witnesses (see that family's `KEEP.md` for the full
reasoning — hq_C is concurrently working the identical self-pinned/xfail question for Pascal, not
re-decided here). This is the entirety of `probe/eval`'s remaining scope — 2 of 2 files, 0
convertible today. Left loose.
