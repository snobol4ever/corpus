# KEEP.md — probe/define

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

`dyn_define_1.sno` is **not currently green** — the harness's byte-equal-or-no-delete law
(`convert_one()`) refuses to convert a witness that isn't passing in the mode(s) requested,
so nothing was written and nothing was deleted. Left as a standalone file, unconverted,
unmoved, pending its own fix (out of scope for this consolidation row).

Live measurement, 2026-08-27 (this session), both m3 and m4:
```
FATAL lower_snobol4 (GZ#5 subset): DEFINE with a non-literal prototype string is outside
the landed subset (runtime DEFINE pending). Pattern matching, EVAL and CODE are outside the
landed subset (IR_MATCH_* family pending); see GOAL-SNOBOL4-BB.md.
```
rc=1 both modes. This is a self-documented, deliberate compiler-subset gap (dynamic/non-literal
`DEFINE` prototype strings), not a silent regression — see `GOAL-SNOBOL4-BB.md` for the landed
subset. The witness is exactly probing the gap it's named for; converting it now would either
be refused by the harness or, if forced, would freeze today's FATAL as tomorrow's "expected".

| file | lines | reason |
|---|---|---|
| dyn_define_1.sno | 5 | FAIL both modes against its own `.ref` — non-literal DEFINE prototype outside the landed subset (GOAL-SNOBOL4-BB.md); harness refused conversion, not a scope exclusion |
