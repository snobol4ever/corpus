# gpc_tests

PasGpc: the GNU Pascal compiler's own test suite, `p/test` of the GPC source tree (https://github.com/hebisch/gpc at 21ec0ceb, 2024-09-01;
GPL, `COPYING` in the clone), read IN PLACE from `/home/packages/pascal/gpc_tests/p/test` (`ALL.source`); no program of it is
stored here.

A GPC test is one program that prints its own verdict: the one line `OK`, or the text of the `NAME.out` the suite ships beside it
(`p/test/README`). The oracle here is fpc 3.2.2, which is not the compiler the tests were written for, so each program was tried up fpc's
dialect ladder (iso first, then fpc, objfpc, delphi, tp; `dialect` in `ALL.csv` is the mode that compiled it) and A ROW IS A PROGRAM
WHOSE fpc ANSWER IS THE TEST'S OWN: fpc agrees with what the test says is right, so SCRIP is graded against an answer two parties give.

| | |
|---|---|
| programs the census read | 3921 |
| rows | 896: iso 700, fpc 169, delphi 13, objfpc 9, tp 5; every row ends 0 |
| declared out | 3009 in `EXCLUDED.tsv`: 2640 `NO_ORACLE_ANSWER` (2509 fpc compiles in no mode: GNU Pascal's own extensions; 127 fpc answers otherwise than the test, a line `failed`, another text or a run-time error, so no oracle agrees with the test; 4 that wait for ever or draw from the clock), 323 `NOT_A_UNIT_TEST` (units and include files), 39 `FAKEABLE_NO_OBSERVABLE`, 7 `NEEDS_GRAPHICS_FACILITY` |
| owed | 16 that read standard input: the suite ships a `NAME.in` for each, which enters as a line of `ALL.stdin` and a re-cut of those 16 |
| not read | 1726 the suite does not run as plain programs (its WRONG tests, whose compilation must fail; its WARN tests; the tests run by their own `.run` script): the list with each reason is `gpc_skip.tsv`, kept with the grader's hand-off scripts (`/home/resources/progress/handoffs/grader-2026-11-14`) |

This folder holds our index (`ALL.csv`), each answer `NAME.out` cut from fpc 3.2.2 twice with identical results, `ALL.omit` (every
program the census left out, with its reason), `EXCLUDED.tsv` and `PARTITION.tsv`. Built by
`harness/scripts/util_build_package_suite.py corpus/packages/pascal/gpc_tests --lang pascal --mine CENSUS.tsv --mine-skip gpc_skip.tsv --mine-jobs 4 --mine-cap 60`
(the grader 2026-11-14, a census of about nine hours), then `gpc_own_answer.py` (kept with the hand-off scripts), which took the 127
entries fpc answers otherwise out of the index. The oracle's standard error was not recorded for this package (the telemetry table of the
newer packages, `ORACLE.tsv`, is made for Prolog launches only so far); its exit status is `want_rc`, 0 for all 896. No SCRIP reading was
taken at the cut (Lon 2026-11-14: host the container with the oracle's answers now, the grading comes later); the cycle grades it.

## The re-cut with GNU Pascal (the grader 2026-11-20)

Lon, in the grader's window: "Yes, build gpc and cut a sample" / "keep on cutting, grading, and scoring." GNU Pascal, the compiler these tests were written for,
is the second Pascal oracle (gpc 20070904 on gcc-3.4.6, built on this box: /home/packages/pascal/gpc-20070904/BUILD.md; skill pascal section 1), asked as the last
rung of the ladder (`--mine-dialects iso,fpc,objfpc,delphi,tp,gpc`), only for a program fpc compiles in no mode. Its entries carry the dialect cell `gpc`.

| | |
|---|---|
| programs the census read | 3921 |
| rows | 3201: gpc 2296, iso 708, fpc 169, delphi 13, objfpc 10, tp 5 (gpc_own_check.py, the counts after the 142 below left the index) |
| left the index, not the test's own answer | 142 (`NOT-ITS-OWN-ANSWER` in ALL.omit, NO_ORACLE_ANSWER in EXCLUDED.tsv): fpc 127, gpc 15 |
| refused by both oracles | 165 |
| owed | 22 NEEDS-INPUT and 11 NO-OUTPUT, each a stdin or an exit status to rule out first |

The ladder's fpc rungs run first, so every entry cut before is cut as before. A gpc entry reads red on SCRIP until SCRIP reads GNU Pascal (`scrip --dialect=gpc`
is refused today): a row owed to the Pascal front end. The proof of the cut: /home/resources/progress/handoffs/grader-2026-11-20 (gpc_recut.sh, gpc_tests_cut.log,
gpc_own_check.py, gpc_not_own.tsv).
