# rosetta-snobol4 (Snobol4Rosetta)

Every SNOBOL4 solution of Rosetta Code, from RosettaCodeData (https://github.com/acmeism/RosettaCodeData) at 1d475861d 2026-07-16, Task/*/SNOBOL4/: 180 programs, each under its own file name (a -N for a second solution of a name). TASKS.tsv maps each entry to its task. Rosetta Code's content is licensed GFDL 1.2; corpus is test data and never ships.

## What was changed (2026-11-15, the grader)

The programs are hosted here and CONVERTED IN PLACE by `sno_upcase_edition.py` (Lon 2026-11-15: "Just do a simple regex conversion instead. Keep the spacing identical."): built-in function names, keywords, predefined names and goto letters are written in upper case, and an angle-bracket subscript in square brackets, one character for one; a user's own names, labels and string literals are left as written. 181 files, 1054 lines changed; the originals are at the origin above. Most Rosetta solutions are written for a case-folding SNOBOL4, and `sbl -bf`, the oracle, is case-sensitive.

## How it is cut

The package is cut by the read-in-place road (`util_build_package_suite.py --lang snobol4 --mine CENSUS --mine-silent-rc --twice`), `ALL.source` naming this folder: one answer file `NAME.out` a program, cut from `sbl -bf` twice. Under Lon's rules of 2026-11-15:

- an error from the oracle is an answer (`CONTRACT.tsv` fatal gradable): its answer is what sbl printed, the error block included, and want_rc its exit status;
- a silent program is graded by its exit status alone: 30 programs are fragments with no END statement, which sbl refuses on standard error alone and ends 1.

152 of the 180 are entries (want_rc 0: 113, 1: 34, 231: 5). Out of the denominator: 18 read standard input and ship none (`NEEDS-INPUT`, owed), 6 answer differently on two runs, 2 never end, 1 reads the environment (`EXCLUDED.tsv`), and execute-a-markov-algorithm is five programs in one file (held by name). Before this cut the package graded 20.

## The inputs (2026-11-15 23:5x CST, on Lon's word: "Write inputs of ours")

Nineteen programs read standard input and none ships with them. `strip-block-comments.in` and `text-between.in` are the programs' OWN
data: each says to run it as `sbl -r`, under which INPUT reads the lines after its END, and the oracle here runs `-bf`, so those lines are
its stdin. The other seventeen inputs are OURS, written by the grader to exercise each program as its code reads (two integers, a list of
numbers, a word list with anagram groups, the Rosetta task's own sentence for strip-a-set-of-characters, "møøse" for the two string-length
programs, three rows in the readings format for text-processing-2, and so on). Every answer is still the oracle's. With them the package
grades 175 of its 180 programs: out are environment-variables (reads the environment), ethiopian-multiplication and system-time (answer
differently on two runs), loops-infinite (never ends) and execute-a-markov-algorithm (five programs in one file).
