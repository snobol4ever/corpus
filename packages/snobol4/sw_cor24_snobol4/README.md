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
