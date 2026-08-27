# KEEP.md — probe/indirect

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

1 of 4 witnesses converted into `tests/snobol4/probe/indirect.{sno,ref}`. Three stay loose:
two for size, one for a **real, live correctness defect**.

`indirect_nul_prefix_name.sno` — live measurement, 2026-08-27, m3:
```
expected:
  SIZE(Z)=256
  T1 ok via var
  T2 ok direct
  T3 ok nulprefix
  T4 ok nulmid
  END errlimit=100
actual:
  SIZE(Z)=256
  T1 ERR 0
  T2 ERR 0
  T3 ERR 0
  T4 ok nulmid
  END errlimit=100
```
3 of 4 sub-cases (T1/T2/T3) error where the witness expects them to succeed; only T4 (nulmid)
behaves as expected. Looks like a real gap in NUL-prefixed-name indirect-reference handling,
not a stale `.ref` or a benchmark-format artifact -- out of scope to fix here.

| file | lines | reason |
|---|---|---|
| indirect_name_datatypes.sno | 41 | exceeds the 40-line suite-entry ceiling |
| indirect_name_boundary.sno | 46 | exceeds the 40-line suite-entry ceiling |
| indirect_nul_prefix_name.sno | 22 | REAL DEFECT: T1/T2/T3 ERR where expected ok (m3) -- not a size exclusion |
