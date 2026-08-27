# KEEP.md — probe/fwctx

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

Nothing converted. The 2 `.sno`/`.ref` pairs here are both over Lon's 40-line suite-entry
ceiling; both verified green (m3, diffed by hand against their `.ref`) before ruling them a
pure size exclusion, not a defect. The other 15 files (`*.inc`) are shared `-INCLUDE`
dependencies these witnesses pull in, not test witnesses themselves -- not `.sno`/`.ref`,
not matched by this row's DONE-WHEN extension list, not touched.

| file | lines | reason |
|---|---|---|
| fwctx_conjunction.sno | 49 | exceeds the 40-line suite-entry ceiling; verified green |
| fwctx_standalone_ctl.sno | 66 | exceeds the 40-line suite-entry ceiling; verified green |

## Machine-readable exception list (DONE-WHEN mirror)

⛔ Mirrors `probe/conformance/KEEP.md`'s fix (SCRIP `f3dc4672a`) -- this row's DONE-WHEN
greps this section, not the prose above, for `- <path>` lines. Add a line here in the SAME
edit that adds a file to this KEEP.md; remove one here in the SAME edit that converts a file
out of it.

- probe/fwctx/fwctx_conjunction.sno
- probe/fwctx/fwctx_standalone_ctl.sno
