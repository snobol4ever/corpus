# bratko_4th

ProBratko: the programs of I. Bratko, Prolog Programming for Artificial Intelligence, 4th edition (Pearson 2012), the figure files as
the author distributed them (`https://github.com/adamcrussell/bratko_4th_edition`, commit 6728caae1a28; no licence file, the readme says
the files were intended for distribution by the author), cloned to and read IN PLACE from
`/home/packages/prolog/bratko_4th` (`ALL.source`); no program of it is stored here.

A figure file defines predicates and runs nothing, and it states no query: the book does, and the book is not in the collection. So
THE QUERIES ARE OURS: 526 of them for 92 files, written from a reading of each file (`OUR-QUERIES.tsv`: file, goal, and in a third
column the text a goal itself reads from standard input), the examples each figure was plainly written to answer (a family relation,
eight queens, a best-first search, a plan, a parse, a learned rule) and one or two that fail or raise. Each file is consulted after
`pre.pl`, OURS, which consults the collection's `frequent.pl` as its readme asks ("to run a program, it is easiest to first load the
file frequent.pl": conc, del, member, the prefix operator not), and before `drive.pl`, OURS (`ALL.launch`: `around pre.pl drive.pl` for
the oracle and for SCRIP), which reads the file's queries from standard input (`NAME.in`, two terms a query: `q('TEXT', MAX).` and the
goal) and answers each as a toplevel would: `?- TEXT`, then up to MAX answers, each variable and its value a line (`yes` for a query
with no variable), a line `;` between two answers, `...` when MAX were given and more may follow, `no` when there is none,
`raised(FORMAL)` for an error.

WHAT A FIGURE LEAVES TO ITS READER IS SUPPLIED BY A SETUP GOAL of that file's queries, a goal that begins `consult(`, `assertz(` or
`use_module(` and is asked first: the figure a program is built on (`consult('fig21_3.pl')` before the ILP programs, the family of
figure 1.8 before the meta-interpreters), an ordering or a problem the book gives in its text (`gt/2` for the sorts and the trees, a
state space with its costs and heuristic for the searches, `impossible/2` for the regression planners, `term/3` for the arch problem,
`max_proof_length/1`), and the library a chapter assumes (`use_module(library(clpr))` for chapter 19). Every one is in
`OUR-QUERIES.tsv` and so in `NAME.in`; nothing under the collection is changed.

| | |
|---|---|
| programs in the collection | 103 |
| rows | 92, answering our 526 queries (`QUERIES.tsv`: 522 asked for three answers, 2 for one; 2 left out, one that does not end inside ten seconds and one that exhausts the stack, the limit of one implementation) |
| declared out | 11 in `EXCLUDED.tsv`, `FAKEABLE_NO_OBSERVABLE` (nothing on standard output as run): `fig22_9`, `fig22_11`, `fig22_13`, `fig24_7`, `fig24_10` and `fig25_14`, each read only after another figure's operators and so asked THROUGH that figure's row (`fig22_8`, `fig24_6_7_10_chess`, `fig25_15`); `fig7_5` and `fig7_6`, SICStus CLP(FD) texts swipl does not read; `fig25_3`, comments only; `frequent.pl` and `time.pl`, the helpers |
| owed | 0 |

THE ANSWERS ARE swipl's, on a text written for another Prolog: `frequent.pl` defines `once/1`, `length/2` and `copy_term/2`, which
swipl refuses with a permission error and keeps its own; a proof of figure 25.1's interpreter ends with a permission error at
`clause(true, _)` after its answers (four of its queries). Each of those is what a SWI-dialect engine answers for this text, and figure
24.6 is asked only what it answers without the combined chess file (figure 24.7's advice names predicates only that file defines).
`ORACLE.tsv` holds what the oracle said on all three
streams for each row (exit status, standard output, standard error; all 92 rows write to standard error), NOT graded.

This folder holds our index (`ALL.csv`, dialect `swi`), each answer `NAME.out` cut from swipl 9.0.4 twice with identical results,
`NAME.in`, `pre.pl`, `drive.pl`, `OUR-QUERIES.tsv`, `QUERIES.tsv`, `ALL.omit`, `EXCLUDED.tsv`, `PARTITION.tsv` and `ORACLE.tsv`. Built
by `sl_cut.py --form table --before pre.pl` (kept with the grader's hand-off scripts) and
the project's package builder (the grader
2026-11-15). No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers now, the grading comes
later); the cycle grades it.
