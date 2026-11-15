# begoon_snobol

SnoBegoon: https://github.com/begoon/snobol, the folder examples (the sample programs of a TypeScript SNOBOL4).
Licence: MIT. Version 2adfcf0 (2026-04-17). Read IN PLACE from `/home/resources/collections/snobol4/begoon-snobol/examples` (`ALL.source`); no program of it is stored here.

The programs were CONVERTED IN PLACE by `sno_upcase_edition.py` (Lon 2026-11-15: "You can uppercase the keywords and function names" / "Just do a simple
regex conversion instead. Keep the spacing identical." / one folder a collection): DOS line ends made LF; built-in function names, keywords, the predefined
names, the goto letters and END, RETURN, FRETURN, NRETURN in upper case; an angle-bracket subscript with square brackets; a column-one `;`, `#`, `!` or `|`
comment mark written `*`. One character for one; every string literal and user name is left as written.

| | |
|---|---|
| programs read | 11 |
| rows | 9, each answer `NAME.out` cut twice from `sbl -bf` with identical results |
| declared out | 1 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 1 the oracle ends with an error |
| owed | 1: 1 read standard input the collection ships none for |

No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers, the grading comes later); the cycle grades it.
Built by `util_build_package_suite.py corpus/packages/snobol4/begoon_snobol --lang snobol4 --mine CENSUS.tsv --twice` (the grader 2026-11-15).
