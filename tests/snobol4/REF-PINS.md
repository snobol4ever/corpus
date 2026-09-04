# SCRIP-ruled ref pins — SNOBOL4 master

⛔ **An entry listed in `ALL.refpins.tsv` has a ref that disagrees with the oracle ON PURPOSE.** That file is
the machine-readable ledger; this one says why the mechanism exists at all.

**The gap it closes** (hq_C → hq_T, 2026-09-04). A master entry whose correct answer is a **SCRIP ruling**
rather than the oracle's answer had no supported way to be re-anchored. `capture-oracle-refs` would
faithfully re-record SPITBOL's answer — which for these entries is the wrong one, permanently — and the
loose source pairs no longer exist (one-flat-suite), so there was no upstream to fix either. The only
remaining option was hand-editing a generated 1753-entry file, which is not a mechanism and which hq_C
rightly refused to improvise.

**How to pin one:**

```
python3 SCRIP/scripts/corpus_suite_harness.py pin-ref \
    corpus/tests/snobol4/ALL.sno corpus/tests/snobol4/ALL.ref <entry> \
    --ruling "<who ruled it, when, and why the oracle can never grade it>" --apply
```

* `--ruling` is **mandatory**. A pin with no stated authority cannot be told from a ref cut while the
  compiler was broken, which is the exact failure this project spends its gates preventing.
* The pinned text comes from a **live run**, never from typing. Text typed by hand is a claim about
  behaviour; output from a run is evidence of it.
* Without `--apply` it prints the before/after and writes nothing.
* `capture-oracle-refs` **refuses** on a pinned entry rather than skipping quietly — "I left this alone" and
  "I never looked" are the same output otherwise.

⛔ **Commit the master pair and the ledger together.** A pin whose ledger line is unpushed is just a ref that
disagrees with the oracle for no recorded reason — which is indistinguishable from the bug.
