# KEEP.md — tests/icon/unresolved/

These 5 files stay loose, permanently, on purpose — they are NOT candidates for master
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
- `global_test.icn` — no `.expected`; disagreement found live against `icont`/`iconx`
- `jcon_audit_53_section.icn` (+`.expected`) — originally `icon/jcon_audit/53_section.icn`
- `jcon_audit_54_section_plus.icn` (+`.expected`) — originally `icon/jcon_audit/54_section_plus.icn`
- `jcon_audit_88_swap_lv.icn` (+`.expected`) — originally `icon/jcon_audit/88_swap_lv.icn`

`scripts/audit_jcon_wholesale.sh` reads these 3 jcon_audit files from here (alongside the other 91,
extracted fresh from the icon master) so its own audit coverage is unchanged by the absorption.
