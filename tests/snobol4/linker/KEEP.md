# linker/ — STANDALONE-KEEP, all 3 files (task `tests-consolidate-snobol4-loose`)

Two independent reasons, either one sufficient on its own:

1. **Excluded at the parent-task level.** `corpus-suites-consolidation.task.md` (ceo baton amendment,
   2026-08-24): "`linker` and `jvm_j3` stay EXCLUDED pending their own disposition (dead-backend
   adjacency)." This directory is not in scope for suite conversion at all, by a ruling above this task.
2. **Structurally incompatible with the suite format.** These tests exercise cross-file IMPORT/EXPORT
   linking (`greet_lib.sno` + `greet_main.sno` are two halves of one linked test; `ancestor/` nests a
   further cross-file case). The suite format's `convert_one`/`run_suite_entry` model is one-complete-
   program-per-entry, run alone in its own temp dir — it has no slot for a test that only makes sense as
   two or more cooperating files. Documented earlier in this task at
   `SCRIP/scripts/scorecard_snobol4.sh` (search `MISC_DIRS`).

## Filename manifest

```
greet_lib.sno    greet_main.sno    ancestor_main.sno
```

3 files, matching the directory's on-disk `.sno` count exactly (`ancestor_main.sno` is nested at
`linker/ancestor/ancestor_main.sno`; the gate matches basenames tree-wide regardless of depth).

— seat14, 2026-08-27, task `tests-consolidate-snobol4-loose`
