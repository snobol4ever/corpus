# packages/snobol4/spitbol_x64_tests — SPITBOL's own test suite, from our oracle's upstream

**Upstream:** <https://github.com/spitbol/x64>, path `test/`, cloned 2026-09-11 by ceo on Lon's order to acquire third-party tests and benchmarks. This is the upstream of **our own correctness oracle** (`/home/resources/x64/bin/sbl`), so these are the tests the reference implementation checks itself with.
**License:** GPL-3.0 — `LICENSE` and `COPYING` vendored beside the tests (same precedent as `csnobol4_suite` and `packages/prolog/gnu_prolog`).

**Population:** 36 `.sbl` programs + `chks.inc` / `math_chks.inc` (shared assertion includes) + `math_tests.sh` (upstream driver) + `files`, `ru.txt` data. Nothing here existed in our corpus before — we held **zero** `.sbl` files. Coverage is heaviest exactly where ours is thinnest: 21 of the 36 are floating-point (`math_atan cos exp ln pow sqrt sin tan chop diff div plus minus prod quot read remdr sum limits1..4`), plus `gcbuster` (garbage collector stress), `setexit`, `save`, `module`, `host`, `float`, `arcget`/`arcput`, `cfreq`, `lower`, `trim`, `def`, `sv`, `map-x64`, `hello`.

⭐ **THEY ARE SELF-CHECKING.** The math tests print their own verdict (`pass: sqrt(2.6308364999025599e-308) Obs[...]`), so a runner grades them by reading pass/fail rather than by diffing a cut ref — cheaper and more robust than a `.ref` for this package.

## ✅ THE INVOCATION PROBLEM — RULED AND CLOSED (CEO-571, Lon 2026-09-11); ALL 36 ARE GRADEABLE UNDER `sbl -bf`

⭐ **Keep reading past the measurement: it is preserved because it is true, not because it is open.** What
follows is the state as vendored on 2026-09-11 and the ruling that closed it the same day.

**The measurement as vendored.** Our standing law is `-bf` on every program (`sbl_lang_flags()`, the only
authority) because `-f` is the arm that matches SCRIP's **case-sensitive** SNOBOL4. **29 of the 36 files ended
in lowercase `end`**, not `END`:

| invocation | result, as vendored |
|---|---|
| `sbl -bf hello.sbl` (our mandated arm) | **rc=1 — "No END statement found in source file(s)"**, on 29 of 36 |
| `sbl hello.sbl` (upstream's own driver: no flags, case folding) | **rc=0, correct output** |

Keyword-case census as vendored: **uppercase `END` 7 · lowercase `end` 29.**

**The ruling.** Lon 2026-09-11, in-chat to ceo (CEO-571): *"So for case insensitive sources, the solution is to
modify the test source to use uppercase reserved/key-words."* — a fourth option none of the three listed here
had proposed. The source is converted **once, in the repo**, never folded at grade time: a transform inside a
harness run means the artifact we grade is not the artifact in the repo (CEO-567, CEO-570).

**The proof, and it is an instrument, not an assertion.** `SCRIP/scripts/test_gate_spitbol_x64_case_conversion_is_oracle_equivalent.sh`
runs every `.sbl` both ways — `sbl` on the **vendored** source (folding, upstream's own invocation) against
`sbl -bf` on the **converted** source — and requires stdout, stderr AND the exit code to agree. It reads
**36 of 36** and it discriminates: three separate one-character mutations each turn it red.

⛔ **rc IS NOT THE VERDICT, AND THAT IS MEASURED HERE.** During CEO-571 the math tests changed one line each and
still diverged, because their `-INCLUDE` was still lower case — the `-bf` run then printed **nothing at all**
and still exited 0. A silent empty run reads green to any check that only reads `$?`.

### ⭐ WHAT THE LAST TWELVE NEEDED, AND WHY A BLANKET RULE COULD NOT DO IT

`util_uppercase_snobol4_builtins.py` converts bare builtins **outside string literals**, which is right — a
blanket rule inside literals corrupts data. Twelve files needed knowledge that lives in the file:

- **Nine math tests** (`atan chop cos exp ln read sin sqrt tan`) assert with `chks('sqrt(2.63e-308)', ...)`. The
  builtin name is **inside a string that is `EVAL`'d**: folding resolves `sqrt`→`SQRT` at eval time, `-bf`
  leaves it undefined and all 616 lines become `Obs[undefined function called] (exception)`. ⛔ **Uppercasing
  the literal is the wrong cure and the gate proves it** — `chks` **echoes that same string** into every result
  line, so `SQRT(...)` would change 616 lines of output. The cure is **`OPSYN('sqrt','SQRT')`**, one line per
  file: the lower-case name becomes real, and the printed text stays byte-identical to upstream's.
  ⭐ `math_sqrt`'s *expected* values include the literal `'sqrt argument negative'` — genuine `&ERRTEXT` data in
  the same file, untouched. Code and data sit in adjacent arguments of the same call.
- **`module.sbl`** and **`save.sbl`** needed only `exit`→`EXIT` — **`EXIT` was missing from the converter's
  builtin list**, so it reported `0 changes` on a file it could not convert at all, exactly as it reports a file
  that needs none. Added 2026-09-12.
- **`gcbuster.sbl`** sets `&DUMP = 1`, so SPITBOL dumps the symbol table on exit and the **user identifiers
  become output**: the folding arm prints `BASEMEM`, ours printed `basemem`. It is the one file here where
  "user identifiers keep their case" is false, and they are uppercased too. Two cells in that dump are beyond
  any source edit and the gate names and normalizes exactly those, on both arms: **`&CASE`**, which *is* the
  folding flag the two arms differ in, and **`BASEMEM`/`TOPMEM`** (`HOST(-1,2)`/`HOST(-1,3)`), raw heap
  addresses — three consecutive runs of the **unmodified** source under the same binary print three different
  values, so the original arm is not byte-identical to *itself* here and no `.ref` could pin it either.

⛔ **`a.spx`, `module.out` and `save.spx` are NOT part of this package** — they are what `sv.sbl`, `module.sbl`
and `save.sbl` *write*, swept into the CEO-571 commit by a proof run in the working tree. Removed 2026-09-12;
the declared population above is the authority on what belongs here.
