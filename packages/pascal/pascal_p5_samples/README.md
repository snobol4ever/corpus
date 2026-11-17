# pascal_p5_samples

The sample programs of Pascal-P5, Scott Moore's ISO 7185 descendant of the Zurich Pascal-P4 kit: the folder `sample_programs/` of `github.com/samiam95124/Pascal-P5`, commit f730c1c03de8 (2022-12-20). The same commit is vendored whole in `../p5`, whose README carries the licence: P5 is free of copyright and charges ("Use as you see fit."). That README also explains the PAT and PRT halves of P5's test suite, which the `pat` package grades. The ten programs are:
- basics: a BASIC interpreter;
- drystone and fbench: the Dhrystone and floating-point benchmarks;
- hello;
- match;
- pascals: Wirth's Pascal-S interpreter;
- prime;
- qsort;
- roman: roman numerals;
- startrek: the game, driven by its input.

No other package held them.

THE ANSWERS (the grader 2026-11-17) were cut from fpc 3.2.2 `-Miso` twice, with identical results, by `util_build_package_suite.py --lang pascal --twice` (TIMEOUT=60, S4E_CLASS=grader). Each program's standard input is upstream's `NAME.inp`, renamed `NAME.in`; the other upstream files, the `.cmp` answers of P5's own compiler, are not used, since the ref is fpc's. The builder's container was then unpacked to the files form (`corpus_suite_harness.py unpack`): `NAME.pas`, `NAME.in`, `NAME.out` and `ALL.csv` with a path column, the form of skill suites-and-grading section 10. 9 of 10 are entries. `pascals` is in `ALL.omit`: fpc refuses to compile it under `-Miso`.

Graded as `pascal_p5_samples` (SUITE_RUNNERS.tsv), the per-entry road, mode 3.
