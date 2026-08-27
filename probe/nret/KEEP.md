# KEEP.md — probe/nret

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

12 of 13 witnesses converted into `tests/snobol4/probe/nret.{sno,ref}`. One stays loose --
not currently green, the harness's byte-equal-or-no-delete law refused it, `--skip`'d loud
and deliberate rather than silently dropped.

Live measurement, 2026-08-27 (this session), both m3 and m4:
```
nret_cond_nondeferred.sno
  m3: FAIL rc=1, output mismatch
  m4: SKIP, scrip --compile failed
```
Live defect, out of scope for this consolidation row.

| file | reason |
|---|---|
| nret_cond_nondeferred.sno | m3 output mismatch, m4 --compile fails |
