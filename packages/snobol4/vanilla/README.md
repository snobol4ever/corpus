# vanilla

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 19: 11 print an answer; 8 end with SPITBOL's run-time error and are graded on its text and exit status |
| declared out | 1 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 1 give no answer inside 60 s |
| owed | 1 read standard input and the collection ships no input for them |

## The inputs (2026-11-16 00:xx CST, on Lon's word of 2026-11-15 23:1x: "Write inputs of ours")

1 program(s) of this package read standard input and none ships with it; each is fed `NAME.in`, beside its path in this folder, and every answer is still the oracle's (`sbl -bf`).
OURS, written by the grader to exercise the program as its code reads (a few lines of text, numbers, a name, moves of a game, statements to run): `labcent.sno`.

CHANGED IN PLACE (skill snobol4 section 7, Lon 2026-11-14: an angle-bracket subscript is rewritten with square brackets where the package lives; the officer_10 2026-11-17, row snobol4-vanilla-bitzer-rpoem-wordsize-and-cor24-eliza-spell-their-subscripts-with-square-brackets): bitzer.sno (4 lines), rpoem.sno (6) and wordsize.sno (2) spell `NAME<...>` as `NAME[...]`, one character for one, outside string literals and comment lines, since SCRIP refuses the angle form by the ruling of 2026-10-02 (a computed goto `:S<CODE>` is a goto, not a subscript, and stays; rpoem line 111 builds the subscript of a CODE string, written `[RANDOM(` and `),2]` by hand). `sbl -bf` answers each the same bytes twice, equal to its `NAME.out`, so no answer moved.

CASE CONVERTED IN PLACE (skill snobol4 section 7, Lon 2026-11-15: "You can uppercase the keywords and function names..." / "Just do a simple regex conversion instead. Keep the spacing identical."; officer_09 2026-11-17, row snobol4-five-lower-case-programs-of-vanilla-and-spitbol-88-are-upper-cased-in-place-and-cut-again): bnf.sno (31 lines), demo.sno (44), labcent.sno (19) and vinside.sno (33) are written in lower case for a case-folding SNOBOL4, so `sbl -bf` ended each at its first lower-case keyword with error 251. Their keywords, built-in function names, predefined names and goto letters are now upper case, one character for one, by `sno_upcase_edition.py`; a user's name, a label and a string literal are as written. The converter's one fault is mended by hand: it wrote the labels `d>` and `d<` of demo.sno, which the program reaches through `$('d' c)`, and its direct gotos `:s<code>`, with square brackets, and they stand as written. Their answers are cut again from `sbl -bf`, twice: bnf ends error 116 (its INPUT opens BNF.DAT, and the file is bnf.dat), demo ends error 251 at line 8 (&parm, a keyword SPITBOL does not define), labcent reads labcent.in, vinside ends error 22 at line 294.
