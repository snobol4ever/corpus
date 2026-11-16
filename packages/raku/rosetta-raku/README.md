# rosetta-raku

Every Raku solution of Rosetta Code, from RosettaCodeData (https://github.com/acmeism/RosettaCodeData) at 1d475861d 2026-07-16, Task/*/Raku/: 2003 of its 2199 programs, each copied unchanged under its own file name (a -N for a second solution of a name). Rosetta Code's content is licensed GFDL 1.2; corpus is test data and never ships. TASKS.tsv maps each entry to its task. Every ref is cut from the language's oracle by util_build_package_suite.py --lang raku --twice (the grader 2026-11-13). NOT VENDORED: 196 solutions whose text names a shell, a process, a socket, a file removal or a path outside the run folder (`SCREENED.tsv`): the box has no sandbox, so they were never run (the grader 2026-11-14).

## The count (the grader 2026-11-15)

2003 programs: 1161 graded, 768 declared out in `EXCLUDED.tsv`, 74 owed.

- NO_ORACLE_ANSWER, 619: 139 answer differently on two runs, 78 pass the time bound, and 402 print nothing because rakudo never gets to an answer (263 need a module this box lacks, 107 are refused at compile, 31 die at run, 1 hangs).
- FAKEABLE_NO_OBSERVABLE, 149: the program ends rc 0 and prints nothing (a definition, a declaration, a comment task), so a silent engine would pass it.
- OWED, 74, each curable: 56 open a file the folder lacks (the word lists unixdict.txt, words_alpha.txt, DoWAKA.txt; the cure is the file as the entry's fence), and 18 end rc 0 with their answer on stderr alone (the cure is the `stderr` column).

`EMPTY.tsv` is the measurement behind the 626 programs the builder read EMPTY: each run once more alone under rakudo 2026.05 with no input (`rak_empty_telemetry.py`, /home/resources/progress/handoffs/grader-2026-11-14), its exit status, the bytes on each stream, its class and the first telling line of stderr. No SCRIP reading was taken at the cut (Lon 2026-11-14: host the container with the oracle's answers, the grading comes later); the cycle's row is the reading.

video-display-modes was screened out on 2026-11-15 after it ran: it calls `QX('xrandr -s ...')`, which the screen missed (the words it met in the 195 are `run`, `shell`, `qx`, `qqx` and others, never `QX`), and it set this box's display to 640x350 for nine seconds each run. No other program of the package names QX.


## The data files of ours (2026-11-16, the grader; Lon 2026-11-15: "Write inputs of ours")

48 of the programs owed opened a file the folder lacked. Each now finds a file of OURS beside it, staged where it runs as every companion its
text names is staged: `unixdict.txt`, `words.txt` and `words_alpha.txt` are one word list of ours drawn from SCOWL's american-english (its
notice and how the list was drawn in `WORDLIST-OURS.txt`), standing in for Rosetta Code's `unixdict.txt`, which this box does not hold;
`test.txt`, `filename.txt`, `nul.txt` and `input.txt` four lines of text; `whatever` two lines of UTF-8; `DoWAKA.txt` the days of the week in
nine languages; `file.cfg` a configuration file in the task's format; `1_2_all_freq.txt` a word-frequency table; `List_of_computer_scientists.lst`
ten lines; `sfc.dat` three fixed-length records; the four `.ppm` files one 16x16 image of ours; `favicon.ico` 512 bytes. Every answer is still
rakudo's, cut twice by the splice road (`--twice --only`): 33 programs enter (abc-words and 32 more), 4 answer differently on two runs
(passphrase-generator, semordnilap, textonyms, word-search, declared NO_ORACLE_ANSWER), and 11 still print nothing (three find nothing in our
list; two write their answer to a file; two stop with their error on stderr alone; the rest are owed as before). 37 programs stay owed.

The first SCRIP reading of the 33 (mode 3, SCRIP 38179ce886, on the landing's worktree): 4 of 33.
