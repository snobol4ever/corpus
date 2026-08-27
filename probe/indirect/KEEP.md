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

## Machine-readable exception list (DONE-WHEN mirror)

⛔ Mirrors `probe/conformance/KEEP.md`'s fix (SCRIP `f3dc4672a`) -- this row's DONE-WHEN
greps this section, not the prose above, for `- <path>` lines. Add a line here in the SAME
edit that adds a file to this KEEP.md; remove one here in the SAME edit that converts a file
out of it.

- probe/indirect/indirect_name_boundary.sno
- probe/indirect/indirect_name_datatypes.sno
- probe/indirect/indirect_nul_prefix_name.sno
