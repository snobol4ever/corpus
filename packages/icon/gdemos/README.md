# gdemos

IcnDemos: Icon graphics programs from outside the Icon program library, each graded on the screen road doing its own work (the cto's
row icon-graphics-the-vidget-programs-and-chip8-of-peterlanes-examples-are-graded-entries, 2026-11-16; Lon 12:1x CST that day: all the
Icon programs that use graphics, many Icon GUI and graphics demos working).

THE PROGRAMS are Peter Lane's examples (https://codeberg.org/peterlane/icon-examples, commit 01ae5dc of 2025-01-31, MIT licence, the
text in `LICENCE`): the thirteen programs of its `vidgets` folder, small GUI programs written on the vidgets library of the IPL, and its
`examples/chip8.icn`, a CHIP-8 machine emulator that draws its screen in a window. They are hosted here flat, each under its own name;
`SOURCES.tsv` names each one's path upstream. Each was given the semicolons SCRIP Icon requires by `util_icon_semicolons.py`, and each
is proved same-code against its original by the stock translator (`CONVERSION-PROOF.tsv`).

THE ANSWER of a row is the screen road's (skill suites-and-grading, THE SCREEN ROAD): the row's `out_files` names `screen.dump`, and
`NAME.events` drives what the program is for (the button pressed, the menu opened, the slider dragged), one line
`screen 1024x768 md5 <md5>` for each still picture, the program ended by its own quit where it has one. Every answer was cut twice,
equal, from the graphics oracle `/home/resources/icon-master-x`, and `screens/NAME.png` is its first picture for the reader, never
compared. The programs link the library's graphics procedures from the sibling `ipl` (`CONTRACT.tsv`, as `ipl_gprogs`). The proof of
an entry is the one prover, `prove_ipl_gprogs_entry.py PKG NAME`.

THE ROWS, fourteen, each with what its script reaches:
- `hello`: a root frame and one button whose callback exits; the button clicked, which ends the program.
- `button`: the plain button, the toggle, the check, the circle, the diamond and the box toggles pressed in turn.
- `list`: Number 3 picked in the single-select list, Number 2 in the multi-select list, the read-only list scrolled three lines.
- `menu`: Program then About, File then Open, File then Save, and Program then Exit, which ends it; its text is graded with its screens.
- `pane`: the grooved, raised and sunken panes clicked (their callbacks write only text, which the road withholds; the screens stand).
- `radio`: java, banana and Atari ST set.
- `randweav-2`: RENDER pressed under the clock and entropy pin (`randweav-2.pin`, its `randomize()`), the weave drawn, then quit.
- `slider`: the horizontal slider dragged, the vertical slider pressed, dragged and let go.
- `temperature`: 212 typed into Fahrenheit and Convert pressed; the Celsius line reads 100.0.
- `text`: a name typed and entered, the location field added to and entered.
- `chip8`: the emulator run on `digits.ch8`, a 32-byte CHIP-8 program of our own (`ALL.args`): it draws the font digits 0 to 7 (each
  missing its first row: the emulator reads its font one byte early), waits for a key and draws that key's digit; the script types 9.
- `barchart-eg`, `lines`, `message`: each draws and then waits with no control a script could work; `EVENTS-NONE.tsv` says so and
  their still picture is their answer.
