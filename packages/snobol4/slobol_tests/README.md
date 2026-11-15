# slobol_tests

SnoSlobol: https://gitlab.com/spitbol/slobol (the test and trace programs of a Go SPITBOL).
Licence: MIT. Version 5ef74c1 (2026-04-15). Read IN PLACE from `/home/resources/collections/snobol4/slobol` (`ALL.source`); no program of it is stored here.

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
