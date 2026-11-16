# spitbol_88

Sno88: the programs of Catspaw's SPITBOL-88 distribution (https://github.com/spitbol/88-binary at 1b8a7a6; BSD 2-clause, (c) Copyright
1985, 1994 Catspaw, Incorporated): `DEMOS` (9), `SANDLP` (4, with the function library of Griswold's String and List Processing in
SNOBOL4 as 26 include files) and the root's `TEST` and `TICTAC`, read IN PLACE from
`/home/resources/collections/snobol4/spitbol-88-binary` (`ALL.source`). No program of it is stored here.

Changed in place in the clone: those 15 programs have their `.SPT` extension written `.spt` and their DOS line ends made LF (SPITBOL
refuses a CR as an illegal character); nothing else. NEVER RUN: `CODE.SPT` (it runs shell commands through HOST) and the 14 programs
of `EXTERNAL` (they load external function libraries); they keep the name `.SPT`, which the miner does not read.

| | |
|---|---|
| programs read | 15 |
| rows | 2, `DEMOS/ELIZA` and `SANDLP/PROPERTY`, each answer cut twice from `sbl -bf` |
| declared out | 4 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: `GOTOS`, `KWIC2` and `BNF` the oracle ends with an error, `TREESORT` ends with an error whose text differs between two runs (with or without its `TREESORT.IN`) |
| owed | 9: `KALAH`, `SENTENC`, `CONCORD` and the two `TICTAC` read standard input the collection ships none for; `ATN`, `KWIC1`, `KEYWORD` and `TEST` print nothing as they are run (`KEYWORD` opens `keywords` and `keytext`, which the folder holds in upper case) |

STILL TO DO: the 26 functions of `SANDLP` are a library with no program that calls them; each needs a driver of ours, as Gimpel's did.
The demos are older texts of programs the package `spitbol_x64_tests` already grades. No SCRIP reading was taken at the cut (Lon
2026-11-14); the cycle grades it. Built by `util_build_package_suite.py corpus/packages/snobol4/spitbol_88 --lang snobol4 --mine
CENSUS.tsv --twice` (the grader 2026-11-15).

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 9: 3 print an answer; 2 end with SPITBOL's run-time error and are graded on its text and exit status; 4 print nothing and are graded by exit status |
| owed | 6 read standard input and the collection ships no input for them |

## The inputs (2026-11-16 00:xx CST, on Lon's word of 2026-11-15 23:1x: "Write inputs of ours")

6 program(s) of this package read standard input and none ships with it; each is fed `NAME.in`, beside its path in this folder, and every answer is still the oracle's (`sbl -bf`).
OURS, written by the grader to exercise the program as its code reads (a few lines of text, numbers, a name, moves of a game, statements to run): `DEMOS/KALAH.spt`, `DEMOS/KWIC2.spt`, `DEMOS/SENTENC.spt`, `SANDLP/CONCORD.spt`, `SANDLP/TICTAC.spt`, `TICTAC.spt`.
