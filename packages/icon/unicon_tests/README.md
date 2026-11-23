# unicon_tests -- Unicon's own test suite (UniTests)

**Source:** `/home/packages/icon/unicon/tests` (the Unicon git drop d784f58, 2026-09-06; Unicon 13.3), vendored by the project's vendoring script. 267 `.icn` files ship upstream;
this package holds 221 of them (the categories below) plus `crypto/` (30: 29 entries and their helper `tlsutil.icn`; below) and 16 helper files kept under `data/` and `bench/icon/` (depth 3, never units).

## Layout (upstream's, provenance kept)
`<category>/NAME.icn` beside its `NAME.dat` (upstream's `data/NAME.dat`, the program's stdin); upstream's `data/` and `stand/` are kept verbatim as subdirectories (`stand/NAME.std` is upstream's own expected
output; **the oracle's answer is the ref**, and a `.std` the oracle disagrees with is a finding, not a grading). Makefiles are not vendored.

## The contract (`CONTRACT.tsv`)
`stderr merged`: each program is compiled and run as upstream's `tests/Makefile.test` runs it, `prog < data/NAME.dat > out 2>&1`. `oracle unicon`: every ref is cut from the Unicon translator through
`unicon_bin()` (`lib_oracle_flags.sh`), `ALL.ref` by `util_build_package_suite.py --lang icon --twice` (a program whose two oracle runs differ is not absorbed). Never `unicon -E`, never a normalizer.

## The population
`ALL.icn / ALL.ref / ALL.csv` (declared `heap_kb`/`stack_kb`), `PARTITION.tsv`; `ALL.omit` names every shipped program the container does not absorb with its reason. `EXCLUDED.tsv` holds the
programs a ruled class leaves out of the denominator: bench (26, NOT_A_UNIT_TEST: library modules and benchmarks, CEO-1221), graphics (4, CEO-1315), database (9, the oracle build has no SQL/ODBC), and the
oracle's non-answers (CEO-1696: empty output, a crash, a hang, a nondeterministic answer, program monitoring). Five tests import precompiled packages (`unicon/FxPtTest`, `FxPtTest_OVLD`, `list_test`,
`udb/prime`, `udb/scopes`) and are shipped, ungraded and debt until the oracle runner can prebuild their packages.

## Grading
the project's suite runner (the coo's board; suite key `unitests`). Design: the project's private design notes; lane goal: the project's private design notes.

THE GRAPHICS PROGRAMS (the grader 2026-11-16, on Lon's order of 16:5x CST): graphics/charting and graphics/subwindow are entries, each answer its window cut twice from the graphics unicon on the screen road, cap 20 s (out_files screen.dump); charting's copy made semicolon-ready, the original's ucode by unicon 13.3 -c (handoffs/grader-2026-11-16/unitests-proof.tsv). graphics/gpxtest is an entry too (developer_04 2026-11-18, row unicon-graphics-gpxtest-is-cut-from-a-stored-copy-with-a-fixed-seed-and-joins-the-measure): it was left out because its random-cells panel draws at ?CELL and unicon seeds &random from the clock, so two oracle runs gave two screens. THE STORED COPY IS A CHANGED UPSTREAM FILE: upstream's tests/graphics/gpxtest.icn (9770 lines, a packed program) given its semicolons by util_icon_semicolons.py --compile-args=--dialect=unicon (3364 of them; the graphics unicon 13.3's -c ucode of the original and of the converted text equal, CONVERSION-PROOF.tsv; the tool's raw-text pass was told not to cross a $else, since it put a `;` at the end of the $ifdef branch of main's font search) and then ONE line changed, line 72, `local x, y;` read `local x, y; &random := 12345;` with a comment, no line added, so every later line number stands as upstream's. Its answer is cut from the graphics unicon on the screen road, cap 600, twice and equal: the three WAttrib() failure lines the program writes (no window manager places a window) and `screen 1024x768 md5 6a0b5d6d1434185663718f40abbbf61a`. imgtex, a 3D cube that turns for ever, stays left out and is SET ASIDE in EVENTS-NONE.tsv, the class of kaleid in unicon_uni: MEASURED on the graphics unicon through the screen road at cap 8, three runs answer `screen busy`, `screen unstable` and `screen busy`, never a still screen.

THE CRYPTO PROGRAMS (the grader 2026-11-17, on Lon's word in the grader's window choosing "Unicon crypto tests (30)"): upstream's `tests/crypto`
(UTR 27: hash, HMAC, sign and verify, encrypt, file keys, and TLS and DTLS sockets on 127.0.0.1 at a random port from 30000) is vendored as
`crypto/`, its `data/` (keys and certificates; the earliest valid one expires in 2036, the two `*-expired.crt` in 2010 by design) and `stand/`
verbatim. The plain oracle was built `--disable-graphics` and has no OpenSSL, so these 29 refs are cut from the graphics unicon
(`graphics_unicon_bin()`, the same revision d784f58 built with its default configure, whose features name secure sockets layer encryption),
as upstream's Makefile.test runs each, `./NAME < /dev/null > out 2>&1`, `tlsutil.u` built first; twice, in two fresh copies, byte equal, each
rc 0 and each equal to upstream's own `stand/NAME.std`. The 30 files and the package they import, `uni_lib/crypto.icn` (uni/lib, 70 lines,
it links `base64`), were given their semicolons by `util_icon_semicolons.py --compile-args=--dialect=unicon` and proved same-code by the
graphics unicon (`CONVERSION-PROOF.tsv`). The first SCRIP reading (mode 3, SCRIP 8c757a3bc1): 2 of 29 (`dtls`, `filecrypt`); the rest stop
in the crypto runtime (`open` with mode `eh` unknown in `hash`, error 103 in `sign`, the TLS server never answering in `tlsplain`).
