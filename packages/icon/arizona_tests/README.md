# arizona_tests — the official Arizona Icon test suite

**Source:** `/home/resources/icon-master/tests/{general,special}` (github.com/gtownsend/icon,
"Version 9.5 of Icon"). Upstream `README`: "This material is in the public domain. You may use
and copy this material freely." `bench/` (the benchmarking suite) is deliberately **not** vendored
here — out of scope per this row's GOAL, and it carries no `.std` expected-output files to grade
against anyway.

## Layout (unchanged from upstream — provenance kept, files copied verbatim)
- `general/` — 99 `.icn` programs, 89 with a matching `.std` (expected combined stdout+stderr) and
  16 with a matching `.dat` (fed as stdin; the remaining 73 gradable programs read no stdin at all).
  The 10 `.icn` files with **no** `.std` (`env`, `features`, `hello`, `tpp`, `tpp1`-`tpp5`, `tpp9`)
  are upstream auxiliary/preprocessor-test material, excluded from grading by Arizona's own
  `Test-icon` script (which defaults to iterating `*.std`, never these) — vendored for completeness,
  never graded.
- `special/` — `keyboard.icn` + `keyboard.dat`: an interactive-terminal-features test with no `.std`
  at all upstream (its own `Makefile` has no `Test` target). Vendored for completeness; not graded.

## How upstream runs these (ground truth: `general/Test-icon`)
For each `NAME.std`: compile `NAME.icn`, run it with `NAME.dat` as stdin if present else
`/dev/null`, capture stdout+stderr combined, `diff` against `NAME.std`.

## Grading against SCRIP
`SCRIP/scripts/test_icon_arizona_suite.sh` reproduces that exact contract for SCRIP's own two
native execution modes (`--run` / m3, `--compile`+link / m4) instead of `icont`/`iconx`. **SCRIP
Icon requires an explicit `;` between bare statements and does zero newline processing** (RULES.md
FACT RULE, gated by `test_gate_icn_semicolon_required.sh`) — these are upstream, unmodified,
standard-Icon-dialect programs, so a program using bare newline-separated statements fails to
*parse* on SCRIP for that reason alone, independent of whether its logic is otherwise correct.

The suite reports three outcomes per mode, never conflating them:
- **PASS** — parses, runs, output byte-identical to `.std`.
- **REJECT** — fails to *parse* at all (SCRIP prints `parse error`). Named per-file so the count is
  auditable, never silently folded into FAIL. Overwhelmingly the semicolon/newline dialect gap
  above (spot-verified on `arith.icn`: `line 14: expression statement: expected ; (got IDENT)`,
  the textbook signature) — SCRIP has no other known systematic source of parse rejection on valid
  standard Icon, but REJECT is not a claim that *every* instance is provably that one cause, only
  that it is a parse-time failure, distinct from a runtime/output failure.
- **FAIL** — parses and runs, output does not match `.std`. The genuine correctness signal.
