# earn0 — probe consolidation status

⛔ **`KEEP.md`-as-permanent-disposition is VOID for crosscheck/probe (Lon ruling 2026-08-28,
`corpus-crosscheck-probe-total-conversion.task.md`): "it matters not the number of lines... make
them all use the multi-liner or one-liner Python harness as appropriate."** What follows is a
STATUS record, not a policy keep — every file named here is either already converted, or blocked
on a specific, named, still-open mechanism, never held back by choice.

## Converted 2026-08-28 (probe-consolidate-m1-and-small, seat02)

`earn0_disc_arbno_star_fence_positive`/`_poisoned` and `s68_goto_control` are now entries 32-34 of
`tests/snobol4/probe/earn0.sno`/`.ref` (`s68_goto_control.ref` minted via
`corpus_suite_harness.py capture-oracle-refs`, m3+m4 oracle-agreeing). The two arbno-fence witnesses
were needed standalone by `scripts/test_arbno_witnesses.sh` (feeds a live `sbl` oracle comparison by
exact path) — re-pointed in the SAME commit to `corpus_suite_harness.py extract` the entry into its
own `$W` tempdir before use (verified: `bash scripts/test_arbno_witnesses.sh` all-PASS, including a
THIRD, pre-existing-broken reference to `crosscheck/patterns/181_pat_arbno_defer_tail_stressors.sno`
fixed the same way while in the file for the same reason).

## Known FLAKY — blocked on a harness gap, not a policy keep

`earn0_stored_capture.sno`/`.ref` — `scripts/board_earn0_set.sh`'s own header
comment documents it as the reason that script has a `REPEAT`/flaky-detector at
all: measured **3xPASS-shape/5xABORT** at a past HEAD. The suite harness's
`convert_one` runs each mode exactly once; a single lucky green run would
silently bake a coin-flip result into a "stable" suite entry and permanently
destroy the flakiness signal `board_earn0_set.sh` exists to catch. **Needed: a
repeat-for-flakiness check in the harness before this can convert at all** —
this is a harness capability gap, not a disposition choice; converting it as-is
would be actively wrong, not merely against a since-voided rule.

## Soft dependents (informational, not a reason to hold files back)

`board_denominators.sh`'s `d_earn0()` and `test_census_rbp_frames.sh`'s
`EARN2_DIRS` scan both glob `probe/earn0/*.sno` and degrade gracefully to a
smaller count as files convert. `board_denominators.sh` already carries its own
standing warning that this count moves across sessions ("HAS MOVED 16→20→28→...
at least 3x... NEVER cite from memory") — further movement here is expected, not
a regression.
