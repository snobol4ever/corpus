# uni_cs410 (UniconCS410)

Ryan Wendling's final project for CS 410 (https://github.com/RyanWendling/CS410, commit 77bb91f of 2017-06-09): a word game in Unicon on a
three-dimensional letter board (`board`, `testboard`) searched for the words of a dictionary (`dict`), with the packages `board_stuff`,
`dict_stuff`, `scoring_stuff` and `timefuncs`. No licence is stated, so the programs are read in place from
`/home/resources/icon-demos/gh-RyanWendling-CS410` (`ALL.source`); this folder holds the index, the answers and the tables.

All seven Unicon files were given the semicolons SCRIP requires, in place, by `util_icon_semicolons.py --compile-args=--dialect=unicon`, each
proved same-code by unicon 13.3 (`CONVERSION-PROOF.tsv`; `/home/resources/progress/handoffs/grader-2026-11-16/icon_convert_prove.py --unicon`).

The answers were cut from unicon 13.3 twice a second apart, stderr merged: the four packages compiled by `unicon -s -c`, each program built
against them and run in the folder, `gameFinalintermediate` with the arguments its author's comment gives (`ryan w opp b 15 10 10 8 100 50 5`,
`ALL.args`). The programs print the clock (`Base time at entry`, `Time passed since entry`) and never test it; those lines are masked
(`ALL.mask`, 7 of test's 1636 lines and 2 of gameFinalintermediate's 561). `gameFinal` is out (`EXCLUDED.tsv`): its answer is 4 lines, 2 of
them the clock, and a mask over half an answer is refused.

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 0 of 2. Both run to the end and differ in which of a word's
anagrams is reported (SCRIP `toot`, the oracle `otto`), which turns on the order a table generates its keys.
