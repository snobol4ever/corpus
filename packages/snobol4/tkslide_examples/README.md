# tkslide_examples

SnoTkslide: https://github.com/tkslide/tkslide, the folder example (the sample programs of the TkS*LIDE SNOBOL4 IDE).
Licence: COPYING, LICENSE HAIKU: All rights are granted; remove no credits. Version 1d22fb8 (2026-02-19). Read IN PLACE from `/home/resources/collections/snobol4/tkslide/example` (`ALL.source`); no program of it is stored here.

The programs were CONVERTED IN PLACE by `sno_upcase_edition.py` (Lon 2026-11-15: "You can uppercase the keywords and function names" / "Just do a simple
regex conversion instead. Keep the spacing identical." / one folder a collection): DOS line ends made LF; built-in function names, keywords, the predefined
names, the goto letters and END, RETURN, FRETURN, NRETURN in upper case; an angle-bracket subscript with square brackets; a column-one `;`, `#`, `!` or `|`
comment mark written `*`. One character for one; every string literal and user name is left as written.

| | |
|---|---|
| programs read | 15 |
| rows | 7, each answer `NAME.out` cut twice from `sbl -bf` with identical results |
| declared out | 3 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 2 the oracle ends with an error; 1 give no answer inside 60 s |
| owed | 5: 5 read standard input the collection ships none for |
| never run | 5, screened out before the census: `echo_server.sno` (it listens on a network port); `example02.sno` (it runs a shell command through HOST(1, ...)); `httpping.sno` (it opens a network connection); `http_req.sno` (it opens a network connection); `http.sno` (it opens a network connection) |

No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers, the grading comes later); the cycle grades it.
Built by `util_build_package_suite.py corpus/packages/snobol4/tkslide_examples --lang snobol4 --mine CENSUS.tsv --twice` (the grader 2026-11-15).
