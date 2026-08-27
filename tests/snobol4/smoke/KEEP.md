# smoke/ — STANDALONE-KEEP, all 6 files (task `tests-consolidate-snobol4-loose`)

Same reason as `parser/` (see that directory's `KEEP.md` for the full argument): zero `.ref` siblings,
graded LIVE by `scorecard_snobol4.sh`'s `MISC_DIRS` bucket via a fresh oracle comparison at scorecard
time, not by a static pre-captured `.ref`. Documented earlier in this task at
`SCRIP/scripts/scorecard_snobol4.sh` (search `MISC_DIRS`).

## Filename manifest

```
beauty_compiled.sno   empty_string.sno   expr_parser.sno
hello.sno             multi.sno          null.sno
```

6 files, matching the directory's on-disk `.sno` count exactly.

— seat14, 2026-08-27, task `tests-consolidate-snobol4-loose`
