# slobol_tests

SnoSlobol: https://gitlab.com/spitbol/slobol (the test and trace programs of a Go SPITBOL).
Licence: MIT. Version 5ef74c1 (2026-04-15). Read IN PLACE from `/home/packages/snobol4/slobol_tests` (`ALL.source`); no program of it is stored here.

The programs were CONVERTED IN PLACE by `sno_upcase_edition.py` (Lon 2026-11-15: "You can uppercase the keywords and function names" / "Just do a simple
regex conversion instead. Keep the spacing identical." / one folder a collection): DOS line ends made LF; built-in function names, keywords, the predefined
names, the goto letters and END, RETURN, FRETURN, NRETURN in upper case; an angle-bracket subscript with square brackets; a column-one `;`, `#`, `!` or `|`
comment mark written `*`. One character for one; every string literal and user name is left as written.

| | |
|---|---|
| programs read | 19 |
| rows | 8, each answer `NAME.out` cut twice from `sbl -bf` with identical results |
| declared out | 5 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 4 the oracle ends with an error; 1 answer differently on two runs |
| owed | 6: 5 read standard input the collection ships none for; 1 print nothing on standard output |

No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers, the grading comes later); the cycle grades it.
Built by `util_build_package_suite.py corpus/packages/snobol4/slobol_tests --lang snobol4 --mine CENSUS.tsv --twice` (the grader 2026-11-15).

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 13: 8 print an answer; 3 end with SPITBOL's run-time error and are graded on its text and exit status; 1 are refused at compile time (exit 231) and are graded on the line and code of each diagnostic; 1 print nothing and are graded by exit status |
| declared out | 1 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 1 answer differently on two runs |
| owed | 5 read standard input and the collection ships no input for them |

## The inputs (2026-11-16 00:xx CST, on Lon's word of 2026-11-15 23:1x: "Write inputs of ours")

5 program(s) of this package read standard input and none ships with it; each is fed `NAME.in`, beside its path in this folder, and every answer is still the oracle's (`sbl -bf`).
THE PROGRAM'S OWN DATA (the lines after its END, which `sbl -r` reads as input and the oracle's `-bf` run does not): `test/def.sbl`.
OURS, written by the grader to exercise the program as its code reads (a few lines of text, numbers, a name, moves of a game, statements to run): `test/cfreq.sbl`, `test/lower.sbl`, `test/trim.sbl`, `trace/oops.sbl`.
