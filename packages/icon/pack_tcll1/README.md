# pack_tcll1

TCLL1, an LL(1) parser generator in Icon (Dr. Thomas W. Christopher), one of the packs of the Icon program library (`/home/resources/icon-master/ipl/packs/tcll1`, Icon
9.5.25a, public domain: `COPYRIGHT.icon`). One of the nine packs the banner counted as IcnPacks; each pack is one program of many files and is its own package (Lon
2026-11-11, of the Pascal sets: "since they are six things, make them six items on the banner."). VENDORED, with its semicolons (CIO-98, CIO-100, CIO-101).

WHAT IS HERE. The pack's program, the eleven files its Makefile builds (`tcll1.icn` and the ten it links: `gramanal ll1 parsell1 readll1 scangram semgram semstk xcode
escape ebcdic`); `tcll1.ll1`, the table the program reads when it starts; the pack's fourteen grammar files `NAME.grm`, which are the ROWS; each row's answer
`NAME.out`; `ALL.csv`; and `ALL.launch`, which says the row's file is handed as the argument to the pack's program (`scrip driver tcll1.icn`, CIO-83, run-switches
step 14): a test is `tcll1 NAME.grm`, run in a copy of this folder.

THE SEMICOLONS (CIO-100: put there once, proved, and said). The pack's text ends a statement at a newline; SCRIP's Icon and the fleet's `icont` want a semicolon. On
2026-11-11 the grader ran `harness/scripts/util_icon_semicolons.py` over a scratch copy of the pack, after writing its tab characters as spaces (MEASURED: with its tabs
`gramanal.icn` is never finished by the converter, with spaces it is; why is not read: SCRIP's parser counts a tab as one column, as the converter does), and ran it three times over all the files (a file that links another is
refused until the other is converted). PROVED: (1) the eleven files parse in SCRIP; (2) the pack built from the CONVERTED text by the fleet's `icont` (the pack's own
Makefile recipe) and the pack built from the ORIGINAL text by the distribution's own translator give the same standard output and exit status on all fourteen grammars;
(3) SCRIP in mode 3 gives that same answer on all fourteen. `declacts.icn`, `rptperr.icn` and `semout.icn` of the pack are not built by its Makefile and are not here
(`declacts.icn` links `readLL1`, a name no file of the pack has).

THE ANSWERS are cut from the oracle: the fleet's `icont` and `iconx` on the converted text, `icont -s -c xcode escape ebcdic`, `icont -s -c gramanal ll1 semstk readll1
parsell1 scangram semgram`, `icont -s -fs tcll1`, then `./tcll1 NAME.grm` with standard input closed in a fresh copy of the folder, twice the same. An entry is graded
on standard output and exit status. FIRST READING, mode 3, the grader's worktree at SCRIP df8a8b31c: 14 of 14.
