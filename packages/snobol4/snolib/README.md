# snolib

SnoLib: the self-checking tests of Fred Weigel's SNOBOL4 library for CSNOBOL4 (https://github.com/ratboy666/snolib at fc11c07; MIT,
Copyright (c) 2021 Fred Weigel), read IN PLACE from `/home/resources/collections/snobol4/snolib` (`ALL.source`). No program of it is
stored here. The library is a module a function (`NAME.SNO`, its include form `NAME.INC`) with a test `NAME.tst`: a test sets
`&CODE = 1`, checks the function, and clears `&CODE` only when every check held, so its exit status is its verdict and it prints
nothing.

GRADED BY EXIT STATUS (Lon 2026-11-15, in the grader's window: "So change the standing order to allow a silent program to use the
return/exit code."; skill suites-and-grading section 4): a silent test is an entry whose answer is empty and whose `want_rc` is the
oracle's exit status; the engine must print nothing and end with that status. Cut with `--mine-silent-rc`.

CONVERTED IN PLACE (Lon the same day: a simple regex, the spacing identical, one folder a collection): each test that reaches no
external load, host call, shell or socket through its includes is renamed `NAME.tst.sno`, the name the miner reads, and its first
line `#!/usr/bin/bash` is written as a comment (`*!`); the `.INC` files have DOS line ends made LF and CSNOBOL4's other column-one
comment marks written `*`. NEVER RUN: the 51 tests whose includes reach `LOAD`, the host, a shell or a socket (the library ships six
shared objects); they keep the name `.tst`, which the miner does not read. The module sources `NAME.SNO` are not programs and are
not read.

| | |
|---|---|
| tests in the collection | 119 |
| read | 69 (the 68 clean tests and `g360.spt`, a program of the collection the miner also found) |
| rows | 63: 61 silent, graded by exit status (60 end 0, 1 ends 1 under SPITBOL, which is the oracle's answer for that CSNOBOL4 test), and 2 that print |
| declared out | 6 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 4 the oracle ends with an error (`UNIQUE`, `TPROFILE`, `GOTOS`, `FOREACH`), 2 answer differently on two runs |
| never run | 51, screened (`snolib_screen.tsv` with the grader's hand-off scripts of 2026-11-15) |

No SCRIP reading was taken at the cut (Lon 2026-11-14); the cycle grades it. Built by `util_build_package_suite.py
corpus/packages/snobol4/snolib --lang snobol4 --mine CENSUS.tsv --mine-silent-rc --twice` (the grader 2026-11-15).
