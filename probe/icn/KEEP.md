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
