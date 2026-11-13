# icon_packs

IcnPacks: the euler pack of the Icon program library (`/home/resources/icon-master/ipl/packs/euler`, Icon 9.5.25a), EULER, Wirth's and Weber's
ALGOL successor, compiled and interpreted by a program in Icon. Each row is one of the pack's twelve Euler programs `tN.eul`, handed to the pack's
interpreter (`ALL.launch`: `eulerrun.icn` the driver), so a test is `euler tN.eul`, run in a copy of this folder.

COPIED WITH SEMICOLONS ADDED (`COPYRIGHT.icon`): the Icon library is public domain, and the three files from T.W. Christopher's TLC
parser carry their own copyleft notice, the same files `pack_tcll1` vendors. The pack's text ends statements at newlines, as Icon does; SCRIP's Icon
reads a semicolon (CEO-495), so the ten `.icn` files here are the pack's with the semicolons added by hand (a seat's own edit, Lon 2026-11-10: no program adds them) and nothing else. Each was
checked three ways: removing every `;` leaves bytes identical to the original; it was
translated by the distribution's stock icont (`icont.bak-2026-10-01-stock-newline-insertion`) beside its original and the `.u1` and `.u2` ucode is
byte-identical for all ten (2026-11-13); SCRIP parses all ten, and the fleet's strict icont accepts them. The pack's Makefile builds `euler` from several files at once and
a launch names one driver, so `eulerrun.icn`, the one file here that is not the pack's, links the Makefile's file list and `euler.icn` supplies `main`.
The `oracle` line of `ALL.launch` keeps `euler.icn`: the oracle's icont links ucode, and the answers below were cut by the census. Until this conversion
every row FAILED and was counted (Lon 2026-11-12: "We are just wanting the test to run and fail and count."); the coo ruled the conversion
2026-11-12 19:0x CST, and the twelve rows now run and are graded for real (12 of 12 PASS in mode 3 on the conversion's worktree).

THE ANSWERS, `tN.out`, are the oracle's: the distribution's own icont (its stock newline insertion) with the fleet's iconx, the pack built as its
Makefile builds it, each run twice and equal (the census `/home/resources/progress/MINING-ICON-LIBRARY-PACKS-CENSUS.sh`, re-run 2026-11-12, its
verdicts unchanged from 2026-11-11).

NOT HERE YET, the rest of IcnPacks' 21: idol's 8 (a translator whose output is translated and run, two stages, which a package launch cannot say)
and loadfunc's btest (it links the C functions of cfunc). The packs tcll1, skeem, ibpag2 and loadfuncpp are their own rows (icn-pack-*).
