# pl_icon_examples (IconLaneExamples)

Peter Lane's examples of Icon code (https://codeberg.org/peterlane/icon-examples, commit 01ae5dc of 2025-01-31; MIT licence, in the
upstream `README.md` kept here, and the `id3/LICENSE.txt` beside its program). Algorithms from *Beginning Java Data Structures and Algorithms*
(chapters 1, 2, 3 and 6, each checked by Peter Lane's unit-test library), a binary repetition code, a line diff, a Markov-chain text producer,
Floyd-Warshall shortest paths, the ID3 decision-tree algorithm of his MSc work, a CHIP-8 emulator and thirteen examples of the vidgets library.
The same author's library `pcl` is the sibling package IconPeterLane.

THE CONVERSION: every file carries the semicolons SCRIP Icon requires, inserted once by `util_icon_semicolons.py` and PROVED by the stock
Arizona translator with newline insertion: 23 of 23 same-code (`CONVERSION-PROOF.tsv`).

THE INPUTS: `id3/id3.in` is the shipped `fish.dat`, as id3's README runs it (`./id3 < fish.dat`). OURS: `examples/diff-a.txt` and
`diff-b.txt`, the two files diff is handed, and markov-chain is handed its own source as its text (`ALL.args`). markov-chain and id3 draw
random numbers without seeding them, so the oracle's answer is the same on every run (checked twice a second apart).

THE LINK PATH: the four algorithms programs link `testing` of `../pcl`, which links `ximage` of `../ipl/procs` (`CONTRACT.tsv`).

THE ANSWERS were cut from the oracle, the fleet's `icont` and `iconx` 9.5.25a, each program built in its own folder of a fresh copy and run
twice a second apart with stderr merged, by `/home/resources/progress/handoffs/grader-2026-11-15/iconlab_cut.py`: 9 entries. OWED, not
excluded: `examples/chip8` and the thirteen `vidgets/` programs open a window; graphics is in (skill icon section 1) and they wait for the
screen road and a graphics build of SCRIP (`ALL.omit`).

The first SCRIP reading (mode 3, SCRIP 38179ce886, on the landing's worktree): 7 of 9. Red: `examples/binary-repetition-code` aborts on
signal 6; `id3/id3` prints a different answer (its unseeded random draws are one place to look).
