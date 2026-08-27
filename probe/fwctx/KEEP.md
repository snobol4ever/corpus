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
