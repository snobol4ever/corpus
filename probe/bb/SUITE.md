# BB PROBE SUITE — 166 SNOBOL4 probes with pinned SPITBOL goldens

⭐ **CONVERTED TO SUITE FORMAT 2026-08-28** (probe-consolidate-bb, LON-20260828 total conversion): the
166 probes described below now live as one suite pair, `corpus/tests/snobol4/probe/bb_probes.sno`/`.ref`
(harness `SCRIP/scripts/corpus_suite_harness.py`), byte-equal-or-no-delete proven both directions, both
modes, against every one of the 166 loose files this doc used to describe. `gen_probes.py`,
`gen_probes_fence.py`, `run_suite.sh`, `mkrefs.sh`, `XFAIL.run`, `XFAIL.compile` retired with their
subject (the loose `probes/` directory); grade the suite with the harness directly:
`python3 SCRIP/scripts/corpus_suite_harness.py run corpus/tests/snobol4/probe/bb_probes.sno corpus/tests/snobol4/probe/bb_probes.ref`.
`bb_witness_ladder.sh` is unaffected (self-contained, no probes/ dependency) and still lives beside this
file. The rest of this document (contrast pairs, hardening rules, per-probe analysis) describes what each
probe TESTS and is unchanged by the move — only the "Run it" / "Baseline" sections below are retired.

⭐ **BASELINE RE-VERIFIED LIVE 2026-08-28, NOT the historical "46 xfail" below**: on a pristine build at
today's HEAD, all 166 entries **PASS** in both m3 and m4 — 0 xfail, 0 regression. The FENCE1/ARBNO-crash
defects this document was written around (H01, the 31 correct-output-then-crash class, etc.) have since
been fixed; `XFAIL.run`/`XFAIL.compile` were already empty on disk before this conversion, which is what
prompted the re-check (`.github/FINDING-2026-08-27-seat05-probe-bb-is-not-consolidation-material-...md`
flagged the "46 xfail" prose as stale-and-unconfirmed; this conversion is the confirmation). The rest of
this document's per-probe analysis (H01's FENCE1-as-FENCE0 routing, the three failure classes, etc.) is
kept as historical record of what was found and fixed, not as a current-defect list.

```
tests/snobol4/probe/bb_probes.sno   the 166 probes, suite format   (formerly probes/<ID>.sno)
tests/snobol4/probe/bb_probes.ref   SPITBOL goldens (sbl -b)       (formerly probes/<ID>.ref)
BB-PROBE-MATRIX.md   every probe with its pattern and oracle output (this directory, unmoved)
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

## Self-tests (retired 2026-08-28 with run_suite.sh/mkrefs.sh, see header note)

The self-test sequence this section described (deliberately corrupt `probes/A01.ref`, confirm
`run_suite.sh`/`mkrefs.sh --verify` both catch it, restore) exercised the two retired scripts directly and
has no suite-format equivalent — `corpus_suite_harness.py run` grades a static, already-trusted `.ref`; it
does not independently re-derive one from the oracle the way `mkrefs.sh --verify` did. If that
drift-detection capability is needed again, it belongs in the harness as a new command, not reinvented here.

## Baseline at the time of writing

**95 pass · 46 xfail · 0 regression**, mode-3, SCRIP at the merged HEAD, gate defaults.

| family | what it covers | xfail |
|---|---|---|
| L (20) | leaf & sequence, no ARBNO/ALT | 4 |
| A (13) | alternation, incl. three arm-resume discriminators | **0** |
| N (33) | single-level ARBNO, capture in every position; N22-N31 = instance-count + body-kind rows; N32-N33 = ALTERNATION and ANY bodies (the two legacy-route entrances the N22-N31 set missed: N32 enters via sq=0, every other row enters via k0=1) | 7 |
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
