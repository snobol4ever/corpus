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

## ⛔⭐ s173 — THE ARMED ARM HAS A COUNTEREXAMPLE, AND IT IS A SILENT WRONG ANSWER

The `SCRIP_SPAN_FRAME=1` arm is **not a strict improvement**. Measured s173 at
SCRIP `1ac779ad` (pristine, RT_OPT `-O0`) while sweeping the flip: across a
13-suite 1589-row two-arm board the armed arm cures 13 rows (every one
`SIG11 → PASS`) and **breaks exactly one — `programs/snobol4/beauty_suite/TDump_driver.sno`**,
`PASS → nondeterministic wrong answer`, in BOTH media.

**Reproduce (the stack limit is load-bearing — this is why no earlier sweep saw it):**

```bash
cd corpus/programs/snobol4/beauty_suite
( ulimit -s unlimited; SCRIP_SPAN_FRAME=1 SNO_LIB=$PWD scrip --run TDump_driver.sno </dev/null )
```

| arm | `ulimit -s` 8 MB (default shell) | `ulimit -s unlimited` (what the scorecard sets) |
|---|---|---|
| default (OFF) | 10/10 PASS | 10/10 PASS |
| `SCRIP_SPAN_FRAME=1` | 10/10 PASS | **2/10 PASS, 8/10 WRONG** |

The wrong answer is a spurious match FAILURE at `TDump.sno:35`,
`t(x) POS(0) ANY(&UCASE &LCASE) (SPAN(digits &UCASE '_' &LCASE) | epsilon) RPOS(0)`
— **a scratch-cell leaf on an ALT arm, the exact shape this arm re-homes**. The
`:F` branch then quotes the name, so `(Name)` prints as `("Name")`: no crash, no
rc, just a different answer, and a different one run to run. The default arm is
stable in all 40 runs measured.

⛔ **Do not read the 6/8 above as "the arm is safe to flip."** A run-to-run
nondeterministic wrong answer is a worse class than the `rc=139` it cures, and
`ulimit -s unlimited` — the graded environment — is the only place it shows.
Minimising it failed inside the s173 time box: the bare statement, and the same
statement behind 30 and 80 padding assignments, are green in both arms, so the
missing ingredient is something else TDump carries (recursion, `$x` indirection,
TREE datatype, `GetLevel()`). Routed to HQ as the blocker on queue row
`span-frame-flip`; full ledger in
`FINDING-2026-08-19-s173-the-span-frame-arm-cures-thirteen-and-breaks-one.md`.

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
