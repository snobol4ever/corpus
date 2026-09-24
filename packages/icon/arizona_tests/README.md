# arizona_tests — the official Arizona Icon test suite

**Source:** `/home/resources/icon-master/tests/{general,special}` (github.com/gtownsend/icon,
"Version 9.5 of Icon"). Upstream `README`: "This material is in the public domain. You may use
and copy this material freely." `bench/` (the benchmarking suite) is deliberately **not** vendored
here — out of scope per this row's GOAL, and it carries no expected-output files to grade
against anyway.

## Layout (upstream's — provenance kept, sources copied verbatim, expected outputs named `.ref`)
- `general/` — upstream's 99 `.icn` programs, 89 of them with an expected-output file (combined
  stdout+stderr) and 16 with a matching `.dat` (fed as stdin; the rest read no stdin at all).
  The 10 `.icn` files upstream ships **no** expected output for (`env`, `features`, `hello`, `tpp`,
  `tpp1`-`tpp5`, `tpp9`) are upstream auxiliary/preprocessor-test material, excluded from grading by
  Arizona's own `Test-icon` script (which iterates the expected-output files, never these) — vendored
  for completeness. (`hello.ref` is ours, cut from the oracle. The sources upstream does not ship at
  all — `cfunc`, `convert`, `datetime`, … and `io_lib`, `lists_lib`, … — are the IPL library modules
  the tests `link`, vendored beside them; the five `*_lib` ones are renamed off the same-named test
  programs they would otherwise shadow.)
- `special/` — `keyboard.icn` + `keyboard.dat`: an interactive-terminal-features test with no
  expected output at all upstream (its own `Makefile` has no `Test` target). Vendored; not graded.

## `.std` upstream, `.ref` here (CEO-1222) — and the two refs re-cut since
Upstream names an expected output `NAME.std`. Here every one is `NAME.ref`, renamed byte for byte
(CEO-1222: one extension for an expected output, in every language). Two were re-cut from Arizona
`icont`/`iconx` afterwards, each because its program's output is a function of its environment and the
environment is not upstream's:
- `kwds.ref` — under `iconx kwds`, the bare-stem invocation every ref is cut under (`&progname`, CEO-624).
- `io.ref` — `io.icn` lists its own directory (`ls io.[ids][tca][dnt]`, `ls io.i?n io.d?t io.s?d`), and
  with no `io.std` beside it the oracle lists `io.dat io.icn` and prints `ls`'s own complaint about
  `io.s?d` — which is what `jcon_tests/io.ref` has always read. Cut in a sandboxed copy of `general/`,
  `io.dat` on stdin, five runs byte-identical.
`scripts/test_gate_icon_vendored_sources_compile_under_icont.sh` re-runs the oracle over every `.ref`
here and fails on any it does not reproduce.

## How upstream runs these (ground truth: `general/Test-icon`)
For each `NAME.std` (here `NAME.ref`): compile `NAME.icn`, run it with `NAME.dat` as stdin if present
else `/dev/null`, capture stdout+stderr combined, `diff` against the expected output.

## Grading against SCRIP
`SCRIP/scripts/test_icon_arizona_suite.sh` reproduces that exact contract for SCRIP's own two
native execution modes (`--run` / m3, `--compile`+link / m4) instead of `icont`/`iconx`. **SCRIP
Icon requires an explicit `;` between bare statements and does zero newline processing** (RULES.md
FACT RULE, gated by `test_gate_icn_semicolon_required.sh`) — these are upstream, unmodified,
standard-Icon-dialect programs, so a program using bare newline-separated statements fails to
*parse* on SCRIP for that reason alone, independent of whether its logic is otherwise correct.

The suite reports three outcomes per mode, never conflating them:
- **PASS** — parses, runs, output byte-identical to `.ref`.
- **REJECT** — fails to *parse* at all (SCRIP prints `parse error`). Named per-file so the count is
  auditable, never silently folded into FAIL. Overwhelmingly the semicolon/newline dialect gap
  above (spot-verified on `arith.icn`: `line 14: expression statement: expected ; (got IDENT)`,
  the textbook signature) — SCRIP has no other known systematic source of parse rejection on valid
  standard Icon, but REJECT is not a claim that *every* instance is provably that one cause, only
  that it is a parse-time failure, distinct from a runtime/output failure.
- **FAIL** — parses and runs, output does not match `.ref`. The genuine correctness signal.
