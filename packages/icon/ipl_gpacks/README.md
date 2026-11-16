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

NOT YET HERE, MEASURED 2026-11-16: `htetris` and `xtiles`, the games (the converter cannot read `help.icn`'s Latin-1 byte and does not end on
`htetris.icn`; `xtiles.icn` and its smileys are left unconverted); carpets, drawtree, tiger and weaving, not tried (weaving's `mtrxedit` follows).

THE FIRST SCRIP READING: SCRIP has no window function, so the row reads `screen none` until the window design of 2026-11-10 is built (skill
icon, reference.md section 9).
