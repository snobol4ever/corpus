# KEEP.md — tests/icon/unresolved/

These 4 files stay loose, permanently, on purpose — they are NOT candidates for master
absorption and never will be until the underlying SCRIP compiler defects they expose are fixed.

## Why they're here, not in the icon master

Part of the `icon-scrip-test-icn-absorption` row's 107-file batch (originally under
`corpus/tests/scrip_test/icon/`). `capture-oracle-refs --lang icon` only mints a `.ref` when a
live `scrip` run agrees with a live `icont`/`iconx` oracle run, both m3 and m4 — these 5 disagree
with the real oracle (m3 and m4 agree with *each other*, but not with ground truth), so no `.ref`
was ever written and none were absorbed. Relocated here (out of `tests/scrip_test`, which is
transient staging that shrinks toward zero as each language's absorption completes — see
`scripts/corpus_coverage_manifest.tsv`) once `tests/scrip_test/icon/` was otherwise fully drained,
so this permanent residue doesn't block that directory's own eventual disappearance.

Full characterization: `.github
FINDING-2026-08-27-seat09-icon-cset-embedded-nul-is-a-four-layer-representation-gap.md` is
unrelated (different bug); the actual disagreement analysis for these 5 lives in the commit that
absorbed the other 99 (`corpus b9c779637`, icon-scrip-test-icn-absorption) — each is a genuine
scrip-vs-oracle output mismatch, real compiler defects, out of scope for corpus consolidation.

## Files

- `generators.icn` — no `.expected`; disagreement found live against `icont`/`iconx`

⛔⭐ **`global_test` LEFT THIS LIST 2026-09-04 (hq_B, row icon-every-non-package-source-...): THE
RECORDED DISAGREEMENT WAS NOT A COMPILER DEFECT.** Its source carried a trailing `;` after the
declaration `global counter, message, total;`, which the real oracle REFUSES outright (`Line 1 #
";": invalid declaration`) while SCRIP accepts it. A refusing oracle emits no output, so
"scrip says X, oracle says nothing" was recorded as a scrip-vs-oracle mismatch and filed here as
a real compiler defect. Delete that one byte and the two AGREE exactly (`1` / `hello` / `42`,
m3 and m4 both), which is how `capture-oracle-refs --lang icon` was then able to mint the `.ref`
that had "never been written". ⭐ Same narrow-instrument shape this tree keeps re-learning: the
instrument answered *did the oracle produce matching output*, and that was read as *does SCRIP
compute the wrong answer*. ⛔ Its sibling `generators.icn` above is NOT this class and was
re-measured, not assumed: the oracle compiles it fine and SCRIP genuinely prints ` 2` where the
oracle prints ` 2 3 5 7 ... 47`. That one is a real defect (row `icon-generator-comma-conjunction-
resumes-once`).
⛔ NOTE FOR ANYONE EDITING THIS FILE: the builder's keeper matcher keys on the token
`<name>.icn`. Writing that absorbed file's name WITH its extension anywhere in this file silently
re-excludes it from the master. It is spelled without one above on purpose.
- `jcon_audit_53_section.icn` (+`.expected`) — originally `icon/jcon_audit/53_section.icn`
- `jcon_audit_54_section_plus.icn` (+`.expected`) — originally `icon/jcon_audit/54_section_plus.icn`
- `jcon_audit_88_swap_lv.icn` (+`.expected`) — originally `icon/jcon_audit/88_swap_lv.icn`

`scripts/audit_jcon_wholesale.sh` reads these 3 jcon_audit files from here (alongside the other 91,
extracted fresh from the icon master) so its own audit coverage is unchanged by the absorption.
