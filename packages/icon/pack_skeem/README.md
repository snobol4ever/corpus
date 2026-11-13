# pack_skeem

Skeem, an implementation of the Scheme language in Icon (Bob Alexander), one of the packs of the Icon program library (`/home/resources/icon-master/ipl/packs/skeem`, Icon
9.5.25a, public domain: `COPYRIGHT.icon`). One package a pack (see `pack_tcll1`). The program is VENDORED with its semicolons (CIO-98, CIO-100, CIO-101); the pack's test
file `test.scm` is NOT here: it carries its own copyright line (Aubrey Jaffer's test of Scheme implementations) and is read IN PLACE from the collection (`ALL.source`).

WHAT IS HERE. The fifteen files the program links (`skeem.icn` and `skbasic skcontrl skextra skfun skin skio sklist skmisc sknumber skout skstring skuser skutil
llist`; the Makefile also builds `skdebug.icn`, which `skeem.icn` leaves out of its own link line, `#link skdebug`: it is not here, SCRIP loads what a program links, and
the oracle's answer is the same built with it and without it, MEASURED); the one row's answer `test.out`; `ALL.csv`; and `ALL.launch`: the row's file is handed as the argument to the pack's program (`scrip driver skeem.icn`,
CIO-83): the test is `skeem test.scm`, run in a scratch copy of the collection's folder.

THE SEMICOLONS (CIO-100). On 2026-11-11 the grader wrote the tab characters of a scratch copy as spaces and ran `harness/scripts/util_icon_semicolons.py` over all its files
until nothing changed. ONE semicolon was written by hand, where the converter cannot find it: `skcontrl.icn` line 102, after `promise.ready := "true"`, whose next line
begins with the dereference `.(` (SCRIP reads the two lines as a field reference and says expected field name). No other byte is changed. PROVED: the fifteen files parse in
SCRIP; the pack built from the converted text by the fleet's `icont` and the pack built from the original by the distribution's own translator give the same 26,002 bytes on
`test.scm`, twice, and those bytes equal the pack's own expected output `test.std`.

THE ANSWER is cut from the oracle: the fleet's `icont -us` on the files (the Makefile's recipe), then `MSTKSIZE=500000 ./skeem test.scm` with standard input closed
(the Makefile's Test recipe sets that stack size; without it iconx ends with exit 1). FIRST READING, mode 3, the grader's worktree at SCRIP df8a8b31c: 0 of 1: SCRIP ends
with error 106, procedure or integer expected, at `skfun.icn` line 58, the invocation of an alternation of procedure values, `every (InitBasic | InitControl | ...)()`.
A finding, not excluded.

THE SHIM DRIVER (the junior 2026-11-13, row icn-pack-skeem-red-test). ALL.launch hands the row to `skdriver.icn`, a one-line shim that links `skeem` and `skuser`. The upstream Makefile compiles all fifteen files, but skeem.icn links only its own closure, which omits skuser.icn; `InitUser` is defined there and nowhere else, so `scrip skeem.icn` reads it as &null and dies with error 106 at skfun.icn line 58. The shim gives scrip the Makefile program: MEASURED mode 3, `scrip skdriver.icn -- test.scm` writes 26,002 bytes equal to test.std (cmp), and the entry reads m3_pass=1 m3_fail=0. The vendored text of skeem.icn is unchanged.
