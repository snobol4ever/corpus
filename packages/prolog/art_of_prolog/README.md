# art_of_prolog

ProArt: the programs of Sterling and Shapiro, The Art of Prolog, 2nd edition (MIT Press 1994), from the CMU AI Repository
(`lang/prolog/bookcode/aop`, `aop.tgz`; its `0.doc` names the origin `ftp.cwru.edu:/ArtOfProlog/` and states no licence), read IN PLACE
from `/home/packages/prolog/art_of_prolog/pl` (`ALL.source`), the one copy on this box: the 206 files of the archive, each unchanged
under its own name with `.pl` added (the archive names them `program-3.1`, with no extension, in a folder a chapter). No program of it is stored here.

The book's programs define predicates and run nothing, and they state no query: the book does, and the book is not in the
collection. So THE QUERIES ARE OURS, written from a reading of each file (`OUR-QUERIES.tsv`: file, goal): the calls each program was
plainly written to answer and one or two that fail. Each program is consulted and then `drive.pl`, OURS (`ALL.launch`:
`around - drive.pl` for the oracle and for SCRIP; its code is the ProCovington driver's, unchanged), which reads the program's queries
from standard input (`NAME.in`, two terms a query: `q('TEXT', MAX).` and the goal) and answers each as a toplevel would: `?- TEXT`,
then up to MAX answers, each variable and its value a line (`yes` for a query with no variable), a line `;` between two answers, `...`
when MAX were given and more may follow, `no` when there is none, `raised(FORMAL)` for an error.

THIS IS THE FIRST CUT, chapter 3 alone (the grader 2026-11-15):

| | |
|---|---|
| programs in the collection | 206 |
| rows | 24, of chapter 3's 33 programs, answering our 58 queries (`QUERIES.tsv`: all asked for three answers) |
| owed | 182 in `ALL.omit`, NO-OUTPUT: no query of ours is written for them yet. Chapters 1, 2 and 4 to 24 are unread; the nine of chapter 3 are named below |

Chapter 3's nine without a query, each for a measured reason of the text under swipl 9: `program-3.2` and `program-3.7` declare
`op(xfx, 40, lesseq)`, the arguments in an order swipl refuses; `program-3.8a`, `program-3.8b` and `program-3.10` compare successor
terms with `<`; `program-3.14` and `program-3.29` call predicates of other files; `program-3.17` defines `length/2`, a system
predicate; `program-3.32` declares `|` an operator at 950.

THE ANSWERS ARE swipl's on a 1994 text: `program-3.20` and `program-3.21` each define `sort/2`, which swipl refuses as a system
predicate (an ERROR on standard error), so their queries ask the predicates that did load (`permutation`, `ordered`, `insert`);
`program-3.16` holds the book's two definitions of `reverse/2` in one file, so a query gets the answers of both; the programs that
call `append/3` without defining it get swipl's library one. `ORACLE.tsv` holds what the oracle said on all three streams for each
row (exit status, standard output, standard error), NOT graded.

This folder holds our index (`ALL.csv`, dialect `swi`), each answer `NAME.out` cut from swipl 9.0.4 twice with identical results,
`NAME.in`, `OUR-QUERIES.tsv`, `QUERIES.tsv`, `ALL.omit`, `PARTITION.tsv` and `ORACLE.tsv`. Built by `sl_cut.py --form table` (kept
with the grader's hand-off scripts) and
`harness/scripts/util_build_package_suite.py corpus/packages/prolog/art_of_prolog --lang prolog --mine CENSUS.tsv --twice`. No SCRIP
reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers now, the grading comes later); the cycle
grades it.
