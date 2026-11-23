# ipl_gprogs

IcnGfx: the graphics programs of the Icon program library (`gprogs`, Icon 9.5.25a; public domain, as the library), graded by what
their screen shows with no human present. This is the first package of the screen road (Lon 2026-11-14, in the grader's window,
verbatim: "We are absolutely DOING GRAPHICS, X-windows. Yes? We should be able to do off-line (i.e. without physical window in which a
human user is required) GUI tests. Yes?"; skill icon section 1, skill suites-and-grading section 4).

THE ROWS: 67 of the library's 177 graphics programs: the ones that, started with no argument and no input on a virtual X display, draw
a window and then wait for a mouse or a key, the picture the same on every run. Among them the library's games at their opening
position (`breakout`, its bricks spelling ICON), the colour pickers, the pattern and bitmap editors, the kaleidoscopes that begin
still. The census of all 177 is `/home/resources/progress/handoffs/grader-2026-11-14/gfx_census.tsv` (MEASURED: 87 draw and wait, 68
of those the same picture twice, 18 animate or draw at random, 90 end by themselves, nearly all asking for a file or an argument).
`NOT-CUT.tsv` names the one candidate that did not become a row.

THE ANSWER of a row is one line, `screen 1024x768 md5 <md5 of the pixel bytes>`: the whole virtual screen (1024 by 768, 24 bits) once
it has held still for three seconds, read by `xwd`. The row's `out_files` cell names `screen.dump`, which tells the harness to run the
program under the project's own screen runner (not carried in this repository) on an Xvfb of its own; that runner ends the waiting program at its still
screen and writes the line. What the program printed before it was ended is withheld (how much had left its buffer is an accident of
the run), so the screen is the whole answer. `screens/NAME.png` is the oracle's screen for the reader; it is never compared. To see
the picture an engine drew, run the road by hand with `--keep DUMP.xwd`
(`/home/resources/progress/handoffs/grader-2026-11-14/xwd2png.py` turns a dump into a PNG).

THE PROGRAMS are the semicolon-ready texts the `ipl` package already holds (`../ipl/gprogs`, where each is excluded
`NEEDS_GRAPHICS_FACILITY` on Lon's word of 2026-09-27, which the word above reverses), copied here so each row has its own file.
`CONTRACT.tsv` names the library's procedure folders (`../ipl/gprocs`, `../ipl/procs`) on the link path and its `$include` folders
(`../ipl/gincl`, `../ipl/incl`) on the include path.

THE ANSWERS were cut from the graphics build of the oracle, `/home/resources/icon-master-x`: the fleet's `icont` and `iconx` 9.5.25a
built with X (`make X-Configure name=linux`), beside the plain oracle, which is unchanged. Each program was built and run twice on the
screen road with identical lines, and then twice again under a longer stillness rule with the same lines, by the grader on 2026-11-14
(`/home/resources/progress/handoffs/grader-2026-11-14/gfx_cut.py`).

THE FIRST SCRIP READING (mode 3, SCRIP c5622f4448): 0 of 67, ONE CAUSE: SCRIP has no graphics. No window function exists in its
runtime, so every program stops at its first window (`can't open window`) and its line reads `screen none`. The design of graphics in
SCRIP's Icon runtime is the cto's (telegram graphics-is-in-lon-2026-11-14); these 67 rows are its witnesses. OWED on the road:
scripted mouse and key events, so that a program is graded past its first picture, and the programs that take a file or an argument.

THE EDITORS ARE GRADED AS EDITORS (the cto's piece of 2026-11-16; the cqo's event scripts, harness d54306e60 and 21673bfe8): `bme`, `pme`,
`img`, `gridedit` and `penelope` each carry `NAME.events`, a script of clicks, drags and keys the road plays on the program's window, and
their answer is every screen line the script asks for, then the file the editor saves (`out_files`: `t.xpm`, `t.pat`, `t.tle`) after its
standard output. Each script was run twice on the landed road under icon-master-x, equal, by the cqo
(`/home/resources/progress/icon-graphics-2026-11-16/editors`, `EDITORS.tsv` says what each covers); penelope's row allows 600 s.
