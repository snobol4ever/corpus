# BB PROBE SUITE — 161 SNOBOL4 probes with pinned SPITBOL goldens

```
probes/<ID>.sno      the probe                      161
probes/<ID>.ref      SPITBOL golden (sbl -b)        161
gen_probes.py        regenerates families L A N X D F
gen_probes_fence.py  regenerates families G H
mkrefs.sh            regenerate / --verify the goldens
run_suite.sh         THE GATE — SCRIP vs .ref, XFAIL baseline
XFAIL.run            known-failing baseline, mode-3
XFAIL.compile        known-failing baseline, mode-4 (create with BASELINE=1 MODE=compile)
BB-PROBE-MATRIX.md   every probe with its pattern and oracle output
```

## Run it

```bash
bash mkrefs.sh --verify        # goldens still match live sbl?      exit 1 on drift
bash run_suite.sh              # the gate                           exit 1 on regression
bash run_suite.sh H            # one family
bash run_suite.sh H01          # one probe
MODE=compile bash run_suite.sh # mode-4 instead of mode-3
XFAIL=/dev/null bash run_suite.sh   # raw state, baseline ignored
BASELINE=1 bash run_suite.sh   # re-cut the baseline (do this deliberately, never casually)
```

## Why a pinned golden is legitimate here, unlike the `.s` artifacts

RULES.md forbids wiring `.s` byte-identity into any gate — correctly, because a `.s` is the
honest current compiler output and is *supposed* to churn while a BB family is being designed.
A `.ref` is the opposite kind of object: it is the output of **SPITBOL**, which is fixed. If a
`.ref` changes, either the `.sno` changed or the oracle changed, and both are events a human
must look at. So `.ref` byte-identity **is** a valid gate, and `mkrefs.sh --verify` exists to
prove the goldens have not drifted away from what `sbl -b` says today.

## Four outcomes, one of which is bad

| | meaning | action |
|---|---|---|
| ✅ PASS | matches its `.ref` | none |
| · xfail | fails, and `XFAIL` says so | known open defect |
| ⚠ **XPASS** | passes but is listed in `XFAIL` | **a fix landed — drop it from `XFAIL` in the same commit** |
| ❌ **REGRESSION** | fails and is *not* in `XFAIL` | **gate fails, exit 1** |

The XFAIL baseline is what makes this a gate rather than a wall. 46 probes fail at HEAD; a suite
that is permanently red gets ignored, and an identity gate on a migration selects for never
migrating (GATE POLICY, `GOAL-SNOBOL4-BB.md`). Baselining converts the suite into a **movement**
measure, which is what the acceptance law actually asks for. XPASS is deliberately loud: a
baseline nobody prunes decays into permission.

## Two hardening rules — do not "simplify" either

**Crash detection is a shell wait-status read, not `$?` and not stderr.** SCRIP installs a
SIGSEGV handler that swallows the fault and exits 0, and the shell's `Segmentation fault` text
is printed by the *parent* shell, never into the child's stderr. A probe whose output matches
but which **died** is a FAILURE here. 31 of the 46 baseline failures are exactly that shape:
byte-correct output, then a signal.

**Every probe prints.** Minimum `=S`/`=F` after the match, plus whatever the captures emit. A
silent probe cannot distinguish a correct match from a process that died before reaching the
print — and this is not hypothetical: the nine-row `bb_witness_ladder.sh` reports
`ARBNO not retried + outer cap` as ✅ because its programs *end* at the match statement, so the
corrupted stack is never used. The same pattern with one trailing statement (`N07`) aborts with
`*** stack smashing detected ***`, 5/5.

## Self-tests (re-run after editing either script)

```bash
XFAIL=/dev/null bash run_suite.sh H0 ; echo $?   # -> 1   baseline ignored, regressions reported
printf 'BOGUS\n' > probes/A01.ref
bash run_suite.sh A01              ; echo $?     # -> 1   corrupted golden caught
bash mkrefs.sh --verify            ; echo $?     # -> 1   drift caught
bash mkrefs.sh                                   # restores A01.ref from the oracle
bash mkrefs.sh --verify            ; echo $?     # -> 0
```

## Baseline at the time of writing

**95 pass · 46 xfail · 0 regression**, mode-3, SCRIP at the merged HEAD, gate defaults.

| family | what it covers | xfail |
|---|---|---|
| L (20) | leaf & sequence, no ARBNO/ALT | 4 |
| A (13) | alternation, incl. three arm-resume discriminators | **0** |
| N (31) | single-level ARBNO, capture in every position; N22-N31 = instance-count + body-kind rows | 5 |
| X (11) | nested ARBNO, manual's LIST and PAIRS, recursion | **0** |
| D (13) | deferred `*`, trivial upward to recursive patterns | 4 |
| F (6) | fence basics | 5 |
| G (27) | `FENCE` (nullary) sprinkled through every position | 8 |
| H (30) | `FENCE(P)` sprinkled through every position | 20 |

The 46 sort into three classes, and they are not one bug:

- **31 correct-output-then-crash** — semantics right, teardown wrong.
- **5 crash before any output** — `D10 N08 N09 N14 G14`.
- **3 wrong output, no crash** — the cheapest targets on the board: `D07`, `D08` (`LEN(*N)`
  deferred integer never evaluates), and `H01`.

## The single sharpest probe: H01

```
'ABCZ' ? POS(0) ('A' | 'AB') <fence?> ('CD' | 'C') 'Z' RPOS(0)
```

| probe | fence | oracle | SCRIP |
|---|---|---|---|
| `G00` | none | `=S` | `=S` ✅ |
| `G01` | `FENCE` | `=F` | `=F`, then SIGSEGV |
| `H01` | `FENCE(P)` | `=S` | **`=F`**, deterministic, exit 0 |

`FENCE` is a match-level **abort**; `FENCE(P)` is a local **cut** that still permits retrying
components *before* the fence (manual pp. 125–126, 208). SCRIP routes `FENCE(P)`'s failure edge
to abort, i.e. **it implements FENCE1 as FENCE0**. `H01`'s neighbours `G00`, `H05`, `H07` all
pass, so the bracket is as tight as this methodology gets, and there is no crash in the way.
