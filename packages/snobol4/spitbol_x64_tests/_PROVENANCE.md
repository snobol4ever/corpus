# packages/snobol4/spitbol_x64_tests — SPITBOL's own test suite, from our oracle's upstream

**Upstream:** <https://github.com/spitbol/x64>, path `test/`, cloned 2026-09-11 by ceo on Lon's order to acquire third-party tests and benchmarks. This is the upstream of **our own correctness oracle** (`/home/resources/x64/bin/sbl`), so these are the tests the reference implementation checks itself with.
**License:** GPL-3.0 — `LICENSE` and `COPYING` vendored beside the tests (same precedent as `csnobol4_suite` and `packages/prolog/gnu_prolog`).

**Population:** 36 `.sbl` programs + `chks.inc` / `math_chks.inc` (shared assertion includes) + `math_tests.sh` (upstream driver) + `files`, `ru.txt` data. Nothing here existed in our corpus before — we held **zero** `.sbl` files. Coverage is heaviest exactly where ours is thinnest: 21 of the 36 are floating-point (`math_atan cos exp ln pow sqrt sin tan chop diff div plus minus prod quot read remdr sum limits1..4`), plus `gcbuster` (garbage collector stress), `setexit`, `save`, `module`, `host`, `float`, `arcget`/`arcput`, `cfreq`, `lower`, `trim`, `def`, `sv`, `map-x64`, `hello`.

⭐ **THEY ARE SELF-CHECKING.** The math tests print their own verdict (`pass: sqrt(2.6308364999025599e-308) Obs[...]`), so a runner grades them by reading pass/fail rather than by diffing a cut ref — cheaper and more robust than a `.ref` for this package.

## ⛔⛔ THE INVOCATION PROBLEM, MEASURED — THESE CANNOT BE GRADED UNDER `sbl -bf`

Our standing law is `-bf` on every program (`sbl_lang_flags()`, the only authority) because `-f` is the arm that matches SCRIP's **case-sensitive** SNOBOL4. **29 of these 36 files end in lowercase `end`**, not `END`. Measured both ways:

| invocation | result |
|---|---|
| `sbl -bf hello.sbl` (our mandated arm) | **rc=1 — "No END statement found in source file(s)"**, on 29 of 36 |
| `sbl hello.sbl` (upstream's own driver: no flags, case folding) | **rc=0, correct output**; `math_sqrt` prints `pass:` lines |

Keyword-case census across the 36: **uppercase `END` 7 · lowercase `end` 29.**

⛔ **THE ORACLE ACCEPTS THESE PROGRAMS.** Under CEO-542 (*the outside-baseline test is about the ORACLE, never about us*) they are therefore INSIDE the SPITBOL baseline and it is our `-bf` invocation that does not fit this package. But SCRIP is case-sensitive by Lon's own dialect choice, so **SCRIP would refuse them too** — which makes this a genuine divergence from the stated baseline ("one oracle and one feature set, being SPITBOL", CEO-388/391), not a harness detail.

**This needs Lon's ruling and must not be silently resolved either way.** The three options, none of which a seat may pick alone: (1) SCRIP folds case like SPITBOL's default, making us match the stated baseline and these 36 gradeable; (2) the package is graded under folding as a declared per-package invocation, and the 29 are recorded as exercising a feature SCRIP does not implement; (3) the 29 are named OUTSIDE-BASELINE — ⛔ the weakest option, because an excluded name cannot be red and these are the reference implementation's own tests. Until it is ruled, every one of the 36 carries CORRECTNESS=UNGRADED **with this measurement attached**, never a silent absence.
