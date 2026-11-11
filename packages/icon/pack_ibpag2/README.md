# pack_ibpag2

Ibpag2, an LR-based parser generator in Icon (Richard L. Goerwitz), one of the packs of the Icon program library (`/home/resources/icon-master/ipl/packs/ibpag2`, Icon
9.5.25a, public domain: `COPYRIGHT.icon`). One package a pack (see `pack_tcll1`). VENDORED, with its semicolons (CIO-98, CIO-100, CIO-101).

WHAT IS HERE. The fifteen files the pack's Makefile builds; `iiparse.lib` and `iiglrpar.lib`, the parser texts the program copies into what it writes; the pack's three
grammar files `NAME.ibp`, which are the ROWS; each row's answer `NAME.out`; `ALL.csv`; `ALL.launch` (`scrip driver ibpag2.icn`, CIO-83) and `ALL.args`. A test is
`ibpag2 NAME.ibp -f NAME.ibp`, run in a copy of this folder: the launch hands the row's file to the program first, the program takes its input only by `-f`, and it
ignores an argument that is no option (MEASURED with the oracle: the answer with the extra argument equals the answer without it, byte for byte).

OUR MODIFICATIONS. (1) ONE LINE IS ADDED to `ibpag2.icn`, after its `link options`: `link slshupto, rewrap, outbits, sortff, itokens, slrtbls, slritems, follow,
ibutil, iohno, ibreader, ibwriter, shrnktbl, version`. The pack's Makefile hands those fourteen files to the translator on one command line and the program's text links
none of them; SCRIP loads what a program links, so the launch needs the line. MEASURED: the oracle's answer on all three grammars is the same built the Makefile's way
and built from the main file with that line. (2) THE SEMICOLONS (CIO-100): the tab characters of a scratch copy written as spaces, then
`harness/scripts/util_icon_semicolons.py` over all its files until nothing changed. No other byte is changed. PROVED: the fifteen files parse in SCRIP; the converted
text built by the fleet's `icont` and the original built by the distribution's own translator give the same answer on all three grammars.

THE ANSWERS are cut from the oracle: the fleet's `icont` on the converted text, then `./ibpag2 NAME.ibp -f NAME.ibp` with standard input closed in a fresh copy of the
folder, twice the same. An entry is graded on standard output and exit status. NOT AN ENTRY: the program with no input at all, which the census counted (it prints 198
bytes and ends exit 4, unexpected EOF): an error on nothing is no test of the generator. FIRST READING, mode 3, the grader's worktree at SCRIP of 2026-11-11: 2 of 3.
`sample` and `iacc` pass; `beta2ref` CRASHES, the same three times: SIGSEGV, ZGC-STALE, a stale heap pointer used after a collection. A finding for the collector's
designer, not excluded.
