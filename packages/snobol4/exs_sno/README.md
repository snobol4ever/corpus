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

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 24: 12 print an answer; 12 print nothing and are graded by exit status |
| declared out | 2 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 2 give no answer inside 60 s |
