# strange_code_book

SnoStrange: https://github.com/rkneusel9/StrangeCodeBook, chapters 5 and 10 (the SNOBOL4 programs of Kneusel, Strange Code, No Starch 2022).
Licence: MIT. Version 1c46565 (2024-10-24). Read IN PLACE from `/home/resources/collections/snobol4/strange-code-book` (`ALL.source`); no program of it is stored here.

The programs were CONVERTED IN PLACE by `sno_upcase_edition.py` (Lon 2026-11-15: "You can uppercase the keywords and function names" / "Just do a simple
regex conversion instead. Keep the spacing identical." / one folder a collection): DOS line ends made LF; built-in function names, keywords, the predefined
names, the goto letters and END, RETURN, FRETURN, NRETURN in upper case; an angle-bracket subscript with square brackets; a column-one `;`, `#`, `!` or `|`
comment mark written `*`. One character for one; every string literal and user name is left as written.

| | |
|---|---|
| programs read | 20 |
| rows | 7, each answer `NAME.out` cut twice from `sbl -bf` with identical results |
| declared out | 9 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 3 the oracle ends with an error; 6 give no answer inside 60 s |
| owed | 4: 3 read standard input the collection ships none for; 1 print nothing on standard output |

No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers, the grading comes later); the cycle grades it.
Built by `util_build_package_suite.py corpus/packages/snobol4/strange_code_book --lang snobol4 --mine CENSUS.tsv --twice` (the grader 2026-11-15).
