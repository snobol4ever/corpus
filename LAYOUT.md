# corpus Layout

One canonical home per program; engine repos keep no copies. Flattened 2026-08-24 (the
`programs/` level is gone; `generated/` and `run/` removed).

| Folder | Contents |
|---|---|
| `snobol4/` | SNOBOL4 programs: `beauty_suite/` `demo/` `bench/` `feat/` `smoke/` `parser/` … |
| `icon/` `prolog/` `raku/` `pascal/` `rebus/` `snocone/` | per-language programs, rungs, parser fixtures |
| `gimpel/` `csnobol4-suite/` `aisnobol/` `beauty/` `ebnf/` `dotnet/` `lon/` | imported / historical program sets |
| `include/` `include-sc/` | shared `-INCLUDE` sources |
| `crosscheck/` | tiny oracle-diff test pairs (`.sno`+`.ref`) — CONSOLIDATING into `suites/` (line-matched suite files; see .github GOAL-CEO CEO-15) |
| `probe/` | minimal witness/probe programs — same consolidation |
| `benchmarks/` | timing programs; `.s` artifacts live ONLY here and beside demos (RULES.md handoff step 4) |
| `editor/` `lib/` | tooling and library material (LIBRARY curation pending, Lon) |

Test artifacts (`.s` beside tests) are abolished; benchmarks and demos keep theirs.
Authoritative per-language locations: `.github/CORPUS-LOCATIONS.md`.
