# tex_and_tangle

Knuth's TANGLE 4.6 and TeX 3.141592653 as the Pascal programs `tangle.p` and `tex.p` (with `tex.pool`, and the sources `tangle.web` and `tex.web` beside them), read IN
PLACE from `/home/resources/pascal-demos/tex` (`ALL.source`); no file of it is stored here (CIO-92, CIO-96; copyright D. E. Knuth, a changed copy may not be called TeX).
This folder holds our index (`ALL.csv`) and `ALL.omit`, which names every program that is no entry with its verdict. Built by
`harness/scripts/util_build_package_suite.py corpus/packages/pascal/tex_and_tangle --lang pascal --mine CENSUS.tsv` (COO-508, COO-513).

THE CENSUS (fpc 3.2.2, 2026-11-11): 2 programs; 0 entries; fpc compiles neither in any of its five modes (iso, fpc, objfpc, delphi, tp). Both are the WEB sources tangled
with NO change file, so they are written in the Pascal of Knuth's own compiler: a text file is a `packed file of char` written with `writeln`, a terminal is opened by
`rewrite(termout,'TTY:')`, a `case` ends in `others:`. fpc says of `tangle.p`: `Incompatible types: got "Constant String" expected "Char"` and `Can't use readln or writeln
on typed file`; of `tex.p`: `Can't use readln or writeln on typed file` and `Identifier not found "others"`. With no answer from the oracle there is no entry (no answer is
ever cut from SCRIP), and the index has no row.

WHAT WAS ALSO MEASURED, for the designer of the next step: the box's own `/usr/bin/tangle` (TeX Live 2023, the same TANGLE 4.6) run on `tangle.web` writes the collection's
`tangle.p` byte for byte, and run on `tex.web` writes its `tex.p` and `tex.pool` byte for byte. So the answers of "tangle on tangle.web" and "tangle on tex.web" stand in the
collection itself; what is missing is an oracle for the Pascal text (fpc with a change file, as every port of TeX uses), and in SCRIP the file binding of a program whose
files are named in its heading and opened by `reset(webfile)`. Every verdict in `ALL.omit` is a measurement and is expected to be re-run.
