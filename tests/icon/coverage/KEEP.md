# KEEP.md — tests/icon/coverage

Per `tests-consolidate-icon` (parent: `corpus-suites-consolidation`). The 1 file stays loose.

## Why

`coverage_x64_gaps.icn` has **no `.expected`/`.ref` sibling** (confirmed: only `.icn` + `.s` exist)
— nothing for `corpus_suite_harness.py convert-blocks` to pin as expected output. Its own header
comment identifies its actual role: `# coverage_x64_gaps.icn — exercises ICN kinds missing from
emit_x64_icon.c`, listing ~30 specific `ICN_*` node kinds it deliberately exercises. This is a
**codegen coverage probe** (does the emitter handle every construct without crashing/mis-emitting),
not a fixed-output correctness test — the same category as `tests/icon/samples`'s and
`tests/icon/`'s oracle-less standalones (`../KEEP.md`, `../samples/KEEP.md`), for the same
structural reason.

## The file

| file | reason |
|---|---|
| `coverage_x64_gaps.icn` | codegen-coverage probe, no pinned expected output to convert |

## Re-running this classification

Re-check for an `.expected` file appearing (would make it convertible). Re-read the file's own
header comment before assuming its coverage list is current — codegen coverage is exactly the
kind of thing that drifts as the emitter gains new node kinds.
