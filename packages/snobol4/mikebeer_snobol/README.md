# mikebeer_snobol

SnoBeer: the 19 programs (tests, examples, benchmarks) of Mike Beer's SNOBOL4 interpreter in CREXX and C
(https://github.com/mikebeer/snobol at c726b2b; no licence stated), read IN PLACE from
`/home/resources/collections/snobol4/mikebeer-snobol` (`ALL.source`). No program of it is stored here.

| | |
|---|---|
| programs | 19 |
| rows | 11, each answer `NAME.out` cut twice from `sbl -bf` with identical results |
| declared out | 5 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 4 the oracle ends with an error (`wordfreq` twice, `features`, `bench/recursion`), 1 that answers differently on two runs (`tests/errors`) |
| owed | 3, `examples/calc`, `tests/calc` and `tests/functions`: each reads standard input and the collection ships no input for it |

MEASURED 2026-11-15, the oracle's answer against the collection's own `NAME.out`: 4 equal, 4 differ (`bench/loops`, `bench/strings`,
`bench/tables`, `tests/fold`, whose own answer was cut under the interpreter's folding flag), 3 ship none. The answer graded is the
oracle's. No SCRIP reading was taken at the cut (Lon 2026-11-14); the cycle grades it. Built by
`util_build_package_suite.py corpus/packages/snobol4/mikebeer_snobol --lang snobol4 --mine CENSUS.tsv --twice` (the grader 2026-11-15).

CHANGED IN PLACE (skill snobol4 section 7, Lon 2026-11-14: an angle-bracket subscript is rewritten with square brackets where the package lives; the cqo 2026-11-15, row snobol4-beer-tables-patterns-and-two-sieves-spell-their-subscripts-with-square-brackets): bench/tables.sno (11 lines), examples/sieve.sno (3), tests/patterns.sno (5) and tests/sieve.sno (3) spell `NAME<...>` as `NAME[...]`, one character for one, outside string literals and comment lines, since SCRIP refuses the angle form by the ruling of 2026-10-02. `sbl -bf` answers each the same bytes as before, cut twice and equal to its `NAME.out`, so no answer moved.

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 12: 11 print an answer; 1 are refused at compile time (exit 231) and are graded on the line and code of each diagnostic |
| declared out | 2 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 2 answer differently on two runs |
| owed | 5 read standard input and the collection ships no input for them |

## The inputs (2026-11-16 00:xx CST, on Lon's word of 2026-11-15 23:1x: "Write inputs of ours")

5 program(s) of this package read standard input and none ships with it; each is fed `NAME.in`, beside its path in this folder, and every answer is still the oracle's (`sbl -bf`).
THE PROGRAM'S OWN DATA (the lines after its END, which `sbl -r` reads as input and the oracle's `-bf` run does not): `examples/calc.sno`, `examples/wordfreq.sno`, `tests/calc.sno`, `tests/functions.sno`, `tests/wordfreq.sno`.
