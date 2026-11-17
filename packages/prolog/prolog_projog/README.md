# prolog_projog

Projog's own Prolog test scripts, the folder `src/test/prolog` of Projog (github.com/s-webber/projog, checkout `/home/resources/prologs/projog`, commit 21871d7, 2026-09-05), under the Apache License 2.0 (`LICENSE.projog`). There are 118 scripts holding 748 queries, in six folders:
- `concepts`: arithmetic, lists, unification, term comparison, I/O, getting started.
- `miscellaneous`: 67 numbered regression scripts.
- `udp`: user-defined predicates; clause order, cut, assert and retract.
- `clp`: CLP(FD) with `in`, `ins`, `#=` and `all_different`.
- `applications`: eight queens, zebra, towers of hanoi, a full adder, cryptarithmetic.
- `CompiledPredicateSourceGeneratorTest`.

Each query is a comment line `%?- GOAL`, followed by Projog's answer.

THE PROGRAMS (the grader 2026-11-17, `/home/resources/progress/handoffs/grader-2026-11-17/projog_gen.py`). Each `projog_<folder>_<script>.pl` is the script's text unchanged, then a driver of ours. It is one clause per query, run in source order after the load, under `:- initialization('$pj_main')`. A query's clause:
- prints `?- GOAL`;
- then, for each solution, every variable of the query as `Name = ` and `writeq/1`, then `yes`, stopping at 10 solutions;
- then `no` when the solutions run out;
- or, on an exception, `error(F)` with the formal term alone, never the context, which differs between implementations.

A script of the `clp` folder gets one line before it, `:- use_module(library(clpfd)).`, since Projog provides CLP(FD) to every program. A query whose text swipl cannot read leaves its clause unloaded and prints nothing, the same every run (9 of the 23 queries of `miscellaneous/67`). The answers are the oracle's, never Projog's comments; where swipl and Projog disagree, swipl is the ref.

The dialect cell is empty, so swipl 9.0.4 cuts every ref (skill `prolog` section 1).

THE ANSWERS were cut from swipl 9.0.4 twice, with identical results, by `util_build_package_suite.py --lang prolog --twice` (TIMEOUT=120, S4E_CLASS=grader). 117 of 118 are entries. `concepts/prolog_io` is in `ALL.omit`: its first query writes the stream it opened, an address that differs run to run.

Graded as `prolog_projog` (SUITE_RUNNERS.tsv), the per-entry road, mode 3.
