# icon_group

IcnGroup: the programs people mailed to icon-group, the Icon language's mailing list, between 1983 and 2003. The source is the list's
own archive as the Icon Project kept it on its FTP server (`ftp.cs.arizona.edu/icon/newsgrp`, 43 mbox files `groupNNx.txt`, 4643
messages; here `/home/resources/icon-demos/arizona-ftp-newsgrp`). These are the programs of a working language community: answers to
"how would the experts handle this", small puzzles, demonstrations of generators, string scanning and co-expressions, bug reports sent
to the implementors with the program that shows the bug. 189 are graded.

THE MINING (`/home/resources/progress/handoffs/grader-2026-11-14/igroup_mine.py`, then `igroup_pack.py`): a candidate is a run of whole
procedures and top-level declarations (`global`, `record`, `link`, comments) in a message's own text, never in a quoted reply, that
holds a `main` procedure; a line of prose ends the run. 523 distinct candidates. `MINED.tsv` names every one and what became of it:

| verdict | programs | meaning |
|---|---|---|
| ABSORBED | 126 | translated, answered the same twice with exit status 0 and something on standard output; a row of this package |
| ABSORBED-ON-ITS-OWN-TEXT | 63 | prints nothing with no input, and answers when it reads its own text; a row of this package with a `NAME.in` |
| SCREENED | 198 | never run: the text names `open`, `system`, `remove`, `getenv` or graphics, or a keyword whose value is the machine or the clock (`&clock`, `&host`, `&version` and kin) |
| EMPTY | 34 | prints nothing with no input and nothing on its own text |
| RC | 58 | ends with a run-time error or a `stop` when given no input or arguments (6 of them on its own text) |
| NO-TRANSLATE | 38 | the stock translator refuses the text (a fragment, mail damage, another dialect, a linked file the library lacks) |
| HANG, DIFFERS | 6 | runs past 20 seconds, or answers differently twice |

THE SCREEN is there because a mailed program is untrusted text and it was run on the fleet's box with no sandbox: a program whose text
can reach a file, another process or the environment was not run at all. So this package is the list's self-contained programs, each
its own input; the file-processing tools of the list (98 candidates name `open`) wait for a row that gives each its input.

THE INPUT OF OURS: a program that reads standard input was mailed without its data, so 103 candidates print nothing when run bare.
Each of those was given one input, its own text (`NAME.in` is a copy of `NAME.icn` as it stands here), and 63 then answer: word counts,
line filters, scanners and formatters at work on a real Icon program. The input is ours; the answer is the oracle's on that input.

THE ROWS: `gNNx_mMMMM` is message MMMM of `groupNNx.txt` (`_2` the second program of one message). `SOURCES.tsv` gives each row's
archive file, message number, Date and Subject; a program's author is in its own header where the author wrote one. Five programs link
`ximage` or `regexp` of the Icon program library, found through `CONTRACT.tsv` (`ipath ../ipl/procs`).

THE CONVERSION: every program carries the semicolons SCRIP Icon requires, inserted once by `util_icon_semicolons.py` (skill unicon;
never tracked), and each is PROVED by the stock Arizona translator with newline insertion
(`/home/packages/icon/icon-master/bin/icont.bak-2026-10-01-stock-newline-insertion`): `icont -s -c` of the mailed text and of the converted
text give the same `.u1` and `.u2`, byte for byte (`CONVERSION-PROOF.tsv`: 189 of 189 same-code). Nothing else of a program was
changed; the common indentation of an indented posting was removed.

THE ANSWERS were cut from the oracle, the fleet's `icont` and `iconx` 9.5.25a on the converted text, each program built and run twice
in a fresh folder, with no input or with its `NAME.in`, and identical results, by the grader on 2026-11-14. The first SCRIP reading (mode 3, SCRIP
c5622f4448): 183 of 189. Red: `g88b_m0009` (on its own text), `g00b_m0133` (one line of a scan's output missing), `g89a_m0007` (error 102 where a procedure returns a
procedure), `g93c_m0006` (a value transmitted to a co-expression arrives once, not ten times), `g97a_m0107` and `g97a_m0107_2`
(`ximage` of a table whose default is a list prints `table(&null)`).
