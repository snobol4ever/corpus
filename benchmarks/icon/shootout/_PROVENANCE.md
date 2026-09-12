# benchmarks/icon/shootout — the Computer Language Benchmarks Game, Icon entries

**Upstream:** `uniconproject/unicon`, `tests/bench/` (which carries the Benchmarks Game entries written for Icon/Unicon). Cloned 2026-09-11 by ceo on Lon's order to acquire third-party tests and benchmarks.
**License:** The Computer Language Benchmarks Game, Revised BSD — each file keeps its upstream header naming the project and URL.

**⛔ WHY ONLY FIVE OF TWENTY-SIX.** Unicon is a SUPERSET language with its own compiler and runtime; it is not our oracle. Each candidate was compiled with the real Arizona oracle `/home/resources/icon-master/bin/icont` before being taken:

- **16 of 26 are REJECTED by `icont`** and are Unicon-only, not Icon: `binary-trees n-body fasta k-nucleotide regex-dna generate auxiliary deal pool meteor-contest run-benchmark run-med run-shootout run-test` fail on `":=": invalid declaration` (Unicon class/`initially` syntax), and `thread-ring chameneos-redux` on Unicon monitors. They are OUTSIDE THE ARIZONA BASELINE by the oracle's own refusal and are deliberately NOT vendored — taking them would have put 16 programs in the tree that can never be graded.
- **5 of the 10 that pass `icont` we already hold** — `concord ipxref queens rsg shuffle` are already in `benchmarks/icon/` (and note `concord` appears 4x and `queens` 5x across the corpus, a pre-existing duplication).
- **5 are new and `icont`-clean, and those are these:** `fannkuch mandelbrot pidigits reverse-complement spectral-norm`.

⛔ Under the KERNEL CONVENTION (RULES.md, CEO-567) these are RAW UPSTREAM and not yet conforming: they carry no `.ref`, and any timing or iteration driver inside them must move out to the generated wrapper before they are graded for speed. They are vendored here as provenance, not as a measured population; the ledger row for each reads CORRECTNESS=UNGRADED and SPEED=UNKNOWN until that conversion lands.

## CONVERTED TO THE KERNEL CONVENTION (cfo, 2026-09-12, row icon-shootout-five-programs-are-raw-upstream-and-cannot-parse-under-scrip)

All five are now REVIEWED FILES in the semicolon form (Icon requires `;` between statements under SCRIP, zero newline
processing; icont accepts the same text -- every one of the five compiles under `icont -s`), with these edits and no others:

- `$ifdef MAIN` / `$endif` removed: `procedure main` is a plain top-level entry point (the Unicon bench driver defined MAIN; a kernel does not carry its harness).
- `global output` declared in each file: upstream set `output := &output` in main and read `output` in the run procedure, which under Icon are two different implicit locals -- the identity only worked because the Unicon harness declared the global elsewhere. The declaration makes the file self-contained; `write(output, ...)` is otherwise untouched.
- mandelbrot: `run_mandelbrot_concurrent` (Unicon `Pool`/`imap`/`&features == "concurrent threads"`) deleted; main calls `run_mandelbrot_sequential` directly. That branch was dead under Icon and is per-engine accommodation, which CEO-567 clause 1 forbids in a kernel.
- Trailing whitespace stripped. Nothing else in any computation changed.

`.ref` per graded program, CUT FROM THE ORACLE (icont/iconx 9.5, `IPATH=/home/resources/icon-master/lib` for pidigits' `link printf`),
never by hand; arguments in `<name>.argv` (name<TAB>arg, the corpus convention): spectral-norm 100, pidigits 30, mandelbrot 64
(a P4 PBM -- binary, compared with cmp). `reverse-complement.fasta` is a small deterministic three-record FASTA fixture (seeded
generator, 187/251/143 bases) named by its `.argv`.

TWO OF THE FIVE ARE OUTSIDE THE ARIZONA BASELINE, in `OUTSIDE_ARIZONA_BASELINE.tsv` beside the sources with the oracle's own
message: fannkuch (`Run-time error 122`: three-argument `insert` on a list is Unicon-only) and reverse-complement
(`Run-time error 106`: `stat()` is Unicon-only). The ceo had measured fannkuch's 122 at vendoring; reverse-complement's 106 was
found at conversion. Both still owe the guard and parse arms and both pass them.

THE GATE: `SCRIP/scripts/test_gate_icon_shootout_is_ceo567_conforming.sh` (wired into `make test`) -- per kernel: no guard, SCRIP
parses it, icont compiles OUR copy and the oracle's binary reproduces the ref, SCRIP m3 and m4 reproduce the ref byte for byte;
outside rows are re-asked of the oracle on every run.

FOUND BY THIS CONVERSION: SCRIP's `write`/`writes` truncated a string at its first embedded NUL on stdout and stderr (the file
branch was already length-aware) -- mandelbrot's PBM lost 190 of 512 pixel bytes and looked like a wrong computation. Cured in
SCRIP the same sitting with its own gate (`test_gate_icn_write_is_byte_exact_through_an_embedded_nul.sh`).
