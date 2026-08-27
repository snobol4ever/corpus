# KEEP.md — probe/preord

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

5 of 6 witnesses converted into `tests/snobol4/probe/preord.{sno,ref}`. One stays loose:
ref-less, pre-existing (no `.ref` ever committed for it) -- the harness's discovery pairs on
`.sno` + matching `.ref`, so it was never a candidate, not something actively excluded.

| file | reason |
|---|---|
| pre_unsafe_then_guard.sno | ref-less, pre-existing -- no .ref to validate against |
