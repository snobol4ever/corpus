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
