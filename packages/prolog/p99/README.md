# p99

ProP99: Werner Hett's P-99, Ninety-Nine Prolog Problems, his own solutions (the unicamp mirror of his page, as fetched; `index.html` of the
collection is the problem page; no licence file in the collection), read IN PLACE from `/home/packages/prolog/p99`
(`ALL.source`); no program of it is stored here.

A solution file defines its predicate and runs nothing, so each is consulted and then `drive.pl`, OURS (`ALL.launch`: `around - drive.pl`
for the oracle and for SCRIP). The driver holds the example queries the problem page itself states, 46 of them, and runs each one whose
predicate the load defines: it prints the query, then the first answer as a toplevel would (each variable and its value), or `yes`, `no`,
or the formal of the error raised. A solution that loads an earlier one answers that one's example too. NOT ASKED: the three random
examples (p23, p24, p25: no two runs agree) and the two written with `is` over a user function, which swipl 9 no longer has.

| | |
|---|---|
| programs in the collection | 97 (`.prolog`) |
| rows | 55: the solutions whose load answers at least one stated example |
| declared out | 42, `FAKEABLE_NO_OBSERVABLE` in `EXCLUDED.tsv`: the page states no example for them, the load prints nothing, and a dead engine would earn the same |

This folder holds our index (`ALL.csv`, dialect `swi`: swipl cut the answers), each answer `NAME.out` cut from swipl 9.0.4 twice with
identical results, `ALL.omit`, `EXCLUDED.tsv`, `PARTITION.tsv`, and `ORACLE.tsv`: what the oracle answered on all three streams for each
row (exit status, standard output, standard error), a record that is NOT graded (55 rows end 0; two say something on standard error, a
warning of p83 loaded by p92 and a load error of p99). Built by
the project's package builder (the grader 2026-11-14).
No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers now, the grading comes later); the
cycle grades it.
