# KEEP — files that stay loose, deliberately

Per this family's consolidation task (`probe-consolidate-m1-and-small`, GOAL text:
"Data inlines in the suite entries; ONLY genuinely stdin/file-driven tests stay
standalone, marked in a KEEP.md beside them").

- `m1_include_sort_loop.sno` / `.ref` / `.inc` — file-driven via `-INCLUDE
  'm1_include_sort_loop.inc'`. The suite format has no `-INCLUDE` concept (same
  scope boundary already ruled for stdin-bearing tests in the parent baton,
  `corpus-suites-consolidation`): a one-line/banner-block entry is
  self-contained by construction, and `-INCLUDE` needs a second file on disk
  at a stable relative path. Its inline twin (`m1_include_sort_loop_inline`)
  IS converted, into `tests/snobol4/probe/m1.sno`/`.ref` — it exercises the
  same defect without the include dependency.
