# benchmarks/icon/shootout — the Computer Language Benchmarks Game, Icon entries

**Upstream:** `uniconproject/unicon`, `tests/bench/` (which carries the Benchmarks Game entries written for Icon/Unicon). Cloned 2026-09-11 by ceo on Lon's order to acquire third-party tests and benchmarks.
**License:** The Computer Language Benchmarks Game, Revised BSD — each file keeps its upstream header naming the project and URL.

**⛔ WHY ONLY FIVE OF TWENTY-SIX.** Unicon is a SUPERSET language with its own compiler and runtime; it is not our oracle. Each candidate was compiled with the real Arizona oracle `/home/resources/icon-master/bin/icont` before being taken:

- **16 of 26 are REJECTED by `icont`** and are Unicon-only, not Icon: `binary-trees n-body fasta k-nucleotide regex-dna generate auxiliary deal pool meteor-contest run-benchmark run-med run-shootout run-test` fail on `":=": invalid declaration` (Unicon class/`initially` syntax), and `thread-ring chameneos-redux` on Unicon monitors. They are OUTSIDE THE ARIZONA BASELINE by the oracle's own refusal and are deliberately NOT vendored — taking them would have put 16 programs in the tree that can never be graded.
- **5 of the 10 that pass `icont` we already hold** — `concord ipxref queens rsg shuffle` are already in `benchmarks/icon/` (and note `concord` appears 4x and `queens` 5x across the corpus, a pre-existing duplication).
- **5 are new and `icont`-clean, and those are these:** `fannkuch mandelbrot pidigits reverse-complement spectral-norm`.

⛔ Under the KERNEL CONVENTION (RULES.md, CEO-567) these are RAW UPSTREAM and not yet conforming: they carry no `.ref`, and any timing or iteration driver inside them must move out to the generated wrapper before they are graded for speed. They are vendored here as provenance, not as a measured population; the ledger row for each reads CORRECTNESS=UNGRADED and SPEED=UNKNOWN until that conversion lands.
