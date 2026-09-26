# packages/snobol4/spitbol_x32_tests — SPITBOL x32's own test directory

**Lon 2026-09-26 14:33 CDT, in-chat to the ceo, verbatim:** *"Place the 21 SPITBOL x32 tests in our corpus repo and make test suite entry for those."* — and to hq_snobol4 at 17:1x: *"where is the X32T test suite? put that in the official list of test suites."* (ceo CEO-1287; row `snobol4-the-21-spitbol-x32-tests-join-the-corpus-as-a-vendored-package-with-a-runner-and-a-suite-row-x32t-lon-2026-09-26`).

**Upstream:** <https://github.com/spitbol/x32>, path `test/`, by Dave Shields. Copied from the org's fork <https://github.com/snobol4ever/x32> at commit `3fe75bb2eb45cbcb995ed66056d7e0c6bace5235` (checkout `/home/claude_ceo/x32`). `test/` was last changed upstream at `081fe9e` (2015-06-23); the fork's three 2026-03-11 commits touch the build and `systm.c` only, so every file here is upstream's byte for byte (`cmp` on all 21 at vendoring).

**License:** GPL v2 or later — `COPYING`, `COPYING-LOAD-MODULES` and `COPYING-SAVE-FILES` from the repository root are vendored beside the tests (the `spitbol_x64_tests` precedent).

**Population:** 21 `.spt` programs — `arcget arcput c cc d def e en enum equ g hello hi host lower module op rev save sv tbl` — plus upstream's two build scripts `sanity-check` and `sanity-check-tcc`, which rebuild SPITBOL and are not programs (kept for fidelity, never graded). Most are SPITBOL's own build-time filter tools (they read `INPUT` and write `OUTPUT`: `lower`, `cc`, `tbl`, `c`, `rev`, `d`, `def`, `equ`, `op`, `arcget`, `arcput`), two are the one-line program `end` (`e`, `en`), and the rest exercise `HOST`, save files and load modules (`host`, `save`, `sv`, `module`). The x32 `spitbol` binary itself is no oracle (it segfaults on hello world on this box, ceo CEO-1287); the ONE oracle is `sbl -bf`.

**This commit is the pristine vendored tree**, unconverted: the case-conversion gate reads its ORIGINAL arm from the commit that ADDED this package, exactly as `spitbol_x64_tests`' gate does. The conversion, the attribute table and the runner follow in their own commits, recorded below.
