# KEEP.md — probe/callout

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

Neither witness converted. `claws5_call.sno` is oversized; `claws5_cap.sno` is a **real,
live correctness defect** found while investigating why it wasn't green, not routine KEEP
noise -- flagged clearly rather than filed away as "output mismatch".

`claws5_cap.sno` is a timing-harness benchmark (`-INCLUDE '../../benchmarks/snobol4/harness.inc'`)
whose `.ref` pins only the correctness-relevant `check:` line (the timing lines that follow are
expected to vary and aren't part of the oracle). But the `check:` value itself is WRONG, not
just the variable timing lines:
```
expected: check: 66757
actual:   check: 0
```
That rules out the "benchmark timing noise" explanation seen elsewhere in this batch (see
`probe/table_nested/KEEP.md` for the contrasting case where only timing lines differed and
`check:` matched) -- this is a genuine functional defect, live as of 2026-08-27.

| file | lines | reason |
|---|---|---|
| claws5_call.sno | 42 | exceeds the 40-line suite-entry ceiling |
| claws5_cap.sno | 35 | REAL DEFECT: check: 0 vs expected check: 66757 (m3 and m4 both) -- not a size exclusion |
