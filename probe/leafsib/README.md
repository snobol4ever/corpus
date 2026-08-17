# probe/leafsib — the SCRATCH-CELL LEAF FAMILY witness set (s131)

Eight witnesses, one per member of the scratch-cell leaf family
(`SPAN BREAK BREAKX TAB RTAB REM ARB BAL`), each modelled **exactly** on the
witness s130 cured — `probe/clobarm/clob_altarm_arm2direct_red.sno` — so the
only variable across the set is the leaf op itself.

Shape: arm 1 (`'zz'`) fails outright, so arm 2's leaf runs on the FIRST pass
with NO backtrack and NO choice-record resume. Every witness is oracle-pinned
by live `x64/bin/sbl` to the SAME output, `id=iffoo`, so a divergence is never
a disagreement about what the program means.

Run: `bash SCRIP/scripts/probe_leafsib_measure.sh` (add `SCRIP_SPAN_FRAME=1`
for the framed arm). A witness is RED iff stdout differs from its `.ref` — a
SIGSEGV, an abort, a hang and a silent wrong answer all count the same.

## Measured s131 (SCRIP 1ecb68ec + slice 2, both media)

| arm | m3 | m4 |
|---|---|---|
| default (OFF) | 0/8 | 0/8 |
| `SCRIP_SPAN_FRAME=1` | 6/8 | 6/8 |

Default-arm baseline: SPAN/TAB/RTAB/REM/BREAK/BREAKX `rc=139` in BOTH media;
ARB/BAL `rc=0` with a SILENT WRONG ANSWER (`parse fail`). The whole family
diverges, so the defect is the family's and not one op's — and m3 ≡ m4
throughout, so it is medium-independent.

## The two that stay RED are DECLINED BY DESIGN, not unfixed

**`leafsib_bal`** — BAL is the one sibling measured to spend `+0/+4/AND +8`.
Under the 8-byte usable-window law (s130) `d=8` is the NEXT GRANULE'S FLOOR,
i.e. a neighbouring ARBNO/CAPTURE-SAVE/FENCE1 cell. Admitting BAL would hand a
neighbour's slot to BAL's third word — the same cross-owner overwrite this rung
exists to kill, moved indoors — and it would have been **INVISIBLE in this
witness**, which would have gone GREEN while corrupting a sibling class. BAL
joins `SPAN(*var)` in the 12B/16B wide class awaiting the two-consecutive-slot
grant (its own rung, its own blast radius).

**`leafsib_arb`** — a DIFFERENT DEFECT CLASS. Convicted by the IPC sync-step
monitor (`PARTICIPANTS="spl scr"`): at DIVERGE step 6 the oracle assigns
`I=STRING(5)='iffoo'` while SCRIP branches to `stno=5` — the match FAILS
OUTRIGHT, so ARB never resumes into the arm interior to extend from null and
**its cell is never re-entered**. Re-homing an address that is never reached
would be an unproven admission widening every frame for no measured green.
ARB belongs to the s120/s122/s123 arm-interior RESUME class. Its template
already routes through `LFC`/`LFCQ`, which on the declined arm returns the
legacy `FR()` spelling byte-identically, so that rung inherits the plumbing.

Both declines are PROVEN INERT: `--compile` output is byte-identical across
both killswitch arms for `leafsib_bal` and `leafsib_arb`.
