# pack_idol

IcnIdol: the Idol pack of the Icon program library (`/home/resources/icon-master/ipl/packs/idol`, Icon 9.5.25a; public domain, as the
library). Idol, the Icon-Derived Object Language, is Clinton Jeffery's object-oriented preprocessor for Icon (version 8.0 of 1990), the
ancestor of Unicon's classes; its translator is itself an Icon program. Each row is one of the distribution's 26 Idol programs `NAME.iol`,
handed to the translator, and the answer is what the translator writes: its log on standard output, then the files it creates (the
generated `NAME.icn`, the class code and specifications under `idolcode.env\`, and `idolt.bat`), in the order of the row's `out_files`
cell. `idol.iol` is Idol's own source, which the distribution's README calls a good first test of a working system.

THE SYSTEM FILE: Idol links one system-specific file (`unix.icn`, `msdos.icn`, `vms.icn` and others). The MS-DOS one is used because it
never calls `system()`: it writes each `icont` command to `idolt.bat` instead of running it, so a translation reads nothing of the machine
it runs on (MEASURED 2026-11-14: with `unix.icn` the answer depends on whether an `icont` is on PATH). A file name it builds carries a
backslash (`idolcode.env\fraction.icn`), as on MS-DOS, and is an ordinary file name here. Most rows end with exit status 1, "Idol exits
after errors creating executable" on standard error, since no command ever runs; that answer is the same on every run (`ALL.rc`).

THE DRIVERS: each `run_NAME.icn` is one line of ours, `link idolboot,msdos`, so each row has its own program and its own answer file
(the files form keys an answer by its program's name); `ALL.args` hands it `NAME.iol`. `CONTRACT.tsv` puts the package root on the
link path (`ipath .`), where the two linked files sit.

THE CONVERSION: `idolboot.icn` and `msdos.icn` carry the semicolons SCRIP Icon requires, inserted once by `util_icon_semicolons.py`
(skill unicon; never tracked), and each is PROVED by the stock Arizona translator with newline insertion
(`/home/resources/icon-master/bin/icont.bak-2026-10-01-stock-newline-insertion`): `icont -s -c` of the original and of the converted text
give the same `.u1` and `.u2`, byte for byte (`CONVERSION-PROOF.tsv`). `idolboot.icn` is generated code whose `#line` directives point
into `idol.iol`; they were blanked to comments while the tool ran and restored after, since the parser reports positions through them.
Unicon cannot serve as the proof here: Idol uses `class` and `method` as identifiers, which Unicon reserves.

THE ANSWERS were cut from the oracle, the fleet's `icont` and `iconx` (`icont -s -c idolboot msdos`, then a one-line driver linking
both), each program run twice in a fresh copy of this folder with identical results, by the grader on 2026-11-14. The first SCRIP
reading (mode 3, SCRIP 2039f9682f): 19 of 26; `consttst` crashes (signal 11), and six differ in the generated code (`point`: the
three lines that initialize a class's clone are missing from `idolcode.env\Cartesia.icn` and `Radian.icn`).
