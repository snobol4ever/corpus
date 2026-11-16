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

THE TIGER ROW: `tiger/tgrmap`, the map viewer of Icon 9.5.25a `ipl/gpacks/tiger` for Census TIGER line chains, a vib interface (978 lines; it links
the library alone; the pack's five other tools are batch filters with no window). Its answer is its opening picture with no map loaded (`out_files`
screen.dump). Converted by officer_06 2026-11-16 by the stock translator's newline rule (the converter put a `;` after the macro `EPSILON` inside
parentheses at lines 562 and 563), SAME-CODE. MEASURED: built by `/home/resources/icon-master-x` it shows the stock build's picture twice, md5 54c2790f.

tgrmap IS GRADED DOING ITS OWN WORK (officer_06, 2026-11-16, row icon-graphics-every-gui-pack-is-an-entry-of-ipl-gpacks-graded-as-an-application):
`tiger/tgrmap.events` plays its work on `tiger/town.lch`, a small synthetic map of twelve chains in its line chain format (a county line, a
creek, a railroad, a power line, five streets, a park, a state route and an interstate; made by `make_town_lch.py` beside it, since the pack
ships no TIGER data): the file named in its own opening dialog, a left sweep that zooms, the keys 1, +, the left arrow and 1 again, the right
button on the interstate (its popup names `A1 Interstate 80`, closed by r), F finding `main` (Main St drawn over in yellow), L (at 24 bits it has
no mutable colour and its notice says so), S saving the displayed part as `t.lch` through its file dialog, and q. The answer is the 15 screen
lines then `t.lch` (`out_files` screen.dump t.lch; 900 bytes, the map with the park cut in two by the window's edge), byte equal on two runs
of `/home/resources/icon-master-x`. LEFT OUT: P writes PostScript stamped with `&dateline`, and M a PPM of 2 MB. The dialogs stand black on the
oracle's display, as in the opening picture.

THE DRAWTREE ROW: `drawtree/drawtree`, the tree-drawing tool of Icon 9.5.25a `ipl/gpacks/drawtree`, a vib interface over its six modules and two
includes (`ipath drawtree`); its answer is its opening picture (`out_files` screen.dump). Converted by officer_06 2026-11-16, every file SAME-CODE or
needing none: `clr_list`, `draw_box` and `data` by `util_icon_semicolons.py`, `drawtree`, `draw_crc`, `draw_rec` and
`draw_sqr` by the stock newline rule (the converter put a `;` after the macro `Win_Size` at lines 12, 13 and 22 of draw_rec, and after `START`
at draw_sqr line 191, where it then split `+:=`); `info.icn` and `record.icn` need none. MEASURED: built by `/home/resources/icon-master-x` it shows
the stock build's picture twice, md5 a9e4eb51.

NOT YET HERE, MEASURED 2026-11-16: `xtiles`, the game (twice alike only under the ipl clock pin, and a pin laid over the screen road pins the road's own clock;
it waits on the road passing an entry's env to the program alone); carpets follows, one corpus patch a pack; the rest of weaving is batch
tools with no window, and `seqdraft` dies of error 106 in its own init on the oracle, `showrav` needs an `unravel -r` file (plaid.xpm is insoluble)
and a pinned clock, so both are left out.

THE FIRST SCRIP READING: SCRIP has no window function, so the row reads `screen none` until the window design of 2026-11-10 is built (skill
icon, reference.md section 9).

THE EDITOR IS GRADED AS AN EDITOR (the cto, 2026-11-16, W6 at the head of its order beside bme): `ged/ged.events`, the cqo's script of clicks and keys, is played on its window; the answer is the screen line of every step, 20 in all, then `t.txt`, the file it saves (`out_files`), 3714 bytes, byte equal twice on the landed road under icon-master-x (`/home/resources/progress/icon-graphics-2026-11-16/editors`). The script never saves over `ged.icn`. timeout_s 600.
