# KEEP.md — probe/redef

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

1 of 2 witnesses converted into `tests/snobol4/probe/redef.{sno,ref}`. One stays loose --
not currently green, `--skip`'d loud and deliberate rather than silently dropped.

Live measurement, 2026-08-27 (this session), both m3 and m4:
```
redef_lastwins.sno
  m3: FAIL rc=0, output mismatch
  m4: FAIL rc=0, output mismatch
```
Live defect, out of scope for this consolidation row.

| file | reason |
|---|---|
| redef_lastwins.sno | output mismatch both modes |

## Machine-readable exception list (DONE-WHEN mirror)

⛔ Mirrors `probe/conformance/KEEP.md`'s fix (SCRIP `f3dc4672a`) -- this row's DONE-WHEN
greps this section, not the prose above, for `- <path>` lines. Add a line here in the SAME
edit that adds a file to this KEEP.md; remove one here in the SAME edit that converts a file
out of it.

- probe/redef/redef_lastwins.sno
