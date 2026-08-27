# KEEP.md — probe/unload

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

3 of 4 witnesses converted into `tests/snobol4/probe/unload.{sno,ref}`. One stays loose:
ref-less, pre-existing (no `.ref` ever committed for it) -- the harness's discovery pairs on
`.sno` + matching `.ref`, so it was never a candidate, not something actively excluded.

| file | reason |
|---|---|
| un_self_exec.sno | ref-less, pre-existing -- no .ref to validate against |

## Machine-readable exception list (DONE-WHEN mirror)

⛔ Mirrors `probe/conformance/KEEP.md`'s fix (SCRIP `f3dc4672a`) -- this row's DONE-WHEN
greps this section, not the prose above, for `- <path>` lines. Add a line here in the SAME
edit that adds a file to this KEEP.md; remove one here in the SAME edit that converts a file
out of it.

- probe/unload/un_self_exec.sno
