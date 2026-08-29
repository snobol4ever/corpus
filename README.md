# corpus

[![License: CC0](https://img.shields.io/badge/License-CC0_1.0-lightgrey.svg)](https://creativecommons.org/publicdomain/zero/1.0/)

The shared program universe for the [snobol4ever](https://github.com/snobol4ever) organization: the
`-INCLUDE`/import library every implementation draws on, the oracle-graded test corpus that keeps them
honest, and a home for interesting SNOBOL4, Snocone, Icon, Prolog, Rebus, Raku, and Pascal programs.
Consumed primarily by [SCRIP](https://github.com/snobol4ever/SCRIP)'s build and test scripts, which
expect this repository checked out as a sibling directory. Dedicated to the public domain — see
[License](#license) below.

---

## Layout

```
tests/{lang}/        graded, oracle-diffed test trees -- rung ladders, parser fixtures, suite pairs
demo/{lang}/         showcase programs, including demo/scrip/ -- the polyglot .scrip demos
benchmarks/{lang}/   timing programs, paired with committed .s artifacts
packages/{lang}/     vendored third-party and reference material
programs/            EBNF/, TZ/, lon_cherryholmes/ -- real-world programs, not (yet) a test suite
probe/               ablation/regression witnesses for specific defect classes, mid-conversion
include/             the SNOBOL4 half of the shared -INCLUDE library (16 modules)
library/             the Snocone half of the same library, plus a few program ports (20 modules)
editor_configs/      Sublime Text syntax and build files -- SNOBOL4, Snocone, Icon, Prolog
```

Not every language has material under every `{lang}` slot yet — the map below says exactly which.
There is no `corpus/crosscheck/` any more: through 2026-08-28 it held roughly two thousand loose
one-program-per-file pairs; as of 2026-08-29 it is gone, fully consumed into the `tests/{lang}/`
suites described next.

---

## The suites story

The test corpus used to carry its coverage as thousands of one-program-per-file pairs — a `.sno` and
its `.ref`, real but unwieldy to grade, browse, or diff. Lon's design (2026-08-24, routed as CEO-15)
consolidates that universe into two suite formats, both driven by one Python 3 (stdlib-only) harness:

**(A) One-line families** — most of `tests/snobol4/crosscheck/` and `tests/snocone/crosscheck_*`. Two
parallel text files per family, line N to line N: `family.sno` holds one complete, semicolon-joined
test per line (≤200 chars, ending `;* name` — a valid SPITBOL trailing comment, so it colors and names
itself in an editor); `family.ref` holds line N's expected output, multi-line results newline-escaped
so the correspondence can't break. It's a data file meant to be read two-up in color, never run whole.

**(B) Multi-line families** — the parser ladders (`tests/icon/parser`, `tests/raku/parser`, and
similar) and any one-liner that can't join cleanly. Banner-delimited blocks in parallel src/ref files:
an exactly-80-character banner in the language's own comment syntax, a dash-bar filled to the margin,
the `seq name` pair right-justified at the line's end — so the right edge of the file reads as an
aligned index. Expected output sits verbatim between banners, no escaping. Board identity is
`family#seq+name`; sequence numbers are stable, append-only addresses, never renumbered in place.

The harness resolves oracles through `SCRIP/scripts/lib_oracle_flags.sh` (the one authority for that —
see the workspace root `CLAUDE.md`), keeps a five-way verdict distinct (PASS / FAIL / CRASH / HANG /
UNPROVEN — CRASH is never collapsed into a generic diverge), and refuses loudly instead of printing a
plausible all-FAIL table when a binary is missing. Conversion is mechanical, never hand-transcribed,
under one law: **byte-equal-or-no-delete** — an old loose pair only dies once its suite entry
reproduces the identical verdict, in both SCRIP execution modes, byte for byte.

**State of the pilot, 2026-08-29:** `crosscheck/` — the first and largest target — is fully converted
and deleted: 32 SNOBOL4 families now live in `tests/snobol4/crosscheck/`, 30 Snocone families in
`tests/snocone/crosscheck_*`. `probe/` is next and still mid-flight: on the order of 240 loose `.sno`
files remain, most convertible directly; five, under `probe/fuzz`, are held on a real defect — the
harness's mode-4 link step omits `-no-pie`, so a PIE binary's crash signal flips between runs under
ASLR and can never byte-match itself on re-validation, independent of SCRIP's own correctness.
`tests/pascal/crosscheck/` (17 conformance pairs) predates this format and has not been folded into it
yet. `programs/`, `benchmarks/`, and vendored `packages/` are out of scope by design: real,
`-INCLUDE`-heavy, or third-party programs stay as files.

---

## The include doctrine

Two directories carry the shared `-INCLUDE`/import library that the self-hosted compiler effort
(`beauty.sno`, and eventually `compiler.sno`) is built from — a general-purpose tree datatype, a
stack, a shift-reduce parser skeleton, semantic actions, code generation, tree/expression dumpers, and
more:

- **`include/`** — 16 SNOBOL4 modules (`.inc`), pulled in with `-INCLUDE`.
- **`library/`** — the same modules ported to Snocone (`.sc`), plus a handful of general program ports
  such as `roman.sc` that aren't compiler infrastructure — 20 files in total, four more than
  `include/`.

`beauty.sno` and its driver suite (`tests/snobol4/beauty_suite/`) are the concrete consumers — each
driver includes the module it exercises (`tree_driver.sno` includes `tree.inc`, and so on).

That's a different thing from the suites in `tests/`, and the difference is a rule, not a preference:
**anything feeding the graded harness must be self-contained** — no `-INCLUDE`, no file I/O, no
`DATE()`/`TIME()`/randomness, and it has to run in under a second. That's what makes a crosscheck entry
a harness feed instead of an ordinary program, and it's why `-INCLUDE`-heavy real programs live in
`programs/` instead. Per Lon's ruling, `programs/` (all of it — `EBNF/`, `TZ/`, `lon_cherryholmes/`) is
open for parser- and AST-level testing any time, but none of it enters oracle-diffed runtime boards;
it needs more work first. `lon_cherryholmes/` carries no special status beyond that — Lon retracted its
prior off-limits treatment in full (2026-08-24).

---

## The map

|                | `tests/` | `demo/` | `benchmarks/` | `packages/` |
|----------------|:--------:|:-------:|:--------------:|:-----------|
| **SNOBOL4/SPITBOL** | 234 programs (32 of them the crosscheck suite) + `beauty_suite` | ✅ | ✅ | aisnobol · csnobol4_suite · dotnet · gimpel · snoflake_suite |
| **Snocone**    | 99 programs (30 of them the crosscheck suite) | ✅ (incl. `demo/scrip/`) | — | — |
| **Icon**       | 265 programs | ✅ | ✅ | ipl · jcon-compiler · jcon-ref |
| **Prolog**     | 156 programs | ✅ | ✅ | gnu_prolog · swi_tests |
| **Rebus**      | 85 programs | — | — | — |
| **Raku**       | 104 programs | — | ✅ | — |
| **Pascal**     | 75 programs (17 of them a loose conformance crosscheck, not yet suite-consolidated) | — | ✅ | Pascal-P5 — the ISO 7185 reference compiler/interpreter, an oracle source, not a test suite |

`demo/scrip/` is one directory shared across languages, not a per-language slot: ten numbered
polyglot `.scrip` demos plus `family_net`, the cross-language linkage demo (SNOBOL4 parses → Prolog
infers → Icon formats) — the current frontier of the SCRIP effort. Counts above are `tests/{lang}/`
program totals at this tree (2026-08-29); they move as `probe/` finishes consolidating and shrink as
loose files fold into suite pairs — the boards print their own totals, and this table is a map, not a
scoreboard.

---

## Status

The SNOBOL4 corpus board — every program and suite entry, both SCRIP execution modes, graded against
SPITBOL x64 byte for byte — ran **1,299/1,299, FAIL=0** as of 2026-08-28 (the figure SCRIP's own
README and the org profile also carry). Per-language checks that day: Pascal suites 96/96 both modes
(loose set 150/154), Icon smoke 14/14 both modes, Snocone 5/5, Rebus 4/4, Prolog 5/5 in all three
modes, Raku parser suite 83/83. `beauty.sno` — the SNOBOL4 beautifier, built from this repository's
`include/` library — reproduces itself byte-identically through SCRIP in both modes.

---

## Submissions welcome

If you've written a SNOBOL4, Snocone, Icon, Prolog, Rebus, Raku, or Pascal program worth reading, this
is where it belongs — beside the Gimpel algorithm library, the Shafto AI corpus, and the test universe
that keeps every implementation in the organization honest. See [NOTICE](NOTICE) for third-party
provenance and licensing on the vendored material under `packages/`.

## License

CC0 1.0 Universal — public domain. See [LICENSE](LICENSE).

---

Part of the [snobol4ever](https://github.com/snobol4ever) organization —
[SCRIP](https://github.com/snobol4ever/SCRIP) ·
[snobol4dotnet](https://github.com/snobol4ever/snobol4dotnet) ·
[snobol4jvm](https://github.com/snobol4ever/snobol4jvm)
