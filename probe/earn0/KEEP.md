# KEEP — files that stay loose, deliberately

Per this family's consolidation task (`probe-consolidate-m1-and-small`, GOAL text:
"Data inlines in the suite entries; ONLY genuinely stdin/file-driven tests stay
standalone, marked in a KEEP.md beside them").

## Known FLAKY — never offered to the one-shot converter

`earn0_stored_capture.sno`/`.ref` — `scripts/board_earn0_set.sh`'s own header
comment documents it as the reason that script has a `REPEAT`/flaky-detector at
all: measured **3xPASS-shape/5xABORT** at a past HEAD. The suite harness's
`convert_one` runs each mode exactly once; a single lucky green run would have
silently baked a coin-flip result into a "stable" suite entry and permanently
destroyed the flakiness signal `board_earn0_set.sh` exists to catch. Deliberately
excluded from the convert input rather than left to chance — this is a
methodology gap in the harness (no repeat-for-flakiness check), not something
`--skip`'s single-run "not green" reasoning captures.

## Needed standalone by a live-oracle comparison tool

`earn0_disc_arbno_star_fence_positive.sno`/`.ref`,
`earn0_disc_arbno_star_fence_poisoned.sno`/`.ref` — `scripts/test_arbno_witnesses.sh`
feeds each file directly to the live `sbl` oracle by exact path (`$CORPUS/probe/earn0/<name>.sno`),
side by side with `scrip`. It degrades gracefully if the files are gone (prints
`MISSING` rather than erroring), but that would silently drop these two witnesses
from a tool built specifically to compare them against the real oracle inline —
same shape as `probe/cn`'s gate lock, lower stakes. Left loose rather than
degrading that tool.

## Ref-less, pre-existing, not minted here

`s68_goto_control.sno` — no matching `.ref` exists (predates this task). Not
fabricating one; out of scope for this row.

## Soft dependents (informational, not a reason to hold files back)

`board_denominators.sh`'s `d_earn0()` and `test_census_rbp_frames.sh`'s
`EARN2_DIRS` scan both glob `probe/earn0/*.sno` and degrade gracefully to a
smaller count as files convert. `board_denominators.sh` already carries its own
standing warning that this count moves across sessions ("HAS MOVED 16→20→28→...
at least 3x... NEVER cite from memory") — further movement here is expected, not
a regression.
