# sw_cor24_snobol4

SnoCor24: the 58 example and demo programs of sw-cor24-snobol4, a 2026 SNOBOL4 implementation for the COR24 machine
(https://github.com/sw-embed/sw-cor24-snobol4 at 68b7fbe; MIT, Copyright (c) 2026 Michael A Wright), read IN PLACE from
`/home/resources/collections/snobol4/sw-cor24-snobol4` (`ALL.source`). No program of it is stored here.

| | |
|---|---|
| programs | 58 (`examples/` 50, `demos/` 8) |
| rows | 47, each answer `NAME.out` cut twice from `sbl -bf` with identical results; two of them (`examples/input`, `examples/io-tutorial`) are fed the collection's own `NAME.dat` on standard input (`ALL.stdin`) |
| declared out | 6 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 5 give no answer inside 60 s, with or without their `NAME.dat` (`fti_smoke`, `issue11`, `issue14`, `rawinput`, `rawinput_lines`), 1 answers differently on two runs (`branches`) |
| owed | 5: `demos/eliza` reads a conversation the collection does not ship; `dating`, `test_builtins` and `test_limits` print nothing because the oracle finds no END statement; `pattern` prints nothing |

MEASURED 2026-11-15 on the first 45 rows, the oracle's answer against the collection's own `NAME.expected`: 19 equal, 1 differs
(`examples/parens_expr`), 25 ship none. The answer graded is the oracle's. No SCRIP reading was taken at the cut (Lon 2026-11-14);
the cycle grades it. Built by `util_build_package_suite.py corpus/packages/snobol4/sw_cor24_snobol4 --lang snobol4 --mine CENSUS.tsv
--twice`, then `--mine-add --mine-under` for the two fed programs (the grader 2026-11-15).

CHANGED IN PLACE (skill snobol4 section 7, Lon 2026-11-14: an angle-bracket subscript is rewritten with square brackets where the package lives; the cqo 2026-11-15, row snobol4-cor24-nqueens-sieve-and-array-spell-their-subscripts-with-square-brackets): demos/nqueens.sno (28 lines), demos/sieve.sno (5) and examples/array.sno (6) spell `NAME<...>` as `NAME[...]`, one character for one, outside string literals and comment lines, since SCRIP refuses the angle form by the ruling of 2026-10-02. `sbl -bf` answers each the same bytes as before, cut twice and equal to its `NAME.out`, so no answer moved.

## RE-CUT 2026-11-15: AN ERROR FROM THE ORACLE IS AN ANSWER

Lon, 2026-11-15 13:3x CST, in the grader's window, verbatim: "go scrutinize all excluded SNOBOL4 programs. SNOBOL4 should be rock solid." / "You do
realize when the oracle produces and error then SCRIP should produce the same error. Yes? Do you get that?" So `CONTRACT.tsv` says `fatal gradable`
and the package was cut again from `sbl -bf`, twice, with `--mine-silent-rc`. THE COUNTS ABOVE THIS SECTION ARE THE FIRST CUT'S; THESE STAND:

| | |
|---|---|
| rows | 52: 48 print an answer; 4 print nothing and are graded by exit status |
| declared out | 5 `NO_ORACLE_ANSWER` in `EXCLUDED.tsv`: 5 give no answer inside 60 s |
| owed | 1 read standard input and the collection ships no input for them |

## The inputs (2026-11-16 00:xx CST, on Lon's word of 2026-11-15 23:1x: "Write inputs of ours")

1 program(s) of this package read standard input and none ships with it; each is fed `NAME.in`, beside its path in this folder, and every answer is still the oracle's (`sbl -bf`).
OURS, written by the grader to exercise the program as its code reads (a few lines of text, numbers, a name, moves of a game, statements to run): `demos/eliza.sno`.
