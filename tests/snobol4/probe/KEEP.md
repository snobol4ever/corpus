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

## Genuinely file-driven keepers (relocated here, deliberately NOT banner-block-converted)

Per Lon's 2026-08-28 ruling on `corpus-crosscheck-probe-total-conversion` ("make them ALL use the
multi-liner or one-liner Python harness as appropriate... ONLY genuinely stdin/file-driven tests stay
standalone, marked in a KEEP.md beside them"): the RTX-FUNC-11 witness pair uses `-INCLUDE` to pull in a
separate `.sno`/`.inc` file at runtime — that is the mechanism under test, not incidental structure, so
converting it into one banner-block entry would stop testing what it exists to test. Relocated out of
`corpus/probe/` (to satisfy that row's DONE-WHEN — zero loose `.sno` there) into standalone files here
instead, structure fully preserved, verified still running correctly from the new location (include
paths resolve relative to cwd, unaffected by the move since both halves of each pair moved together):

- `rtx11_dynvar_include.sno` (+ its `rtx11_dynvar.inc`) / `rtx11_dynvar_inline.sno` — a two-sided
  witness comparing runtime-created variables arriving via `-INCLUDE` against an identical inline
  control arm. Kept as a pair (not split, one converted / one not) so a future reader can still directly
  diff the two arms — that comparison is the point of the witness.
- `rtx_func_11_include.sno` (+ its `rtx_func_11_inc.sno`, the included half) /
  `rtx_func_11_inline.sno` — same shape, a 40-scalar + 40-iteration threshold witness. Same pairing
  rationale.

⚠️ **Both pairs' own header comments claim a live SIGSEGV** ("Oracle: clean. SCRIP m3/m4: SIGSEGV" /
"this (-INCLUDE) arm SEGVs under SCRIP mode 3 and mode 4") **that no longer reproduces** — re-verified
2026-08-29 (seat06): all four `.sno` files agree with their `.ref`, in both scrip modes, and against the
live SPITBOL oracle directly (not just the pin). This is the fourth instance this row's own history has
found of a documented arm/bug divergence that has since been silently resolved (after `SCRIP_SPAN_FRAME`/
`leafsib`, `SCRIP_CHOICE_RBP`/`clobarm`, and the `ab` family's `SCRIP_AB` divergence) — not fixed or
re-verified as a compiler-correctness question here, only noted so the header comments' crash claim
isn't taken at face value by a future reader; the file-driven structure is still worth keeping regardless
of whether the specific crash still reproduces.

— seat06, 2026-08-29, task `corpus-crosscheck-probe-total-conversion`
