# pcl

IcnPcl: Peter Lane's Icon library `pcl` (https://codeberg.org/peterlane/icon-libs, commit a8a01b3 of 2024-01-13; MIT licence, its text
in `overview.adoc`, the distribution's own page, copied beside the files). Twelve small libraries written in plain Icon between 2019 and
2023: abbreviation tables, an Icon lexer and a source formatter built on it, integer division by the seven rounding rules, a JSON reader,
number theory and statistics, sorting, searching and selection, a logger, an option parser, simulated annealing, and the unit-test
library the others are tested with. `pcl_test.icn` is the distribution's own test program: 938 checks over eight of the libraries.

THE ROWS: nine. `pcl_test` is the test program whole, as the distribution runs it. The other eight are its eight groups, each run alone:
`test_GROUP.icn` is the section of `pcl_test.icn` between two banner lines, as it stands there, under a main of ours that calls that one
group, so one red library does not hide the other seven. A group that calls a helper another section defines carries that helper too
(`test_json` hands `equal_lists`, of the sort section, to `test_equals`; MEASURED without it: the name is a null global and 3 of the 19
JSON checks fail under the oracle). The eight groups' answers put end to end are the whole program's answer, line for line.
`logger`, `options_parser` and `simulated_annealing` have no test in the distribution and are vendored ungraded.

THE LINK PATH: `CONTRACT.tsv` puts the package root on the link path (`ipath .`), where the nine linked library files sit; `testing.icn`
links `ximage` of the Icon program library.

THE CONVERSION: the thirteen files carry the semicolons SCRIP Icon requires, inserted once by `util_icon_semicolons.py` (skill unicon;
never tracked), and each is PROVED by the stock Arizona translator with newline insertion
(`/home/resources/icon-master/bin/icont.bak-2026-10-01-stock-newline-insertion`): `icont -s -c` of the original and of the converted text
give the same `.u1` and `.u2`, byte for byte (`CONVERSION-PROOF.tsv`, thirteen of thirteen same-code).

THE ANSWERS were cut from the oracle, the fleet's `icont` and `iconx` 9.5.25a, each program built and run twice in a fresh copy of this
folder with identical results, by the grader on 2026-11-14 (`/home/resources/progress/handoffs/grader-2026-11-14/pcl_cut.py`). Every check
passes under the oracle. The first SCRIP reading (mode 3, SCRIP c5622f4448): 7 of 9; `test_icon_lexer`, and `pcl_test` with it, is red:
the lexer's multi-token and multi-line cases stop early (`token count: expected 8 got 4`, `token kind: expected "SEMICOL" got "EOFX"`)
and the run ends in error 246, stack overflow.
