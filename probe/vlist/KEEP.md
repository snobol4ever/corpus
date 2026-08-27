# KEEP.md — probe/vlist

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

3 of the 4 witnesses here are **not currently green** — the harness's byte-equal-or-no-delete
law refused the whole family until they were explicitly `--skip`'d (loud, deliberate exclusion,
never a silent drop). `vl_alt_second` converted cleanly and now lives in
`tests/snobol4/probe/vlist.{sno,ref}`.

Live measurement, 2026-08-27 (this session), both m3 and m4:
```
m3: PASS rc=0
m4 --compile: CRASH rc=-11 (SIGSEGV)
```
All three pass mode-3 (`--run`) and crash mode-4 (`--compile`) with the same signal. This is a
live compiler defect (m3/m4 divergence on a crash, not a wrong-answer), out of scope for this
consolidation row to fix — flagged here rather than silently dropped or converted over.

| file | m3 | m4 | reason |
|---|---|---|---|
| vl_alt_first_ok.sno | PASS | CRASH rc=-11 | SIGSEGV under --compile |
| vl_alt_nested_cat.sno | PASS | CRASH rc=-11 | SIGSEGV under --compile |
| vlist_expr_alternation.sno | PASS | CRASH rc=-11 | SIGSEGV under --compile |

## Machine-readable exception list (DONE-WHEN mirror)

⛔ Mirrors `probe/conformance/KEEP.md`'s fix (SCRIP `f3dc4672a`) -- this row's DONE-WHEN
greps this section, not the prose above, for `- <path>` lines. Add a line here in the SAME
edit that adds a file to this KEEP.md; remove one here in the SAME edit that converts a file
out of it.

- probe/vlist/vl_alt_first_ok.sno
- probe/vlist/vl_alt_nested_cat.sno
- probe/vlist/vlist_expr_alternation.sno
