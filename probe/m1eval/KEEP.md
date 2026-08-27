# KEEP.md — probe/m1eval

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

2 of 3 `.sno`/`.ref` witnesses converted into `tests/snobol4/probe/m1eval.{sno,ref}`. One
stays loose -- not currently green, `--skip`'d loud and deliberate rather than silently
dropped.

Live measurement, 2026-08-27 (this session), both m3 and m4:
```
m1e_eval_chained_defer_red.sno
  m3: FAIL rc=0, output mismatch
  m4: FAIL rc=0, output mismatch
```
Live defect, out of scope for this consolidation row.

⚠️ **Unresolved finding, not a KEEP ruling:** two more files live in this directory,
`beauty_assign_red.in` and `beauty_nullrhs_ctl.in`. Neither basename matches any `.sno` in
this directory or elsewhere searched (`grep -rl` across `probe/` and `SCRIP/` found nothing),
and none of this directory's three witnesses reference `INPUT` (they take no stdin), so
these are not stdin companions for anything here despite the `.in` extension convention used
elsewhere in this corpus. Contents look like SNOBOL4 program fragments in their own right
(`X = 1` / `END` and `X =` / `END`) rather than input data. Left untouched rather than
guessed at -- not deleted, not converted, not claimed as understood. Whoever next has
context on this family should resolve what these are before this directory is considered
fully triaged.

| file | reason |
|---|---|
| m1e_eval_chained_defer_red.sno | output mismatch both modes |
| beauty_assign_red.in | UNEXPLAINED -- orphaned, no matching .sno, no evident consumer |
| beauty_nullrhs_ctl.in | UNEXPLAINED -- orphaned, no matching .sno, no evident consumer |
