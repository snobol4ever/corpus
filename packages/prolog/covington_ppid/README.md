# covington_ppid

ProCovington: the programs of Covington, Nute and Vellino, Prolog Programming in Depth (Scott, Foresman 1988), the Quintus Prolog port
of the CMU AI Repository (`lang/prolog/bookcode/ppid/quintus.tgz`, version 24-MAY-88; "Copyright (c) 1987 by Michael Covington",
"Non-commercial distribution of this file is permitted" in each file), unpacked to and read IN PLACE from
`/home/packages/prolog/covington_ppid` (`ALL.source`); no program of it is stored here.

Most of the book's programs define predicates and run nothing, and they state no query: the book does, and the book is not in the
collection. So THE QUERIES ARE OURS: 135 of them for 28 programs, written from a reading of each file (`OUR-QUERIES.tsv`: file, goal),
the examples each program was plainly written to answer (a parse, a sort, a path through the maze, the map coloured) and one or two
that fail or raise. Each program is consulted and then `drive.pl`, OURS (`ALL.launch`: `around - drive.pl` for the oracle and for
SCRIP), which reads the program's queries from standard input (`NAME.in`, two terms a query: `q('TEXT', MAX).` and the goal) and
answers each as a toplevel would: `?- TEXT`, then up to MAX answers, each variable and its value a line (`yes` for a query with no
variable), a line `;` between two answers, `...` when MAX were given and more may follow, `no` when there is none, `raised(FORMAL)` for
an error. Three more programs print by themselves at their load and need no query (`capitals`, `object`, `toplevel`).

| | |
|---|---|
| programs in the collection | 56 |
| rows | 31: 28 answering our 135 queries (`QUERIES.tsv`: all asked for three answers), 3 that print at their load |
| declared out | 23 in `EXCLUDED.tsv`: 16 `FAKEABLE_NO_OBSERVABLE` (libraries and menu or screen routines we wrote no query for: reading the keyboard, ANSI screen codes, the defeasible reasoner and its two knowledge bases, which swipl cannot read as written), 7 `NO_ORACLE_ANSWER` (interactive programs that wait at a prompt for ever with no input) |
| owed | 0: `scholar.pl` is an entry with a scripted session of ours (2026-11-16) and `template.pl` is out (`EXCLUDED.tsv`) |

THE ANSWERS ARE swipl's, on a 1988 Quintus text: every file ends with a DOS end-of-file character swipl reports as a syntax error after
the last clause; `"s"` is a string to swipl 9 and not a list of codes, so `morph.pl`'s plural rule never fires; `cannibal.pl`'s two
boat pictures are atoms with an escape swipl refuses, so its picture stops at the first boat with an existence error; `realsqrt.pl`
asks for a library swipl does not have. Each of those is what a SWI-dialect engine answers for this text, and `ORACLE.tsv` holds what
the oracle said on all three streams for each row (exit status, standard output, standard error), NOT graded.

This folder holds our index (`ALL.csv`, dialect `swi`), each answer `NAME.out` cut from swipl 9.0.4 twice with identical results,
`NAME.in`, `OUR-QUERIES.tsv`, `QUERIES.tsv`, `ALL.omit`, `EXCLUDED.tsv`, `PARTITION.tsv` and `ORACLE.tsv`. Built by
`sl_cut.py --form table` (kept with the grader's hand-off scripts) and
`harness/scripts/util_build_package_suite.py corpus/packages/prolog/covington_ppid --lang prolog --mine CENSUS.tsv --twice` (the grader
2026-11-14). No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers now, the grading comes
later); the cycle grades it.

## The session of ours (2026-11-16 03:xx CST, the grader)

`scholar.pl`, the XSHELL expert system for scholarship eligibility, asks its questions as it loads. `scholar.in` is a session of OURS, one
answer a question in the order it asks them: a minimum support of 1000, a grade average of 3.5, yes to a career in computer services (so the
ADAPSO Program is found), Return, freshman, then no to the four questions that follow and no to another consultation. Cut from swipl 9.0.4
twice a second apart by the mine road, identical. `template.pl` is out: it reads sentences until Ctrl-C, and at the end of input its
`readstring_aux` recurses until swipl's 1 GB stack limit ends the run, the limit of one implementation.

