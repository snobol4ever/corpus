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

CHANGED IN PLACE (skill snobol4 section 7, Lon 2026-11-14: an angle-bracket subscript is rewritten with square brackets where the package lives; the cqo 2026-11-15, row snobol4-lib-ai-aopa-and-cata-spell-their-code-strings-subscripts-with-square-brackets): the code strings that `AI.INC` (line 32), `CATA.INC` (lines 32 and 33) and `AOPA.INC` (lines 33, 34, 36 and 39) hand to `SEQ`, which compiles them with `CODE`, spell `NAME<...>` as `NAME[...]`, one character for one. The collection's conversion leaves a string literal alone, and these strings are program text that SCRIP's `CODE` refuses in the angle form by the ruling of 2026-10-02. `sbl -bf` ends `AI.tst`, `AOPA.tst` and `CATA.tst` rc 0 with no output for both spellings, each run twice, so no answer moved. The other includes that hand `SEQ` an angle-bracket code string (ATOL, APPENDA, CGI, DEDUPA, JSON, KEYST, MERGET, PRUNET, PSQL, TPROFILE, TRUNC) are as they were: the store read the package 59 of 63 with only AI, AOPA, CATA and LPROG red, so no graded test fails at those lines today (an inference from the reading; the lines were not traced).

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 68: 2 print an answer; 4 end with SPITBOL's run-time error and are graded on its text and exit status; 1 are refused at compile time (exit 231) and are graded on the line and code of each diagnostic; 61 print nothing and are graded by exit status |
| declared out | 1 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 1 answer differently on two runs |
