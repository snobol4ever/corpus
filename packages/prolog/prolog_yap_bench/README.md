# prolog_yap_bench

The Prolog programs of the Computer Language Benchmarks Game, as YAP Prolog ships them in `JIT/examples`. The checkout is `/home/resources/prologs/yap`, commit c22f49f, 2026-04-20, under YAP's LGPL (`COPYING.yap`); the Benchmarks Game programs themselves carry its revised BSD terms. Most are the Benchmarks Game's own programs, among them binary-trees, fannkuch, fasta, n-body, nsieve, nsieve-bits, partial-sums, recursive and spectral-norm. A few are classic Prolog benchmarks: nreverse, tak, hanoi, zebra and query. No other package grades the Benchmarks Game in Prolog. These programs reach arbitrary precision, floating point formatting with `format/2`, deep recursion and large terms.

THE PROGRAMS (the grader 2026-11-17). Each `NAME.pl` is the YAP file unchanged, after a few lines of compatibility of ours that give swipl and SCRIP the YAP builtins it calls:
- `number_atom/2` on `atom_number/2`.
- `yap_flag/2` on `set_prolog_flag/2`.
- In nsieve, `bb_put/2` and `bb_get/2`, YAP's blackboard, on `nb_setval/2` and `nb_getval/2`.
- `unix(argv(L))`, through which YAP hands a program its command line, answers one fixed argument, the size the program runs at: binary_trees 10, fannkuch 7, fasta 1000, mandelbrot 32, n_body 1000, nsieve 2, nsieve_bits 2, partial_sum 2500, pidigits 27, recursive 3, spectral_norm 100, append 1000, hanoi 10, tak 8.

The sizes and the compatibility lines are ours; every answer is the oracle's. `mandelbrot.pl` begins with a stray `0` in YAP's own file, so its first directive is an error and swipl prints only the PBM header; that is its answer.

The dialect cell is empty, so swipl 9.0.4 cuts every ref.

THE ANSWERS were cut from swipl 9.0.4 twice, with identical results, by `util_build_package_suite.py --lang prolog --twice` (TIMEOUT=300, S4E_CLASS=grader). Only standard output is compared. The benchmarks call `statistics/0`, whose report on stderr is a clock. 10 of 18 are entries; `ALL.omit` names the other 8 with the measurement:
- **Silent:** append, hanoi, tak, query, zebra and nreverse write nothing to standard output.
- **pidigits:** calls a `transform_level/1` it does not define.
- **k_nucleotide:** reads Prolog terms from standard input; no input of ours is cut for it yet.

Graded as `prolog_yap_bench` (SUITE_RUNNERS.tsv), the per-entry road, mode 3.
