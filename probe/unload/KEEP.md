# KEEP.md — probe/unload

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

3 of 4 witnesses converted into `tests/snobol4/probe/unload.{sno,ref}`. One stays loose:
ref-less, pre-existing (no `.ref` ever committed for it) -- the harness's discovery pairs on
`.sno` + matching `.ref`, so it was never a candidate, not something actively excluded.

| file | reason |
|---|---|
| un_self_exec.sno | ref-less, pre-existing -- no .ref to validate against |
