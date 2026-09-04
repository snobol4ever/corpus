# INRIA ISO/IEC 13211-1 Prolog conformance suite — vendored

**What this is.** The INRIA conformance suite for ISO/IEC 13211-1 (Deransart / Ed-Dbali / Cervoni),
"a test suite based on the formal specification". Under Lon's 2026-09-03 ruling ("100% means 100% of the
industry standard language") this is **THE Prolog denominator**; `swi_tests` and `gnu_prolog` are vendor
suites beside it.

**Provenance.** `PROVENANCE.txt` in this directory is the ceo's fetch record, kept verbatim: source URLs,
sha256 of both tarballs, index page, and the note that **no licence is stated** on the index page — so the
authors' names and the file headers stay, and nothing here is stripped or reformatted.
Fetched 2026-09-03 by the ceo; vendored unmodified by hq_T the same day.

**Layout.** 67 files, one per builtin family (`abolish`, `and`, `arg`, `arith_*`, `assertz`, `atom_chars`,
…), plus `inriasuite.pl` — the authors' own batch driver, which loads a family file and reports only the
goals whose result differs from the expected one.

**Format.** Every test is one line:

```prolog
[arg(1,foo(a,b),a), success].
[arg(1,foo(a,b),X), [[X <-- a]]].
[atom_length(1.23, 4), type_error(atom, 1.23)].
```

i.e. `[Goal, Expected]`, where `Expected` is `success`, `failure`, a list of substitution sets
(`[[X <-- a]]`), or an ISO error term. **445 goals across the 67 family files** — that is the denominator.

⛔ **What our runner grades, and what it does NOT.** `SCRIP/scripts/test_prolog_inria_suite.sh` grades the
**outcome class** — success vs failure vs error — and, for an error expectation, the **error term's
functor**. It does **not** yet check substitution bindings (`[[X <-- a]]`), so a goal that succeeds with the
*wrong* binding scores as a pass. That is a strictly weaker criterion than the suite's own, it is stated in
the board line, and it is the honest description of a first measurement rather than a claim of conformance.
Tightening it to full binding comparison is the next step on this row and will only ever move the number
DOWN.
