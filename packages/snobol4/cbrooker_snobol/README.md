# cbrooker_snobol

SnoBrooker: https://github.com/cbrooker-27/snobol (SNOBOL4 programs from a college course).
Licence: none stated; no program of it is stored in the corpus. Version 0201644 (2021-01-09). Read IN PLACE from `/home/packages/snobol4/cbrooker_snobol` (`ALL.source`); no program of it is stored here.

The programs were CONVERTED IN PLACE by `sno_upcase_edition.py` (Lon 2026-11-15: "You can uppercase the keywords and function names" / "Just do a simple
regex conversion instead. Keep the spacing identical." / one folder a collection): DOS line ends made LF; built-in function names, keywords, the predefined
names, the goto letters and END, RETURN, FRETURN, NRETURN in upper case; an angle-bracket subscript with square brackets; a column-one `;`, `#`, `!` or `|`
comment mark written `*`. One character for one; every string literal and user name is left as written.

| | |
|---|---|
| programs read | 22 |
| rows | 2, each answer `NAME.out` cut twice from `sbl -bf` with identical results |
| declared out | 9 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 8 the oracle ends with an error; 1 give no answer inside 60 s |
| owed | 11: 8 read standard input the collection ships none for; 3 print nothing on standard output |

No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers, the grading comes later); the cycle grades it.
Built by `util_build_package_suite.py corpus/packages/snobol4/cbrooker_snobol --lang snobol4 --mine CENSUS.tsv --twice` (the grader 2026-11-15).

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 8: 2 print an answer; 3 end with SPITBOL's run-time error and are graded on its text and exit status; 3 print nothing and are graded by exit status |
| declared out | 5 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 4 answer differently on two runs; 1 give no answer inside 60 s |
| owed | 9 read standard input and the collection ships no input for them |

## The inputs (2026-11-16 00:xx CST, on Lon's word of 2026-11-15 23:1x: "Write inputs of ours")

9 program(s) of this package read standard input and none ships with it; each is fed `NAME.in`, beside its path in this folder, and every answer is still the oracle's (`sbl -bf`).
OURS, written by the grader to exercise the program as its code reads (a few lines of text, numbers, a name, moves of a game, statements to run): `bnf.sno`, `budget.sno`, `cross.sno`, `fcounts.sno`, `labcent.sno`, `length.sno`, `tictac.sno`, `triplet.sno`, `words.sno`.
