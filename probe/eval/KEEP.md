# eval — probe consolidation status

⛔ **`KEEP.md`-as-permanent-disposition is VOID for crosscheck/probe (Lon ruling 2026-08-28,
`corpus-crosscheck-probe-total-conversion.task.md`).** This is a STATUS record, not a policy keep.

## Converted 2026-08-28 (probe-consolidate-m1-and-small, seat02) — XFAIL, once the format landed

`ev_code_end_label_ctl.sno`/`.ref` and `ev_code_end_terminates.sno`/`.ref` — both **SIGSEGV (signal
11) in BOTH modes** — are now XFAIL entries 20-21 of `tests/snobol4/probe/eval.sno`/`.ref`, converted
after SCRIP commit `3987d9ba` landed XFAIL witness support (see `probe/gimpel/KEEP.md` for the full
mechanism). Both print their partial expected output ("before" / "in fragment") before crashing, so
this is not a silent hang or an immediate refusal — the program runs some distance into `CODE`/`EVAL`
handling before segfaulting; the XFAIL entry still asserts that exact partial-output-then-SIGSEGV
shape, both modes. `SUITE_BOARD`: 19 pass + 2 xfail, both modes, 0 xpass.

⚠️ **Converted via the harness's library functions directly (`convert_one`/`write_suite`), not the
`convert` CLI subcommand.** `convert` reprocesses (re-executes) every pre-existing entry in the
target family, and doing exactly that here corrupted an unrelated, already-green one-liner
(`ev_fn_beauty_shape`) into a bogus XFAIL block, reproducibly, twice — not a one-off flake (confirmed
by direct repeated harness calls: the underlying compile/run is 6/6 stable in isolation). Reported to
hq_C as a harness bug, not investigated further here (out of scope for a consolidation row). Appending
only the 2 new entries (the other 19 pass through `read_suite`→`write_suite` untouched, never
re-executed) sidesteps it — reconfirmed no duplicate/corrupted entries after writing.
