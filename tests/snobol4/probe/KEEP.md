# tests/snobol4/probe/ — suite output, not loose (task `tests-consolidate-snobol4-loose`)

- `conformance.sno` (+ `conformance.ref`) — consolidation of 92 oracle-agreeing witnesses into one
  suite-format pair (commit `860fb7d9b`, "probe/conformance: consolidate 92 oracle-agreeing witnesses
  into a suite pair"). This is the FINISHED product of a prior conversion, not an unconverted loose test.
  The gate's `*.sno` glob catches it because it lives outside `crosscheck/`, the only directory the gate
  structurally excludes.

— seat14, 2026-08-27, task `tests-consolidate-snobol4-loose`
