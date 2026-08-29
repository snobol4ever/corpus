# KEEP.md — tests/prolog/linker/ancestor

Per `tests-consolidate-prolog` (parent: `corpus-suites-consolidation`).

## `ancestor.pl` — orphaned half of a two-file link test, ruled by hq_C 2026-08-28

```prolog
:- export(ancestor/2).

parent(tom, bob).
parent(bob, ann).
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(X,Z), ancestor(Z,Y).
```

**Not a runtime test in the shape this task converts, and not convertible by fixing it either.**
It exports `ancestor/2` and defines `parent/2` facts + a recursive `ancestor/2` rule, but has no
`main`/`initialization` and no output call anywhere — it produces zero stdout even in principle.
`corpus_suite_harness.py convert-blocks` needs a `.ref` of expected output to pin; there is nothing
here to pin.

**hq_C's measurement (2026-08-28):** `find linker -type f` returns exactly this one file, and a
tree-wide grep finds no other file mentioning `ancestor` anywhere in the corpus. It reads as one
half of a two-file link test — this module, plus a second file that would `:- use_module` it and
actually call `ancestor/2` to produce output — but that second file does not exist anywhere in the
corpus, whether lost or never committed.

⛔ **It is not a broken test; the missing importer is the actual defect.** Converting this file
would manufacture a witness for a capability (multi-file linking) that nothing here currently tests.
Leave it loose, undeclared-as-a-test but declared-here-as-a-keeper, until either the missing importer
turns up or someone decides multi-file Prolog linking deserves a real test pair written from scratch.

## Re-running this classification

Re-run `grep -rl ancestor corpus/tests/prolog/` before trusting "no importer exists" — a future
commit could add one, at which point this becomes a real two-file link test and this KEEP.md should
be deleted rather than updated.
