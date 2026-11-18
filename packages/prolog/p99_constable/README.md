# p99_constable

ProP99c: James Constable's solutions to P-99, the Ninety-Nine Prolog Problems, grouped by topic in seven files
(https://github.com/jamesconstable/99-prolog-problems at 30a72622a, 2021-03-15; MIT, `LICENSE` at the top of the collection), read IN PLACE
from `/home/packages/prolog/p99_constable` (`ALL.source`); no program of it is stored here. It is a second, independent set of
solutions beside Hett's own (package `p99`).

A solution file defines its predicates and runs nothing; above each solution a comment line `% ?- GOAL.` states the problem's example
query. So each file is consulted and then `drive.pl`, OURS (`ALL.launch`: `around - drive.pl` for the oracle and for SCRIP), which reads
the file's own stated queries from standard input (`NAME.in`, two terms a query: `q('TEXT', MAX).` and the goal) and answers each as a
toplevel would: `?- TEXT`, then up to MAX answers, each variable and its value a line (`yes` for a query with no variable), a line `;`
between two answers, `...` when MAX were given and more may follow, `no` when there is none, `raised(FORMAL)` for an error. The goal is
read from standard input after the load, so it is read under the operators the file declared (p3's `and`, `or`, `equ`).

| | |
|---|---|
| programs in the collection | 7 |
| rows | 6, 50 stated queries asked (`QUERIES.tsv`: 48 for three answers, 2 for one) |
| queries left out | 4: `rnd_select`, `lotto` and `rnd_permu` draw at random (no two runs agree); `my_length(X, [a, b, c])` gives no answer (the file states it with its arguments the other way round from the solution's) |
| declared out | 1, `p6_graphs.pl`, `FAKEABLE_NO_OBSERVABLE` in `EXCLUDED.tsv`: it states no query, so its load prints nothing |

This folder holds our index (`ALL.csv`, dialect `swi`), each answer `NAME.out` cut from swipl 9.0.4 twice with identical results, the
queries `NAME.in` cut by `sl_cut.py --form comment` (kept with the grader's hand-off scripts), `QUERIES.tsv`, `ALL.omit`, `EXCLUDED.tsv`,
`PARTITION.tsv`, and `ORACLE.tsv`: the oracle's exit status, standard output and standard error for each row, NOT graded (six rows end 0
and say nothing on standard error). Built by
`harness/scripts/util_build_package_suite.py corpus/packages/prolog/p99_constable --lang prolog --mine CENSUS.tsv --twice` (the grader
2026-11-14). No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers now, the grading comes
later); the cycle grades it.
