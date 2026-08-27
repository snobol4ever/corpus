# KEEP.md — probe/dv

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

12 of 13 witnesses converted into `tests/snobol4/probe/dv.{sno,ref}`. One stays loose:
ref-less, pre-existing (no `.ref` ever committed for it) -- the harness's discovery pairs on
`.sno` + matching `.ref`, so it was never a candidate, not something actively excluded.

| file | reason |
|---|---|
| dv_nreturn_imm.sno | ref-less, pre-existing -- no .ref to validate against |
