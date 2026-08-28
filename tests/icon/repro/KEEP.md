# KEEP.md — tests/icon/repro (remaining loose files)

Per `tests-consolidate-icon`. 6 of `repro/`'s original 9 `.icn` entries already converted into
`../repro.icn`/`.ref` (seat08, 2026-08-28, corpus `74e22836`). These 3 stay loose, each pending a
ruling this row has no standing to make unilaterally — not permanent keepers, temporary ones.

## 3 files — RULING NEEDED, not this row's call

| file | status |
|---|---|
| `table_key_order.icn` (+ `.expected`) | Oracle-confirmed wrong-answer bug: SCRIP disagrees with both this file's own `.expected` AND real Arizona `icont` (which agree with each other) on table iteration order, traced to `BID_key` sharing the s262 SNOBOL4 `TABLE` rewrite's bucket structure — a live SHARED-NODE VERDICT SCOPE gap (RULES.md:185), not a crash. Full trace: `.github/FINDING-2026-08-28-seat08-icon-table-key-order-diverges-from-arizona-since-the-snobol4-table-rewrite.md`. Mailed `hq_C` (`icon-table-key-order-diverges-from-arizona`), unresolved as of this session — re-check before assuming still open. |
| `keyorder.icn` | Byte-for-byte duplicate of `table_key_order.icn` (confirmed via `diff`), zero references anywhere in `SCRIP/scripts` or `.github`. Bundled with that file's pending resolution rather than deleted unilaterally — once ruled, almost certainly stale litter safe to remove, but that's a corpus-hygiene call this row doesn't make on its own initiative. |
| `jcon_lexer_dot_field.icn` | No `main` procedure (`rc=134`, "main BB graph not found" at runtime) but `--dump-ast` produces a clean, well-formed tree — same shape as the sibling Prolog task's `coverage_pl_nodes.pl` finding. Likely belongs with `../parser/`'s AST-comparison scheme rather than this runtime-suite scheme, since it was never meant to execute standalone. Not moved — that reclassification isn't this row's call either. |

## Not `.icn` files, so invisible to this task's `*.icn` gate pattern — noted for context only, not declared

`scan_match_beta_resucceeds`, `scan_match_pos_restore`, `table_key_order` (no extension — `file`
reports "POSIX shell script executable (binary data)", stale compiled-binary build litter sharing
a basename with real source, not source or oracle) and `rsg_mini.dat` (unexamined; no `.icn` in
this directory references the string `rsg_mini`). Corpus hygiene, not this task's job — flagged
across 2 prior sessions, still untouched, still not blocking.

## Re-running this classification

Check whether `hq_C` has ruled `icon-table-key-order-diverges-from-arizona` before trusting any
row in the table above — a landed ruling promotes `table_key_order.icn` out of this file entirely
(either converted with the fix, or converted as a documented `SELF-PINNED-SCRIP-SHAPE`/XFAIL entry
per the Snocone sibling's precedent) and very likely resolves `keyorder.icn`'s disposition too.
