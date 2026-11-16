# jmu_cs430

SnoJmu: the 42 SNOBOL4 teaching programs of a James Madison University course, CS430
(https://users.cs.jmu.edu/adamses/Web/CS430/CodeExamples/Snobol/ 30 programs, and .../CS430/Lectures/snobol4p/ 12; fetched 2026-11-15;
no licence stated), read IN PLACE from `/home/resources/collections/snobol4/jmu-cs430` (`ALL.source`). No program of it is stored here.

The programs came with DOS line ends, which SPITBOL refuses as an illegal character, and many are in lower case. So they were
CONVERTED IN PLACE by `sno_upcase_edition.py` (Lon 2026-11-15: "You can uppercase the keywords and function names" / "Just do a simple
regex conversion instead. Keep the spacing identical."): line ends made LF, each `.SNO` extension written `.sno`, and built-in function
names, keywords, the predefined names, the goto letters and END, RETURN, FRETURN, NRETURN in upper case, an angle-bracket subscript
with square brackets; one character for one, every string literal and user name left as written.

| | |
|---|---|
| programs | 42 |
| rows | 20, each answer `NAME.out` cut twice from `sbl -bf` with identical results (12 answered before the case conversion) |
| declared out | 11 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 7 the oracle ends with an error, 3 give no answer inside 60 s, 1 answers differently on two runs |
| owed | 11: 10 read standard input and the collection ships no input for them, 1 prints nothing |

No SCRIP reading was taken at the cut (Lon 2026-11-14); the cycle grades it. Built by
`util_build_package_suite.py corpus/packages/snobol4/jmu_cs430 --lang snobol4 --mine CENSUS.tsv --twice` (the grader 2026-11-15).

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 25: 20 print an answer; 3 end with SPITBOL's run-time error and are graded on its text and exit status; 1 are refused at compile time (exit 231) and are graded on the line and code of each diagnostic; 1 print nothing and are graded by exit status |
| declared out | 6 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 3 answer differently on two runs; 3 give no answer inside 60 s |
| owed | 11 read standard input and the collection ships no input for them |

## The inputs (2026-11-16 00:xx CST, on Lon's word of 2026-11-15 23:1x: "Write inputs of ours")

13 program(s) of this package read standard input and none ships with it; each is fed `NAME.in`, beside its path in this folder, and every answer is still the oracle's (`sbl -bf`).
OURS, written by the grader to exercise the program as its code reads (a few lines of text, numbers, a name, moves of a game, statements to run): `CodeExamples/EXAMPLE.sno`, `CodeExamples/FINAL.sno`, `CodeExamples/FINAL2.sno`, `CodeExamples/FINAL3.sno`, `CodeExamples/SECOND.sno`, `CodeExamples/areplace2.sno`, `CodeExamples/myTry.sno`, `CodeExamples/myplace.sno`, `CodeExamples/vowels.sno`, `CodeExamples/vowels2.sno`, `snobol4p/CODE.sno`, `snobol4p/richter.sno`, `snobol4p/test4.sno`.
