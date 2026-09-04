# KEEP.md — standalone-keep exceptions in corpus/tests/rebus/ (parser_* files)

⛔ UPDATED (seat07 2026-08-30, one-flat-suite cutover): the old `parser/` subdirectory this file
used to describe is gone (hq_P's zero-subfolders flattening, SCRIP `dd79b54b` — every file here
now sits flat in `corpus/tests/rebus/` with a `parser_` prefix, this KEEP.md moved to `config/`)
AND the 33 AST-dump-drift stems this file used to keep loose are gone too: `util_build_master_suite.py`'s
bannerless-dialect-program-as-ONE-entry fix (hq_P) let them absorb correctly into `ALL.reb` as
their own single-entry families (`parser_fib`, `parser_case_basic`, ... — verified byte-equal
against their loose originals before deletion, seat07). The 48 stems that used to be listed below —
which were never absorbable in the first place, having no `.ref` at all — are ALSO gone now, resolved
the same way (see RESOLVED section below). Zero files remain loose here. This file no longer needs a
"33 stems" or "48 stems" listing section; do not re-add one without re-deriving why (their
disposition changed, it was not an oversight).

## RESOLVED 2026-09-04 (seat14, row rebus-every-non-package-source-that-runs-with-output-absorbed-into-the-master-with-oracle-refs): the 48 stems this section used to list are absorbed

They were exactly the “needs an oracle written first, a different row” batch this file declared loose since 2026-08-27/2026-08-30. That row arrived today (Lon, in-chat to ceo, 2026-09-04: absorb every non-package source that runs with output). The oracle each stem needed is `scrip --dump-ast <file>`: Rebus has no independent implementation (SCRIP README.md § Rebus, Coverage: “none exists”), so for a parser-only fixture SCRIP’s own AST dump is the ONLY oracle that can exist — not a self-pinned shortcut around a real one, the way that anti-pattern reads for a language that HAS an independent implementation (Icon/Prolog/SNOBOL4/Pascal). Every stem’s `--dump-ast` run was checked for rc=0, non-empty stdout, and determinism (two runs, byte-identical) before its `.ref` was written; all 48 cleared. Absorbed via `util_build_master_suite.py --lang rebus` into `corpus/tests/rebus/ALL.{reb,ref,csv}`, `--delete-absorbed` removing the loose `.reb`/`.ref` pairs. Do not re-add a stems list here without re-deriving why — their disposition changed on purpose, it was not an oversight.
