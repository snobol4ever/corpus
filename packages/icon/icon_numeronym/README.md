# icon_numeronym (IconNumeronym)

Reid Netterville III's numeronym (https://github.com/reidiiius/numeronym, commit b94d4a3 of 2016-10-19, MIT, `LICENSE.txt` beside it): an Icon
program that prints guitar fretboard charts of two scales named by numeronyms (`j3k6`, `k1j5`), each note spelled by a pair of element symbols.
`cayenne.icn` is the program; `marigold.icn` and `papaya.icn` are the libraries it links, compiled beside it. The upstream README is
`UPSTREAM-README.md`.

`cayenne.icn` was given the semicolons SCRIP Icon requires by `util_icon_semicolons.py` (the two libraries needed none), proved same-code by the
stock Arizona translator (`CONVERSION-PROOF.tsv`, by `/home/resources/progress/handoffs/grader-2026-11-16/icon_convert_prove.py`).

The answer was cut from icont and iconx 9.5.25a twice, a second apart, stderr merged, no input. The two runs differ only in the heading line of
each chart, which prints `&date` and `&clock`; that line is masked (`ALL.mask`, one row, 2 of 20 lines) and the other 18 are graded exactly.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 1 of 1.
