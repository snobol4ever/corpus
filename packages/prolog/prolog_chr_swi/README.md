# prolog_chr_swi

Constraint Handling Rules as SWI-Prolog's own CHR package tests and benchmarks them. The programs are the `Tests/` and `Benchmarks/` folders of the CHR package (github.com/SWI-Prolog/packages-chr, checkout `/home/resources/prologs/swipl-packages-chr`, commit c2d3ccbf3ec0, 2026-10-18), under its BSD two-clause licence (`LICENSE.chr`, copied from the package's own header). They are the classic CHR programs: Fruehwirth's `leq` solver for partial orders, prime sieves, Fibonacci in two styles, zebra, a full adder, boolean propagation, well-founded semantics, plus CHR compiler regressions (`dense_int`, `passive_check`, `trigger_no_active_occurrence`). The package grades the CHR layer of SCRIP Prolog (skill `prolog-constraints`), which no other package covers beyond a handful of rosetta-prolog programs.

THE PROGRAMS (the grader 2026-11-16). Each `NAME.pl` is the upstream `.chr` file unchanged, with a few lines of driver appended after it. The driver is ours; the answers are the oracle's.
- **`test_NAME`:** upstream's test driver (`test_chr.pl`) loads a test and calls the predicate named after its file. Here the driver is `:- initialization(main, main).` and `main :- ( Goal -> write(Goal:yes) ; write(Goal:no) ), nl.`. `initialization/2` runs the goal after the file has loaded; with `initialization/1`, `dense_int` raised an existence error, because its CHR store did not exist yet. `passive_check2.chr` exports no goal and is not a program here.
- **`bench_NAME`:** upstream's driver (`Benchmarks/benches.pl`) defines `cputime/1` from `statistics(runtime, ...)`. Here it is `cputime(0).`, so the line each benchmark prints, `bench(Name,N,Time,0,hprolog).`, carries 0 for its time and is compared byte for byte. Speed is measured as an instruction count, never by this field (skill `speed-measurement`).
- **`bench_zebra`:** it reads `statistics(cputime, _)` itself, so its driver runs the same `test(10)` and prints the same line with the time 0.

The dialect cell is empty: every program carries `:- module` and `:- use_module(library(chr))`, which mark it SWI, and swipl 9.0.4 cuts every ref (skill `prolog` section 1).

THE ANSWERS were cut from swipl 9.0.4 twice, with identical results, by `util_build_package_suite.py --lang prolog --twice` (TIMEOUT=300, S4E_CLASS=grader). 15 of 16 are entries. `bench_ta` is in `ALL.omit`: swipl's own CHR compiler refuses `ta.chr` (an invalid identifier in a `pragma passive`, rule 12), so its only text is on stderr, naming the run directory and a fresh variable.

Graded as `prolog_chr_swi` (SUITE_RUNNERS.tsv), the per-entry road, mode 3.
