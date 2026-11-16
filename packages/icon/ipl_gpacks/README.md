# ipl_gpacks (IconGfxPacks)

The graphics packs of the Icon program library (Icon 9.5.25a `ipl/gpacks`; public domain, as the library; `UPSTREAM-README` lists the packs),
graded by what their screen shows with no human present, on the screen road of `ipl_gprogs` (its README says how). Lon 2026-11-16 07:3x CST,
in the grader's window: "We need a IDE written in Icon. Or GUI applications." / "Or a simple editor with a GUI written in Icon or Prolog."

THE ROW: `ged`, Robert J. Alexander's mouse-oriented text editor (1993), with its modules `textedit` and `control`, run on its own source
(`ALL.args`: `ged.icn`), so its window shows text. Its answer is the screen line, `screen 1024x768 md5 ...`; `screens/ged.png` is the oracle's
screen for the reader. Cut from the graphics build of the oracle, `/home/resources/icon-master-x`, twice, identical.

THE TEXT: the three files were given the semicolons SCRIP Icon requires by `util_icon_semicolons.py`, each proved same-code by the stock
Arizona translator (`CONVERSION-PROOF.tsv`).

THE SECOND ROW: `vib`, the visual interface builder (Icon 9.5.25a `ipl/gpacks/vib`, its fifteen modules and the include `vibdefn.icn`), started as
`vib app.icn` (`ALL.args`) on a new file and driven by the cqo's event script `vib/vib.events` (the screen road's scripted events): three objects
made from the palette, a dialog filled in, an object moved and copied, the canvas resized, the interface saved from the File menu into `app.icn`,
and quit. Its answer is the 14 screen lines and the saved `app.icn` (`out_files` screen.dump app.icn). Converted by officer_06 2026-11-16: twelve
files by `util_icon_semicolons.py` as ged was; `vib.icn` and `vibtext.icn` by it with one hand fix each (it had put a semicolon after the macro
names `PAL_H` and `VFWidth`, mid-line); `vibedit.icn` and `vibslidr.icn`, which it does not finish (their image strings continue across lines with
`_`), by the stock translator's own newline rule (`;` where an Ender ends a line and a Beginner starts the next, the token flags of
`src/common/lextab.h`); `vibglbl.icn` and `vibdefn.icn` need none. Every file is SAME-CODE (`CONVERSION-PROOF.tsv`). MEASURED: built by
`/home/resources/icon-master-x`, the converted vib answers the cqo's script twice with the same 14 lines and the same `app.icn` (2,012 bytes,
md5 dd98570a) as the stock build `/home/resources/icon-stock-x/bin/vib`; `vib/vib.out` is that answer.

THE WEAVING ROWS: three programs of Icon 9.5.25a `ipl/gpacks/weaving` that edit a weaving in a window over the vidgets, each answered by its opening
picture (`out_files` screen.dump; no event script yet): `weaving/mtrxedit`, Ralph E. Griswold's editor of binary arrays for tie-ups and liftplans
(822 lines; it links the library alone), and `weaving/weaver` and `weaving/drawing`, his weaving-draft editors (drawing a version of weaver that
outputs the drawdown), which link `weavutil`, `tieutils` and `cells` beside them and include `weavdefs.icn` (`ipath weaving`). Converted by officer_06
2026-11-16: `cells.icn` by `util_icon_semicolons.py`; the other five by the stock translator's newline rule, `mtrxedit.icn` because the converter does
not finish it (a `;` placed after the macro names `SymmetXoff` and `IconSize` at line 242, then appended there for ever); `weavdefs.icn` needs none.
Every file SAME-CODE (`CONVERSION-PROOF.tsv`). MEASURED: built by `/home/resources/icon-master-x` each shows the stock build's own picture twice
(mtrxedit 8dc6025b, weaver b7163130, drawing 101a2c95); `weaving/NAME.out` is that answer.

mtrxedit IS GRADED AS AN EDITOR (the cto's piece of 2026-11-16; the cqo's event script): `weaving/mtrxedit.events` makes a new array of 10 by 6
through the tile menu's dialog, sets a cell and a dragged row, clears a cell with the right button, shifts the array with a transformation button and
undoes it (meta z), turns one symmetry on and sets a mirrored pair, reads the information box (meta i), writes the array to `t.tie` through the file
menu's dialog, and quits (meta q). Its answer is one screen line a step, 17 of them, the first the opening picture as before, then the saved array
(`out_files`: `screen.dump t.tie`; `10,#0010003ef000102000`); the row allows 600 s. Cut twice, equal, from `/home/resources/icon-master-x`. NOT IN THE
SCRIPT, on purpose: the file menu's copy and paste, which write and read the fixed file `/tmp/tieup` outside the run's folder, so two runs at once would
meet in it; and read, which wants a file to exist. READ FROM THE SOURCE: the file menu's own quit item cannot end the program (its label carries a
trailing space the program's case lacks), as in gridedit.

THE HTETRIS ROW: `htetris/htetris`, the Tetris game of Icon 9.5.25a `ipl/gpacks/htetris`, with its brick editor (`editor.icn`, a vib interface),
its seven sources (`htetris.icn` and the six it `$include`s) and its `highscore.dat`; its answer is its opening picture (`out_files` screen.dump).
Converted by officer_06 2026-11-16, every file SAME-CODE: `brickdata.icn` and `brickio.icn` by `util_icon_semicolons.py`, the other five
by the stock translator's newline rule, among them the two whose causes that are no macro: `help.icn` holds a Latin-1 byte (0xa9 at byte 7795) the converter
cannot read, and `htetris.icn` line 43 is where SCRIP names the error of the file it includes, `brickdata.icn` line 43 (a string continued with `_`,
its column counted over the joined lines), so the converter edited the includer. MEASURED: built by `/home/resources/icon-master-x` it shows the
stock build's own picture twice, md5 20bc8966; `htetris/htetris.out` is that answer.

NOT YET HERE, MEASURED 2026-11-16: `xtiles`, the game (twice alike only under the ipl clock pin, and a pin laid over the screen road pins the road's own clock;
it waits on the road passing an entry's env to the program alone); carpets, drawtree and tiger follow, one corpus patch a pack; the rest of weaving is batch
tools with no window, and `seqdraft` dies of error 106 in its own init on the oracle, `showrav` needs an `unravel -r` file (plaid.xpm is insoluble)
and a pinned clock, so both are left out.

THE FIRST SCRIP READING: SCRIP has no window function, so the row reads `screen none` until the window design of 2026-11-10 is built (skill
icon, reference.md section 9).

THE EDITOR IS GRADED AS AN EDITOR (the cto, 2026-11-16, W6 at the head of its order beside bme): `ged/ged.events`, the cqo's script of clicks and keys, is played on its window; the answer is the screen line of every step, 20 in all, then `t.txt`, the file it saves (`out_files`), 3714 bytes, byte equal twice on the landed road under icon-master-x (`/home/resources/progress/icon-graphics-2026-11-16/editors`). The script never saves over `ged.icn`. timeout_s 600.
