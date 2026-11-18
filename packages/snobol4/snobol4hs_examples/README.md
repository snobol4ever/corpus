# snobol4hs_examples

SnoHs: https://github.com/meln5674/snobol4hs, the folder examples (the sample programs of a Haskell SNOBOL4), each .snobol4 extension written .sno.
Licence: MIT-style (LICENSE: Copyright (c) 2016 Andrew Melnick). Version c378692 (2016-11-05). Read IN PLACE from `/home/packages/snobol4/snobol4hs_examples/examples` (`ALL.source`); no program of it is stored here.

The programs were CONVERTED IN PLACE by `sno_upcase_edition.py` (Lon 2026-11-15: "You can uppercase the keywords and function names" / "Just do a simple
regex conversion instead. Keep the spacing identical." / one folder a collection): DOS line ends made LF; built-in function names, keywords, the predefined
names, the goto letters and END, RETURN, FRETURN, NRETURN in upper case; an angle-bracket subscript with square brackets; a column-one `;`, `#`, `!` or `|`
comment mark written `*`. One character for one; every string literal and user name is left as written.

| | |
|---|---|
| programs read | 15 |
| rows | 8, each answer `NAME.out` cut twice from `sbl -bf` with identical results |
| declared out | 1 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 1 the oracle ends with an error |
| owed | 6: 3 read standard input the collection ships none for; 3 print nothing on standard output |

No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers, the grading comes later); the cycle grades it.
Built by `util_build_package_suite.py corpus/packages/snobol4/snobol4hs_examples --lang snobol4 --mine CENSUS.tsv --twice` (the grader 2026-11-15).

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 11: 8 print an answer; 3 print nothing and are graded by exit status |
| owed | 4 read standard input and the collection ships no input for them |

## The inputs (2026-11-16 00:xx CST, on Lon's word of 2026-11-15 23:1x: "Write inputs of ours")

4 program(s) of this package read standard input and none ships with it; each is fed `NAME.in`, beside its path in this folder, and every answer is still the oracle's (`sbl -bf`).
OURS, written by the grader to exercise the program as its code reads (a few lines of text, numbers, a name, moves of a game, statements to run): `basic.sno`, `copier.sno`, `lettercount.sno`, `unevaluated.sno`.
