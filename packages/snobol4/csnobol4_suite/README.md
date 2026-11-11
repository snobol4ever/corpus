# csnobol4_suite

The test programs of CSNOBOL4 2.3.3 by Philip L. Budne (the distribution's `test/` folder), graded against SPITBOL (`sbl -bf`), the one SNOBOL4 oracle. CSNOBOL4 itself is a population here, never a second oracle.

Source: http://www.regressive.org/snobol4/csnobol4, release 2.3.3 of 2025-05-19. The distribution is read in place at `/home/resources/csnobol4`.

## The form

- `NAME.sno` is the program, where the distribution put it, byte for byte.
- `NAME.out` beside it is the oracle's standard output on that program, byte for byte. `NAME.err` is its standard error when it wrote any.
- `NAME.in` beside it is the standard input the program is fed. A program with no `NAME.in` is fed none.
- `ALL.csv` is the index: one row per program, the column `path` naming its file. A program `ALL.omit` names stays in the index and is not graded; the line gives the reason.
- `ALL.rc` holds the exit codes that are not 0, `ALL.mask` the lines a comparison leaves out, with the reason for each.

## The lines after END are the program's input

The distribution's own runner (`test/test.reg.sh`) starts CSNOBOL4 with `-r`, which makes `INPUT` read the lines that follow the `END` statement in the program file. SPITBOL has no such switch, so for a program that reads them, those lines are its `NAME.in`, and `NAME.out` is the oracle's answer when fed them. MEASURED 2026-11-11 with `sbl -bf`: the answer differs with and without those lines for twelve programs (atn, len, longrec, repl, rewind1, sudoku, tab, trim0, trim1, uneval2, words, words1).

## Files of the distribution that are not programs

- `tests.in` is the distribution's ordered list of tests and the runner each one takes (`test/run.sh` reads it).
- `blocks.in` is the distribution's list of the tests that need the BLOCKS extension.
- `k.in` is the input file `k.sno` opens by name.
- `v311.sil` is the distribution's SIL source of the interpreter; `genc.sno` and `bench.sno` take it as their argument (`test/test.genc.sh`).
- `callgraph.ref`, `proc.h.ref` and `static.h.ref` are the distribution's expected contents of the files `genc.sno` writes (`callgraph`, `proc.h2`, `static.h2`). No runner of ours compares a written file today, so they are kept and not graded.

## The tables

`EXCLUDED.tsv`, `UNGRADABLE.tsv`, `OUTSIDE_SPITBOL_BASELINE.tsv`, `CONTAINERS.tsv`, `ORACLE_ACCEPTANCE.tsv` and the others name, one row each with its measurement, every program that is left out of the graded population and why.
