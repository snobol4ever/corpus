# simply_logical

ProSimply: the code files of Peter Flach's Simply Logical: Intelligent Reasoning by Example, the online edition
(https://github.com/simply-logical/simply-logical at 76d04f632, 2024-12-17; CC BY-NC-SA 4.0, `LICENCE` at the top of the collection), its
`src/code` folder read IN PLACE from `/home/packages/prolog/simply_logical/src/code` (`ALL.source`); no program of it is stored
here.

A code file defines its predicates and runs nothing; 93 of the 145 state queries in a SWISH block at their end, `/** <examples> ... */`, whose lines
`?- GOAL.` are the queries the book puts to that program. So each file is consulted and then `drive.pl`, OURS (`ALL.launch`:
`around - drive.pl` for the oracle and for SCRIP), which reads the file's own stated queries from standard input (`NAME.in`, two terms a
query: `q('TEXT', MAX).` and the goal) and answers each as a toplevel would: `?- TEXT`, then up to MAX answers, each variable and its
value a line (`yes` for a query with no variable), a line `;` between two answers, `...` when MAX were given and more may follow, `no`
when there is none, `raised(FORMAL)` for an error. The goal is read from standard input after the load, so it is read under the
operators the file declared, and the driver itself is written with no operator but `:-` and the comma, so a file that redeclares one
(9.1.1 makes `->` an operator of its own) cannot change how the driver reads.

| | |
|---|---|
| programs in the collection | 145 |
| rows | 91, 197 stated queries asked (`QUERIES.tsv`: 195 for three answers, 2 for one, the second never coming) |
| queries left out | 16: 13 the oracle cannot read (the file's own clauses or the query use an operator the file does not declare by itself, SWISH loading it beside another file), `sum2(Sum)` and `fib(30,F)` give no answer inside ten seconds or the stack, `explain(flies(dracula),E)` of 8.1.2 reaches swipl's own library predicate and answers with the path of the folder it ran in |
| declared out | 54, `FAKEABLE_NO_OBSERVABLE` in `EXCLUDED.tsv`: 52 files state no query and 2 keep none, so the load prints nothing |

This folder holds our index (`ALL.csv`, dialect `swi`), each answer `NAME.out` cut from swipl 9.0.4 twice with identical results, the
queries `NAME.in` cut by `sl_cut.py` (kept with the grader's hand-off scripts), `QUERIES.tsv`, `ALL.omit`, `EXCLUDED.tsv`,
`PARTITION.tsv`, and `ORACLE.tsv`: the oracle's exit status, standard output and standard error for each row, NOT graded. All 91 rows
end 0; nine say something on standard error while loading (a SWISH directive swipl does not have, `use_rendering/1`; a clause swipl
cannot read and skips), and their answers are what swipl gives after that load. Built by
`harness/scripts/util_build_package_suite.py corpus/packages/prolog/simply_logical --lang prolog --mine CENSUS.tsv --twice` (the grader
2026-11-14). No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers now, the grading comes
later); the cycle grades it.
