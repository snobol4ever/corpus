# pat/upstream -- the distribution's own files that grade nothing here

Source: `/home/resources/Pascal-P5/standard_tests/` (Pascal-P5 version 1.4.x, the ISO 7185 conformance programs; vendored 2026-09-03 by hq_T,
copied verbatim; no VCS metadata upstream, the version is the one the `.cmp` files print). See `../README.md` for the package.

Moved here on 2026-11-11 by the coo (COO-502 (g), CIO-115), each file at the path it had in the package, when the package took the files form
(a path column in `ALL.csv`, `NAME.in` and `NAME.out` beside each program):

- `NAME.cmp`: the run output Pascal-P5 itself expects of the program. The graded answer of an accepted program is `NAME.out` beside it, cut
  from the oracle (fpc 3.2.2 -Miso); a rejection test has no run output.
- `NAME.inp`: the standard input Pascal-P5's harness feeds. All but two are empty. `iso7185pat.inp` is the input of the acceptance program
  `iso7185pat`, which the oracle cannot compile (EXCLUDED.tsv, NO_ORACLE_ANSWER); `iso7185prt1902.inp` is one newline for a rejection test,
  which is never run.

Not moved: `NAME.ecp`, the compiler listing Pascal-P5 expects, stays beside its program. The builder reads it under the contract's units
iso-rejection for the lines a rejection must name (`ISO_EXPECTED_REFUSALS.tsv`).

Nothing here is run or graded. The originals stay until Lon says they go.
