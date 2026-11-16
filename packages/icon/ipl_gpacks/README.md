# ipl_gpacks (IconGfxPacks)

The graphics packs of the Icon program library (Icon 9.5.25a `ipl/gpacks`; public domain, as the library; `UPSTREAM-README` lists the packs),
graded by what their screen shows with no human present, on the screen road of `ipl_gprogs` (its README says how). Lon 2026-11-16 07:3x CST,
in the grader's window: "We need a IDE written in Icon. Or GUI applications." / "Or a simple editor with a GUI written in Icon or Prolog."

THE ROW: `ged`, Robert J. Alexander's mouse-oriented text editor (1993), with its modules `textedit` and `control`, run on its own source
(`ALL.args`: `ged.icn`), so its window shows text. Its answer is the screen line, `screen 1024x768 md5 ...`; `screens/ged.png` is the oracle's
screen for the reader. Cut from the graphics build of the oracle, `/home/resources/icon-master-x`, twice, identical.

THE TEXT: the three files were given the semicolons SCRIP Icon requires by `util_icon_semicolons.py`, each proved same-code by the stock
Arizona translator (`CONVERSION-PROOF.tsv`).

NOT YET HERE, MEASURED 2026-11-16: `vib`, the interface builder (the converter changes the code of `vib.icn` and `vibtext.icn`, so both were put
back and the pack cannot be built by the semicolon-required translator); `htetris` and `xtiles`, the games (the converter cannot read
`help.icn`'s Latin-1 byte and does not end on `htetris.icn`; `xtiles.icn` and its smileys are left unconverted); carpets, drawtree, tiger and
weaving, not tried.

THE FIRST SCRIP READING: SCRIP has no window function, so the row reads `screen none` until the window design of 2026-11-10 is built (skill
icon, reference.md section 9).

THE EDITOR IS GRADED AS AN EDITOR (the cto, 2026-11-16, W6 at the head of its order beside bme): `ged/ged.events`, the cqo's script of clicks and keys, is played on its window; the answer is the screen line of every step, 20 in all, then `t.txt`, the file it saves (`out_files`), 3714 bytes, byte equal twice on the landed road under icon-master-x (`/home/resources/progress/icon-graphics-2026-11-16/editors`). The script never saves over `ged.icn`. timeout_s 600.
