# KEEP.md — probe/subscript

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

All 3 `.sno`/`.ref` pairs converted into `tests/snobol4/probe/subscript.{sno,ref}`.

One pair is left behind, untouched: `icn_string_subscript.icn` + `.ref` is an **Icon**
witness (not SNOBOL4 despite living in this `probe/` directory) -- same miscategorization
class as `probe/icn/` (see that directory's own KEEP.md), just a single stray pair here
rather than a whole family. Out of reach of `corpus_suite_harness.py convert`'s SNOBOL4 path
and Icon has no `LANG_CONFIGS` entry either (confirmed alongside the `probe/icn` finding).

| file | reason |
|---|---|
| icn_string_subscript.icn / .ref | Icon, not SNOBOL4 -- wrong tool for this pair, not a size/correctness exclusion |

## Machine-readable exception list (DONE-WHEN mirror)

⛔ Mirrors `probe/conformance/KEEP.md`'s fix (SCRIP `f3dc4672a`) -- this row's DONE-WHEN
greps this section, not the prose above, for `- <path>` lines. Add a line here in the SAME
edit that adds a file to this KEEP.md; remove one here in the SAME edit that converts a file
out of it.

- probe/subscript/icn_string_subscript.icn
