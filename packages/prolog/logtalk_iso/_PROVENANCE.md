# packages/prolog/logtalk_iso — upstream provenance

**Upstream:** <https://github.com/LogtalkDotOrg/logtalk3>, path `tests/prolog/`, cloned 2026-09-11 by ceo on Lon's order (*"Let's get third-party tests and benchmarks for all SNOBOL4, Icon, and Prolog"*).
**License:** Apache-2.0 — `LICENSE.txt` and `NOTICE.txt` vendored beside the tests. SPDX-FileCopyrightText: 1998-2026 Paulo Moura.
**What it is:** the de facto ISO/IEC 13211-1 conformance suite for Prolog systems, used by SWI-Prolog, JIProlog and Tau Prolog to self-check. Many cases are taken verbatim from the standard and cite their section numbers in comments (e.g. `% tests from the ISO/IEC 13211-1:1995(E) standard, section 7.8.3.4`).

**Population as vendored:** 192 `tests.lgt` files carrying **3,268 test cases**, grouped by what they test:

| group | dirs | what |
|---|---|---|
| `predicates/` | 97 | built-in predicates, one directory per predicate/arity |
| `functions/` | 54 | arithmetic functions |
| `control/` | 12 | control constructs (call/1, catch/3, cut, if-then-else, …) |
| `syntax/` | 11 | reader/term syntax |
| `directives/` | 7 | directives |
| `unicode/` | 6 | Unicode support |
| `logical_update_semantics/` | 2 | the logical update view |
| `unbounded/` | 2 | unbounded integer arithmetic |

**Why it is gradeable by us despite being Logtalk source.** Each case has the shape

    test(iso_call_1_02, false) :- {call(fail)}.
    test(iso_call_1_05, error(instantiation_error)) :- ... {call(_)}.

The goal inside `{ }` is Logtalk's escape to **plain Prolog**, and the expected outcome (`true` / `false` / `error(...)`) is declarative in the test head. So a case extracts to a plain-Prolog goal plus an expected outcome **without the Logtalk runtime** — which is what our runner must do. ⛔ Do NOT require Logtalk to be installed to grade these; if a runner cannot extract a case it REFUSES rc=2 and names it, rather than dropping it (ARCH-PROGRAM-LEDGER: UNKNOWN is not ZERO).

**Relationship to `inriasuite/`.** Both measure ISO conformance and they OVERLAP without being duplicates: INRIA (445 cases) is the older Deransart/INRIA set organised by predicate in one flat file per group; this set is ~7x larger, per-predicate-directory, actively maintained through 2026, and covers de facto standards and Unicode that INRIA predates. Keep both; report them as separate rows with separate denominators, and never sum them.
