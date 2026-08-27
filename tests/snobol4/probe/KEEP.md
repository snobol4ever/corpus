# tests/snobol4/probe/ — suite output, not loose (task `tests-consolidate-snobol4-loose`)

Every `.sno`/`.ref` pair in this directory is the FINISHED product of a prior witness-consolidation,
not an unconverted loose test — landed by concurrent fleet work on the sibling
`corpus-suites-consolidation` task while this row was in progress. The gate's `*.sno` glob catches them
because it structurally excludes only `crosscheck/`, not `probe/`.

⚠️ **`opsyn.sno` previously passed this gate BY ACCIDENT, not by declaration**: its basename is a literal
substring of `binary_opsyn.sno`, which `parser/KEEP.md`'s manifest lists for an unrelated reason — a
coincidental substring collision, not a real declaration. Listed explicitly here so correctness doesn't
depend on that coincidence.

## Declared keepers (all finished suite output)

- `conformance.sno`/`.ref` — 92 oracle-agreeing witnesses (commit `860fb7d9b`).
- `opsyn.sno`/`.ref` — 18 of 21 witnesses (commit `b328576c1`).
- `eval.sno`/`.ref` — 19 of 21 witnesses (commit `9ba7fe4ce`).
- `gimpel.sno`/`.ref` — 9 of 23 witnesses (commit `04011eb50`).
- `m1.sno`/`.ref` — 37 of 40 witnesses (commit `e6548ab38`).
- `cn.sno`/`.ref` — 17 of 20 non-gate-locked witnesses (commit `bd616be5e`), later grown to 27
  entries when 10 of the 11 CN-4-gate-locked witnesses migrated in too (seat16, same day,
  `probe-consolidate-m1-and-small`) — still converted either way, noted here only so the count
  doesn't read stale.
- `earn0.sno`/`.ref` — 31 of 35 witnesses (commit `ad4da9c33`).

Each commit message states its own "N of M" — the gap between N and M is that family's own witnesses
that did NOT consolidate (gate-locked or otherwise held out), tracked by whichever task did that
consolidation, not this row. This declaration covers only "is the file loose or converted," which for
all seven is: converted.

— seat14, 2026-08-27, task `tests-consolidate-snobol4-loose`
