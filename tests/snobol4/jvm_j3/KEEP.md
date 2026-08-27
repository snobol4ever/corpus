# jvm_j3/ — STANDALONE-KEEP, all 6 files (task `tests-consolidate-snobol4-loose`)

Two independent reasons, either one sufficient on its own:

1. **Excluded at the parent-task level.** `corpus-suites-consolidation.task.md` (ceo baton amendment,
   2026-08-24): "`linker` and `jvm_j3` stay EXCLUDED pending their own disposition (dead-backend
   adjacency)." This directory is not in scope for suite conversion at all, by a ruling above this task.
2. **Same structural mismatch as `parser/`/`smoke/`** (see `parser/KEEP.md`): zero `.ref` siblings,
   graded LIVE by `scorecard_snobol4.sh`'s `MISC_DIRS` bucket, not by a static pre-captured `.ref`.
   Documented earlier in this task at `SCRIP/scripts/scorecard_snobol4.sh` (search `MISC_DIRS`).

## Filename manifest

```
dupl_test.sno   goto_f.sno    goto_s.sno
input_test.sno  remdr_test.sno  size_test.sno
```

6 files, matching the directory's on-disk `.sno` count exactly.

— seat14, 2026-08-27, task `tests-consolidate-snobol4-loose`
