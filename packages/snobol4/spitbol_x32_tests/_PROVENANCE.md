# packages/snobol4/spitbol_x32_tests — SPITBOL x32's own test directory

**Lon 2026-09-26 14:33 CDT, in-chat to the ceo, verbatim:** *"Place the 21 SPITBOL x32 tests in our corpus repo and make test suite entry for those."* — and to hq_snobol4 at 17:1x: *"where is the X32T test suite? put that in the official list of test suites."* (ceo CEO-1287; row `snobol4-the-21-spitbol-x32-tests-join-the-corpus-as-a-vendored-package-with-a-runner-and-a-suite-row-x32t-lon-2026-09-26`).

**Upstream:** <https://github.com/spitbol/x32>, path `test/`, by Dave Shields. Copied from the org's fork <https://github.com/snobol4ever/x32> at commit `3fe75bb2eb45cbcb995ed66056d7e0c6bace5235` (checkout `/home/claude_ceo/x32`). `test/` was last changed upstream at `081fe9e` (2015-06-23); the fork's three 2026-03-11 commits touch the build and `systm.c` only, so every file here is upstream's byte for byte (`cmp` on all 21 at vendoring).

**License:** GPL v2 or later — `COPYING`, `COPYING-LOAD-MODULES` and `COPYING-SAVE-FILES` from the repository root are vendored beside the tests (the `spitbol_x64_tests` precedent).

**Population:** 21 `.spt` programs — `arcget arcput c cc d def e en enum equ g hello hi host lower module op rev save sv tbl` — plus upstream's two build scripts `sanity-check` and `sanity-check-tcc`, which rebuild SPITBOL and are not programs (kept for fidelity, never graded). Most are SPITBOL's own build-time filter tools (they read `INPUT` and write `OUTPUT`: `lower`, `cc`, `tbl`, `c`, `rev`, `d`, `def`, `equ`, `op`, `arcget`, `arcput`), two are the one-line program `end` (`e`, `en`), and the rest exercise `HOST`, save files and load modules (`host`, `save`, `sv`, `module`). The x32 `spitbol` binary itself is no oracle (it segfaults on hello world on this box, ceo CEO-1287); the ONE oracle is `sbl -bf`.

**This commit is the pristine vendored tree**, unconverted: the case-conversion gate reads its ORIGINAL arm from the commit that ADDED this package, exactly as `spitbol_x64_tests`' gate does. The conversion, the attribute table and the runner follow in their own commits, recorded below.

## THE CASE CONVERSION (CEO-571), PROVEN, NOT ARGUED — hq_snobol4 2026-09-26

As vendored, 17 of 21 end in lower-case `end` and `sbl -bf` (our one mandated arm) refuses them. Converted once, in the repo, by `SCRIP/scripts/util_uppercase_snobol4_builtins.py` (builtin names outside string literals and comments; user identifiers keep their case). Changes per file: arcget 24 · arcput 17 · c 32 · cc 13 · d 43 · def 13 · e 1 · en 1 · enum 10 · equ 8 · g 7 · hello 2 · hi 2 · host 0 · lower 6 · module 1 · op 704 · rev 39 · save 1 · sv 0 · tbl 20.

⛔ **One converter defect found and cured on the way:** `c.spt` calls `leq`, and the converter's builtin list carried `LGT` but not `LEQ LGE LLE LLT LNE`, so the first pass left `leq` lower case, `-bf` raised undefined function inside the block-comment logic, and the proof below caught it on a real stdin (4 lines of output against the original's 18). The five lexical comparators are added to the list (SCRIP, same landing as this package's runner).

**The proof:** every program run in a fresh copy of its own tree, `sbl` (folding, upstream's own invocation) on the pristine commit that added this package (`b2cbc19cc`) against `sbl -bf` on the converted tree — stdout, stderr AND exit code byte-identical, 21 of 21, on `/dev/null` AND on a four-line text stdin (the filters print nothing on `/dev/null`, so an empty stdin alone proves little). `SCRIP/scripts/test_gate_spitbol_x32_case_conversion_is_oracle_equivalent.sh` re-runs it.

## THE ATTRIBUTE TABLE AND THE SIDECARS

`ALL.csv` declares every program's heap (131072 KB, SPITBOL's `-d128m`), stack (4096 KB, `-s4m`), and `compile_args` `--stlimit` — the statement instrumentation the runner types today for every program it grades, declared on exactly those rows (the coo's clause 8 (f) migration rule); pruning to the programs that read the statement keywords (`arcget`, `arcput` set `&STLIMIT`, `arcget` sets `&DUMP`) is owed. `EXCLUDED.tsv` and `UNGRADED.tsv` are present and empty. Every program is graded with `/dev/null` on stdin, the `spitbol_x64_tests` precedent; declared stdin sidecars for the filter tools would make those programs test far more, and are owed as their own row.
