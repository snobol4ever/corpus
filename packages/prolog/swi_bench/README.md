# swi_bench

PrologSwiBench: the 35 programs of the SWI-Prolog benchmark suite (https://github.com/SWI-Prolog/bench at d7109d7: the van Roy
benchmarks and the ones added to them; no licence file, several programs say public domain in their header), read IN PLACE from
`/home/packages/prolog/swi_bench/programs` (`ALL.source`). No program of it is stored here.

Each program is one file that defines `top/0` and runs nothing by itself; the suite's own `run.pl` calls `top` in a timed loop. So
the one query is OURS, `top.` (`OUR-QUERIES.tsv`), put through `drive.pl`, OURS (`ALL.launch`: `around - drive.pl`; its code is the
ProCovington driver's, unchanged): the answer is whatever the program prints, then `?- top.` and `yes`, `no` or `raised(FORMAL)`.
Most of the programs check their own result inside `top` and print nothing, so their answer is the two lines `?- top.` and `yes`.

| | |
|---|---|
| programs | 35 |
| rows | 35, each answer `NAME.out` cut twice from swipl 9.0.4 with identical results |

THIS IS THE CORRECTNESS HALF. A benchmark is a test first (skill suites-and-grading 4): each kernel has an answer and is graded
for it. Its speed, an instruction count for one `top` (skill speed-measurement), is not measured here yet. `ORACLE.tsv` holds what
the oracle said on all three streams for each row, NOT graded. Cut on Lon's word of 2026-11-15 ("We want the SWI benchmarks and
ECLiPSe benchmarks."). No SCRIP reading was taken at the cut (Lon 2026-11-14); the cycle grades it. Built by `sl_cut.py --form
table` and `util_build_package_suite.py corpus/packages/prolog/swi_bench --lang prolog --mine CENSUS.tsv --twice` (the grader
2026-11-15).
