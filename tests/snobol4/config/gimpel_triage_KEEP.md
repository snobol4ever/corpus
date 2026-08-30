# `tests/snobol4/gimpel_triage/` — STANDALONE-KEEP: this family CANNOT become a suite

**Moved here from `corpus/probe/gimpel_triage/` by hq_B, 2026-08-29**, under the `corpus-crosscheck-probe-total-conversion` clause-3 sweep (Lon's "crosscheck and probe convert TOTALLY" ruling). Per the byte-equal-or-refuse law this is a **documented REFUSAL, not a silent drop**: the conversion was attempted, the tool refused, and the reason was measured rather than assumed. 12 files, all preserved byte-identical (`git mv`, zero content changes).

Origin: the Gimpel triage's eight ranked symptom classes — `FINDING-2026-08-27-seat10-gimpel-triage-eight-symptom-classes-ranked.md`. ⚠️ That FINDING and `FINDING-2026-08-24-seat03-vlist-v05-m4-sigsegv-...` both cite these witnesses by their **old** `corpus/probe/gimpel_triage/` path. Those citations are deliberately not rewritten (a FINDING describes the tree as it was); this note is the forwarding address.

## TWO INDEPENDENT REASONS, both measured

### 1. Seven files are a multi-file `-INCLUDE` relationship the suite format cannot express

A suite entry is a self-contained block inside one file. Three drivers pull four modules by name:

| driver | pulls |
|---|---|
| `class1_dup_label_driver.sno` | `class1_dup_label_shared.sno` **twice** (that duplication IS the witness) |
| `class5_sig11_seq_driver.sno` | `class5_sig11_seq_module.sno` |
| `class8_sig6_perm_driver.sno` | `class8_sig6_perm_module.sno` → which pulls `class8_sig6_perm_swap.sno` |

The four modules carry **no `.ref`** — they are not witnesses, they are includes, so `discover_pairs` never sees them. **`corpus_suite_harness.py` has zero `-INCLUDE` handling** (`grep -n INCLUDE` over it returns nothing). Converting a driver would leave it including a path that no longer exists.

### 2. ⛔⭐ THE REMAINING FIVE STILL CANNOT CONVERT — ONE COMPILE-FAILURE WITNESS POISONS THE WHOLE SUITE

The five `-INCLUDE`-free pairs (`class2_rc1_compile_fail_dexp`, `class3_diff_span_self_rebind`, `class4_rc1_rc1_copyl`, `class6_rc1_sig11_once`, `class7_sig6_compile_fail_ip`) were converted on a **scratch copy**, real tree untouched. The tool wrote the suite and then **refused to delete the originals**:

```
⛔ ON-DISK RE-VALIDATION FAILED for 5 entries -- the WRITTEN suite files diverge
   from a fresh re-read/re-run. DO NOT delete originals.
```

Verdicts moved in **both** directions (`class2` orig FAIL/SKIP → suite PASS/PASS; `class7` orig PASS/PASS → suite FAIL/SKIP), which is entry cross-contamination, not per-entry drift. Mechanism confirmed directly rather than inferred:

| measured | result |
|---|---|
| `class2_rc1_compile_fail_dexp.sno` alone, `--compile` | **rc=1** — it is a compile-failure witness *by design* |
| `class7_sig6_compile_fail_ip.sno` alone, `--compile` | rc=0 |
| `class4_rc1_rc1_copyl.sno` alone, `--compile` | rc=0 |
| **the combined 5-entry suite, `--compile`** | **rc=1** |
| **the combined 5-entry suite, `--run`** | **rc=1** |

**A suite file is ONE translation unit.** A single member that fails to compile takes the whole file with it, so no other entry in that file can be graded — which is exactly why healthy entries flipped to FAIL and the broken one flipped to PASS.

## ⭐ THE GENERALISABLE TEST, worth applying before attempting ANY family

**Does any member fail `--compile` on its own? If yes, the family cannot become a suite — regardless of how clean the rest looks.** This is cheap (`./scrip --compile <w>.sno < /dev/null; echo $?` per witness) and it is a *structural* property, not a flaky one, so it never needs a repeat-run budget. It belongs in the pre-flight beside the existing `-INCLUDE` / determinism / consumer-script checks.

Corollary for triage corpora generally: **a family whose whole purpose is to pin compile-time failures is unconvertible by construction.** `gimpel_triage` is named for exactly that (`class2_rc1_compile_fail_dexp`, `class7_sig6_compile_fail_ip`), and so is any future `*_compile_fail_*` set.

## ⛔ WHY IT SITS HERE AND NOT UNDER `tests/snobol4/probe/`

First placed at `tests/snobol4/probe/gimpel_triage/` — **wrong, and `test_corpus_snobol4.sh` caught it immediately and loudly**:

```
suite:probe/gimpel_triage/class7_sig6_compile_fail_ip: harness produced no SUITE_BOARD line
   FAIL=0 over a shrunken denominator is not green.        (rc=2)
```

The board's probe loop is a **recursive** `find "$SUITES/probe" -name '*.sno'` that adopts any `.sno` with a sibling `.ref` as a suite family, so a directory of loose keeper *pairs* dropped in there is read as broken suites. `$SUITES` is scanned for exactly two subtrees — `crosscheck/` and `probe/` — so a **sibling** directory at `tests/snobol4/` is invisible to it. That is the same placement seat14 used for `tests/snobol4/coverage/coverage_sno_nodes.sno`, and it is the precedent to follow for any future non-convertible keeper family.

⭐ Worth recording that the board **refused rc=2 rather than quietly grading a shrunken denominator** — the "a test that cannot measure REFUSES" law is what turned a placement mistake into a thirty-second correction instead of a silently wrong board.

## Consumers

**Zero scripts.** Repo-wide `grep -rl gimpel_triage` over `SCRIP/`, `corpus/` and `.github/` finds only the two historical FINDINGs named above. Nothing in `SCRIP/scripts/` reads this directory, so the move re-points nothing and breaks nothing.

## Declared keepers — all 12 files, kept as loose standalone witnesses

`class1_dup_label_driver` · `class1_dup_label_shared` · `class2_rc1_compile_fail_dexp` · `class3_diff_span_self_rebind` · `class4_rc1_rc1_copyl` · `class5_sig11_seq_driver` · `class5_sig11_seq_module` · `class6_rc1_sig11_once` · `class7_sig6_compile_fail_ip` · `class8_sig6_perm_driver` · `class8_sig6_perm_module` · `class8_sig6_perm_swap`
