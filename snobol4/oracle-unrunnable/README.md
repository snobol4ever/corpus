# oracle-unrunnable — programs no oracle can grade

⛔ **Nothing in this directory is graded, and that is the point.** A program the oracle cannot run has **no ground truth**, so it can neither pass nor fail — leaving it in a graded suite only produces an `UNSCR` row that every board has to explain away.

## expression.sno (moved here 2026-08-23 s261, by Lon's instruction)

It `-INCLUDE`s 15 files (`global.sno`, `ShiftReduce.sno`, `Gen.sno`, …) that are **absent from this checkout**, so it does not parse. Measured through the board's own oracle path: **`sbl rc=139`**, no pin, reported as the single `UNSCR` row of the `demos` suite.

It sat in `programs/snobol4/demo/`, which the scorecard grades at `-maxdepth 1`. It was the only demo without a `.ref`, and `util_ref_mint.sh` classifies it `SIG103 — NOT MINTED, oracle-unrunnable, it has no answer to record`.

⛔ **Do not "fix" this by minting a `.ref` from a failed oracle run** — that pins SPITBOL's error report as the definition of correct, and the program then passes forever by failing. If the 15 includes are ever restored to the checkout, the program can move back and be pinned honestly.

⭐ Note for anyone grepping: several scripts still mention `demo/expression.sno` in **comments** describing historical measurements (`test_gate_fc_no_residual_rbp.sh`, `util_s_md5_sweep.sh`, `util_regen_demo_s_artifacts.sh`, `test_corpus_snobol4.sh`). Those are prose about what was measured then, not live paths. `generate_demo_jvm_artifacts.sh` lists it as a live entry, but the JVM backend is dormant/stubbed.
