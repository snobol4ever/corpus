# icon_packs

IcnPacks: the euler pack of the Icon program library (`/home/resources/icon-master/ipl/packs/euler`, Icon 9.5.25a), EULER, Wirth's and Weber's
ALGOL successor, compiled and interpreted by a program in Icon. Each row is one of the pack's twelve Euler programs `tN.eul`, handed to the pack's
interpreter (`ALL.launch`: `euler.icn` the driver), so a test is `euler tN.eul`, run in a copy of this folder.

VENDORED AS SHIPPED, semicolons and all (`COPYRIGHT.icon`): the Icon library is public domain, and the three files from T.W. Christopher's TLC
parser carry their own copyleft notice, the same files `pack_tcll1` vendors. The text ends statements at newlines, as Icon does; SCRIP's Icon reads
a semicolon, so today every row FAILS and is counted (Lon 2026-11-12: "We are just wanting the test to run and fail and count.").

THE ANSWERS, `tN.out`, are the oracle's: the distribution's own icont (its stock newline insertion) with the fleet's iconx, the pack built as its
Makefile builds it, each run twice and equal (the census `/home/resources/progress/MINING-ICON-LIBRARY-PACKS-CENSUS.sh`, re-run 2026-11-12, its
verdicts unchanged from 2026-11-11).

NOT HERE YET, the rest of IcnPacks' 21: idol's 8 (a translator whose output is translated and run, two stages, which a package launch cannot say)
and loadfunc's btest (it links the C functions of cfunc). The packs tcll1, skeem, ibpag2 and loadfuncpp are their own rows (icn-pack-*).
