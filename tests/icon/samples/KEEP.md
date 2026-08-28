# KEEP.md — tests/icon/samples

Per `tests-consolidate-icon` (parent: `corpus-suites-consolidation`). All 8 files stay loose.

## Why

**Byte-identical duplicates of the 8 root-level `tests/icon/` standalones** (confirmed via `diff`,
2026-08-28: `hello.icn`/`generators.icn` checked directly, rc=0 both). Same underlying reason as
the root copies (`../KEEP.md`): **no `.expected`/`.ref` oracle exists for any of the 8**, so there
is no pinned expected output for `corpus_suite_harness.py convert-blocks` to carry into a suite
entry — not a "too risky" exclusion, a "nothing here fits the shape this task converts" one.

`generators.icn` here additionally exercises `suspend`/`create(` (matches the root copy), so even
if an oracle existed it would need the same generator-risk screening every other suspend-bearing
Icon file in this tree gets, not a routine conversion.

## The 8 files

```
generators.icn hello.icn meander.icn palindrome.icn queens.icn roman.icn sieve.icn wordcount.icn
```

⭐ **Secondary finding, flagged not fixed:** this directory appears to be a **dead duplicate** of
`tests/icon/`'s own root-level standalones — same 8 names, byte-identical content on every file
checked. Corpus hygiene (is `samples/` itself defunct litter, or does something intentionally read
from here rather than the root copies?), not this row's job to resolve or delete unilaterally, same
standing as every other "found stale/duplicate content, didn't touch it" note across this task's
history.

## Re-running this classification

Re-check for an `.expected` file appearing beside any of the 8 (would make that entry
convertible). Re-diff against `../` if either copy is ever edited — a diverged pair would mean
this is no longer a pure duplicate and the reasoning above needs re-deriving.
