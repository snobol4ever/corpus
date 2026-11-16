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

THE ROWS: `hello`, a root frame and one button whose callback exits; its script moves onto the button and clicks it.
