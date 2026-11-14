# uni_bench

UniBench: the Unicon 12 benchmark suite (`/home/resources/unicon/tests/bench`, as Unicon 13.3 ships it, under Unicon's licence,
`COPYING.unicon`; each program's header names its authors, and the distribution's own page is `README.bench`). Eighteen
programs: Unicon versions of the Computer Language Benchmarks Game set (binary-trees, chameneos-redux, fannkuch, fasta, k-nucleotide,
mandelbrot, meteor-contest, n-body, pidigits, regex-dna, reverse-complement, spectral-norm, thread-ring) and five from the Icon
benchmark suite (concord, deal, ipxref, queens, rsg), with the two modules they share (`pool.icn`, a thread pool of two classes, and
`shuffle.icn`). They are graded here for their answers, as every benchmark is; their speed is another measurement.

THE ROWS are the lines of the distribution's test driver, `run-test.icn`: each benchmark at its test size, and the thread-pool variant
of the three that have one. 21 lines; 19 are graded and 2 have no oracle answer (`EXCLUDED.tsv`).

| row | entry procedure | argument |
|---|---|---|
| concord, ipxref, rsg | run_concord, run_ipxref, run_rsg | concord.test, ipxref.test, rsg.test |
| deal, queens | run_deal, run_queens | 500, 9 |
| binary-trees, binary-trees-concurrent | run_binarytrees_sequential, run_binarytrees_concurrent | 10 |
| fannkuch, fasta, n-body, pidigits, spectral-norm, meteor-contest | run_fannkuch, run_fasta, run_nbody, run_pidigits, run_spectralnorm, run_meteorcontest | 7, 1000, 1000, 500, 100, 1 |
| mandelbrot, mandelbrot-concurrent | run_mandelbrot_sequential, run_mandelbrot_concurrent | 200 |
| k-nucleotide | run_knucleotide | 25-thou.dat |
| regex-dna, regex-dna-concurrent | run_regexdna_sequential, run_regexdna_concurrent | 10-thou.dat |
| reverse-complement | run_reversecomplement | 150-thou.dat |
| chameneos-redux, thread-ring (no oracle answer) | run_chameneos, run_threadring | 600, 1000 |

THE DRIVERS: each `run_NAME.icn` is ours and does for one row what `run-test.icn` does for all: it links the benchmark, declares the
global `output`, points it at standard output and calls the entry procedure with the argument list; `ALL.args` holds the argument.
The main each module keeps under `$ifdef MAIN` is not used (SCRIP takes no -D), and it is converted and proved all the same.
`run_deal.icn` and `run_rsg.icn` set `&random := 0` first: both programs draw random numbers, Unicon seeds `&random` from the clock,
and MEASURED without the seed each answers differently on two runs. `run_mandelbrot-concurrent.icn` links `pool` itself, which
`mandelbrot.icn` uses and does not link (MEASURED: built alone with -DMAIN the distribution's mandelbrot stops at error 106).

THE INPUT FILES: `concord.test`, `ipxref.test` and `rsg.test` are the distribution's. `10-thou.dat`, `25-thou.dat` and `150-thou.dat`
are what its `generate.icn` makes, the fasta benchmark's output for 10000, 25000 and 150000, written here by the oracle's own build of
`fasta.icn`. `mandelbrot`'s answer is a binary bitmap (`P4`, 5011 bytes).

THE LINK PATH (`CONTRACT.tsv`): the package root, where the twenty modules sit; then `../uni_ipl/procs` for Unicon's `printf`; then
`../ipl/procs` for `sort` and `findre`.

THE CONVERSION: the twenty modules carry the semicolons SCRIP requires, inserted once by `util_icon_semicolons.py` (skill unicon;
never tracked), and each is PROVED by `unicon -s -c` giving the original and the converted text the same ucode, the uid line aside,
both as the drivers link it and with -DMAIN (`CONVERSION-PROOF.tsv`: twenty of twenty same-code). `pool.icn` and
`chameneos-redux.icn` use the unary send and receive operators (`@>>t`, `<<@T`), which SCRIP's parser does not read yet, so the tool
ran on a copy with same-length stand-ins on those five lines and the operators were put back before the proof.

THE ANSWERS were cut from the oracle, unicon 13.3 (which has concurrent threads): the modules compiled by `unicon -s -c`, each driver
built against them and run twice in a fresh copy of this folder with identical results, by the grader on 2026-11-14
(`/home/resources/progress/handoffs/grader-2026-11-14/ubench_cut.py`). The first SCRIP reading (mode 3, SCRIP c5622f4448): 13 of 19.
Red, two causes: the five rows that link `pool.icn` (binary-trees, regex-dna and the three thread-pool variants) stop at the parse of
its line 54, the unary send `@>>t`; `meteor-contest` stops at error 101, integer expected or out of range, in
`ishift(iand(ishift(15,x), mask),-x)` at its line 207.
