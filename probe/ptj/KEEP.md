# KEEP.md — probe/ptj

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

1 of 3 witnesses converted into `tests/snobol4/probe/ptj.{sno,ref}`. Two stay loose, over
Lon's 40-line suite-entry ceiling, converter's judgment -- not otherwise investigated for
correctness (`_segv` and `_nonterminating` in the basenames are the ORIGINAL AUTHOR's naming,
describing what the witness probes, not a claim this session verified either way).

| file | lines | reason |
|---|---|---|
| ptj2_number_leading_digit_segv.sno | 53 | exceeds the 40-line suite-entry ceiling |
| ptj1_arbno_defer_nonterminating.sno | 309 | exceeds the 40-line suite-entry ceiling |

## Machine-readable exception list (DONE-WHEN mirror)

⛔ Mirrors `probe/conformance/KEEP.md`'s fix (SCRIP `f3dc4672a`) -- this row's DONE-WHEN
greps this section, not the prose above, for `- <path>` lines. Add a line here in the SAME
edit that adds a file to this KEEP.md; remove one here in the SAME edit that converts a file
out of it.

- probe/ptj/ptj1_arbno_defer_nonterminating.sno
- probe/ptj/ptj2_number_leading_digit_segv.sno
