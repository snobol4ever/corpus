# ISO 7185 Pascal Validation Suite (PAT / PRT) — vendored

**What this is.** The ISO 7185 conformance/validation programs distributed with **Pascal-P5 version 1.4**
(`standard_tests/`). It is the public suite that grades a Pascal implementation against the standard, and
under Lon's 2026-09-03 ruling ("100% means 100% of the industry standard language") it is **the Pascal
denominator**, beside `fpc_tests`.

**Provenance.** Copied verbatim, no edits, from `/home/resources/Pascal-P5/standard_tests/` on the build
box, 2026-09-03, by hq_T. Upstream: the Pascal-P5 distribution (Scott A. Moore / the Pascal-P family,
descended from the Zurich Pascal-P compilers). Licence: see `doc/the_p5_compiler.docx` § "licensing" in the
Pascal-P5 distribution — `LICENSE` in that tree is a pointer to it, not the text.
⚠️ The upstream tree carries **no VCS metadata here**, so there is no commit hash to pin; the version is
`Pascal-P5 1.4.x` as printed by the suite's own `.cmp` files ("P5 Pascal compiler vs. 1.4.x"). Record that
limitation rather than inventing a hash.

**Two populations, and they are graded by different questions.**

| prefix | count | what it is | how a conforming implementation must behave |
|---|---|---|---|
| `iso7185pat*` | 1 program (+ variants) | **P**ascal **A**cceptance **T**est — a large conforming program | compile, run, and produce the right output |
| `iso7185prt*` | 427 programs | **P**ascal **R**ejection **T**est — each contains ONE deliberate violation (e.g. "missing semicolon after program statement") | **REJECT it**, with a diagnostic |

Each program `X.pas` may carry `X.inp` (stdin), `X.cmp` (the run output P5 produced) and `X.ecp` (the
expected compiler output).

⛔ **`.cmp` and `.ecp` ARE NOT A PORTABLE ORACLE and must not be diffed against.** They are *Pascal-P5's own*
transcript and open with its banner — `P5 Pascal compiler vs. 1.4.x`, `Assembling/loading program`,
`Running program`. Byte-diffing SCRIP against them would grade SCRIP on whether it is P5, which it is not
and should not be. They are kept because they document each test's intent and are the record of what the
reference implementation did.

**What the runner grades instead** (`SCRIP/scripts/test_pascal_pat_suite.sh`):
* a **rejection** test passes when `scrip` refuses the program with a non-zero status and a diagnostic —
  portable, standard-defined, and the actual property under test;
* an **acceptance** test is graded against **`fpc -Miso`** as the oracle, per the row's brief.
