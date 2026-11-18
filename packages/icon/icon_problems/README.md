# icon_problems (IconGriswoldEx)

Margret Riegert's solutions to the exercises of chapters 1 to 4 of *The Icon Programming Language*, second edition, by Ralph E. Griswold and
Madge T. Griswold (https://github.com/nobodywasishere/icon-problems, commit 5a8a6cc of 2022-05-01): 23 programs, each opening with the text of
its exercise. Reading and filtering lines, generators over words and characters, string scanning, csets, image(), a weight-conversion table,
a substitution cipher.

NOT HOSTED: the repository states no licence, so its programs are not copied into the corpus. They are read in place from
`/home/packages/icon/icon_problems` (`ALL.source`); this folder holds the index, the answers and the inputs.

THE CONVERSION: the 23 files were given the semicolons SCRIP Icon requires IN PLACE by `util_icon_semicolons.py`, and each is PROVED by the
stock Arizona translator with newline insertion: `icont -s -c` of the repository's HEAD and of the converted text give the same `.u1` and
`.u2`, byte for byte, 23 of 23 (`CONVERSION-PROOF.tsv`). The originals are the repository's own history.

THE INPUTS ARE OURS: the exercises read "the input file" and none ships but the two brace files of 2-8. The thirteen programs that read
standard input are fed one short text of nine lines written by the grader on 2026-11-15 so that each finds something (lines with "h" and
"cheese", a line beginning "begin", words containing "hello", 3-letter words with c or d); `ch2/2-8.in` is the repository's own
`2-8-fail.txt`, and `ch4/4-7` is handed the argument `enc` its main reads (`ALL.args`).

THE ANSWERS were cut from the oracle, the fleet's `icont` and `iconx` 9.5.25a, each program built in its own folder of a fresh copy and run
twice a second apart with stderr merged (`CONTRACT.tsv`), by `/home/resources/progress/handoffs/grader-2026-11-15/iconlab_cut.py`. 23 entries,
none out. `ch4/4-6` ends in Run-time error 211 (`1 to 10 by 0.25`: the step converts to the integer 0), and that error is its answer.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 23 of 23.
