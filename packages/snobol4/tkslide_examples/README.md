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

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 8: 7 print an answer; 1 end with SPITBOL's run-time error and are graded on its text and exit status |
| declared out | 1 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 1 give no answer inside 60 s |
| owed | 6 read standard input and the collection ships no input for them |
| never run | 5, screened out before the census (a network connection, a shell command, the host) |

## The inputs (2026-11-16 00:xx CST, on Lon's word of 2026-11-15 23:1x: "Write inputs of ours")

7 program(s) of this package read standard input and none ships with it; each is fed `NAME.in`, beside its path in this folder, and every answer is still the oracle's (`sbl -bf`).
OURS, written by the grader to exercise the program as its code reads (a few lines of text, numbers, a name, moves of a game, statements to run): `ethiopian_multiplication.sno`, `example01.sno`, `example03.sno`, `example04.sno`, `insert_sort_draft.sno`, `price_fraction01.sno`, `resistance.sno`.
