# ipl_v88 (IconIplV88)

The seven programs of the Icon program library of version 8.8 (Arizona's FTP archive, `historic/v88/v88/ipl/progs`) that left the library
before 9.5, so that no other package holds them: `debugify`, `filter`, `stars`, `hextile`, `sierpinski`, `xprompt` and `xed`. Public domain,
as the Icon distribution's README says of the library. The eight library files they link are the same release's own text (`ipl/procs`:
`radcon`, `evmux`, `textedit`, `optwindow`, `button`, `filename`, `control`, `ansi`), beside them and searched first (`CONTRACT.tsv`); today's
`options`, `regexp`, `varsub` and `shquote` come from the sibling `ipl`. The census that found them: the grader 2026-11-17, every `.icn` of
ipl/progs in every historic release against today's Arizona and Unicon libraries (7 names).

All fifteen files were given the semicolons SCRIP Icon requires by `util_icon_semicolons.py` and proved same-code by the stock Arizona translator
(icont 9.5.25a with newline insertion, `-s -c`, `.u1` and `.u2` byte for byte; `CONVERSION-PROOF.tsv`).

The entries and their inputs (each answer cut twice, a second apart, in two fresh copies, identical; stderr merged):
- `debugify` rewrites a ucode file with hooks to a debugging procedure. Its stdin, `debugify.in`, is `btrees.u1` of Icon 8.0's own test
  standards (`historic/v80b/v80b/stand`), ucode of its own era; 9.5's ucode carries a `filen` line it does not parse. 1324 lines, rc 0.
- `filter -t4` copies its stdin (`filter.in`, ours) with tabs expanded to four. rc 0.
- `stars` draws a field of stars with ANSI escapes; it seeds `&random` with 0, so its 1040 bytes are the same every run. With today's `ansi`
  it stops on a missing termcap file, so the era's `ansi`, which writes the escapes itself, is beside it. rc 0.
- `hextile ff00 fe01 fc03 f807 f00f`, `sierpinski`, `xprompt What is your name` and `xed doc.txt` (`inputs/doc.txt`, ours, by `in_files`)
  are X-Icon programs of 1991 and 1992. Each calls a window procedure that Icon 9.5 no longer has, so the graphics oracle
  (`/home/resources/icon-master-x`, on its own display, `util_screen_run.py --no-screen`) stops each with run-time error 106 and its
  traceback, rc 1. An oracle's error is an answer (Lon 2026-11-15), so each is a text entry of the graphics facility (`NAME.display`), graded
  on that text and status.

The first SCRIP reading (mode 3, SCRIP 8c757a3bc1, on the landing's worktree): 5 of 7. `hextile` and `sierpinski` end with error 106 too, but
SCRIP words the message and the traceback its own way.
