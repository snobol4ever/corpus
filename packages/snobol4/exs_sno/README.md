# exs_sno

SnoExs: https://github.com/bitfragment/exs-sno (exercises from Forte 1967 and Griswold, Poage, Polonsky 1971).
Licence: none stated; no program of it is stored in the corpus. Version 990fa37 (2017-11-29). Read IN PLACE from `/home/resources/collections/snobol4/bitfragment-exs-sno` (`ALL.source`); no program of it is stored here.

The programs were CONVERTED IN PLACE by `sno_upcase_edition.py` (Lon 2026-11-15: "You can uppercase the keywords and function names" / "Just do a simple
regex conversion instead. Keep the spacing identical." / one folder a collection): DOS line ends made LF; built-in function names, keywords, the predefined
names, the goto letters and END, RETURN, FRETURN, NRETURN in upper case; an angle-bracket subscript with square brackets; a column-one `;`, `#`, `!` or `|`
comment mark written `*`. One character for one; every string literal and user name is left as written.

| | |
|---|---|
| programs read | 26 |
| rows | 12, each answer `NAME.out` cut twice from `sbl -bf` with identical results |
| declared out | 2 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 2 give no answer inside 60 s |
| owed | 12: 12 print nothing on standard output |

No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers, the grading comes later); the cycle grades it.
Built by `util_build_package_suite.py corpus/packages/snobol4/exs_sno --lang snobol4 --mine CENSUS.tsv --twice` (the grader 2026-11-15).
