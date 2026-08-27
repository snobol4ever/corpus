# KEEP.md — probe/icn

Per `probe-consolidate-m1-and-small` (parent: `corpus-suites-consolidation`).

Nothing converted. This whole directory (11 `.icn`/`.ref` pairs, plus a `.py` helper and a
few no-extension binaries) is **Icon, not SNOBOL4**, despite being swept into
`CONSOLIDATE-SCOPE.lst` as a gradable test corpus. `corpus_suite_harness.py convert` is the
SNOBOL4 one-line/banner path only; the format-(B) `convert-blocks --lang` path exists for
other dialects but there is **no `icon` entry in `LANG_CONFIGS`** (checked directly,
2026-08-27: the table has `raku`/`rebus`/`pascal`/`prolog` only) -- mechanically impossible to
convert with the current tool, not merely out of this pass's scope by choice.

Left entirely untouched. Whoever eventually adds Icon support to `LANG_CONFIGS` (or decides
Icon witnesses belong under `corpus/tests/icon/` instead of `probe/`) should start here.

| files | reason |
|---|---|
| all 27 (11 .icn/.ref pairs + z3_offspine_handpatch.py + assorted no-extension binaries) | Icon, not SNOBOL4 -- no LANG_CONFIGS support, wrong tool entirely |

## Machine-readable exception list (DONE-WHEN mirror)

⛔ Mirrors `probe/conformance/KEEP.md`'s fix (SCRIP `f3dc4672a`) -- this row's DONE-WHEN
greps this section, not the prose above, for `- <path>` lines. Add a line here in the SAME
edit that adds a file to this KEEP.md; remove one here in the SAME edit that converts a file
out of it.

- probe/icn/witness_icn_argslot_collision_count.icn
- probe/icn/witness_icn_argslot_collision_match.icn
- probe/icn/witness_icn_argslot_collision_nonwrite.icn
- probe/icn/witness_icn_argslot_collision_tab.icn
- probe/icn/witness_icn_carve_leak_lucky.icn
- probe/icn/witness_icn_carve_leak_subject.icn
- probe/icn/witness_icn_carve_leak_var.icn
- probe/icn/witness_icn_frameslot_shift_options.icn
- probe/icn/witness_icn_frameslot_shift_param.icn
- probe/icn/witness_icn_options_dash_branch.icn
- probe/icn/witness_icn_pos0_stale_delta.icn
