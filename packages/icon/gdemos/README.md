# gdemos

IcnDemos: Icon graphics programs from outside the Icon program library, each graded on the screen road doing its own work (the cto's
row icon-graphics-the-vidget-programs-and-chip8-of-peterlanes-examples-are-graded-entries, 2026-11-16; Lon 12:1x CST that day: all the
Icon programs that use graphics, many Icon GUI and graphics demos working).

THE PROGRAMS are Peter Lane's examples (https://codeberg.org/peterlane/icon-examples, commit 01ae5dc of 2025-01-31, MIT licence, the
text in `LICENCE`): the thirteen programs of its `vidgets` folder, small GUI programs written on the vidgets library of the IPL, and its
`examples/chip8.icn`, a CHIP-8 machine emulator that draws its screen in a window. They are hosted here flat, each under its own name;
`SOURCES.tsv` names each one's path upstream. Each was given the semicolons SCRIP Icon requires by `util_icon_semicolons.py`, and each
is proved same-code against its original by the stock translator (`CONVERSION-PROOF.tsv`).

TWO PROGRAMS OF THE ARIZONA RELEASES that left the library (officer_01's census of /home/resources/icon-demos, the cto's row
icon-graphics-the-other-candidates-of-the-demos-census-are-entries-of-gdemos): `vibapp`, the busy-box application of release 9.3's
`ipl/gdata`, and `foobar`, the window test of release 9.3's `src/runtime`, both public domain by the release's README. `SOURCES.tsv` names
each one's path in the archive. The census's other candidates that are not rows stand in `NOT-CUT.tsv` with the measured reason.

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
- `vibapp`: circlo and checko set, button 1 and the regular toggle pressed, KXCI picked, DUMP pressed (its table of every vidget is
  graded text), then QUIT, which ends it.
- `foobar`: a blue square erased into a fresh window, then one key, which ends its `Event()`.

ONE WITNESS OF OUR OWN, `wkey` (the cto's row icon-graphics-a-table-keyed-by-a-window-finds-its-key-after-a-collection-moves-the-window,
2026-11-16; officer_07's reproduce `wkey.icn`): a window and its clone key a table and a set, and twenty thousand small allocations
follow, so a collection moves the window's record block. Then the program reads the keys back. It is graded on its text alone: it carries
`wkey.display`, so it runs on the road's own display with `--no-screen`, and its answer `wkey.out` was cut twice on the graphics oracle,
the same both times. It reads red on any SCRIP that hashes a window key by its block's address.
