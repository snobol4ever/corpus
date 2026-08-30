# KEEP.md — standalone-keep exceptions in corpus/tests/rebus/ (parser_* files)

⛔ UPDATED (seat07 2026-08-30, one-flat-suite cutover): the old `parser/` subdirectory this file
used to describe is gone (hq_P's zero-subfolders flattening, SCRIP `dd79b54b` — every file here
now sits flat in `corpus/tests/rebus/` with a `parser_` prefix, this KEEP.md moved to `config/`)
AND the 33 AST-dump-drift stems this file used to keep loose are gone too: `util_build_master_suite.py`'s
bannerless-dialect-program-as-ONE-entry fix (hq_P) let them absorb correctly into `ALL.reb` as
their own single-entry families (`parser_fib`, `parser_case_basic`, ... — verified byte-equal
against their loose originals before deletion, seat07). Only the 48 stems below — which were never
absorbable in the first place, having no `.ref` at all — remain loose. This file no longer needs a
"33 stems" section; do not re-add one without re-deriving why (their disposition changed, it was
not an oversight).

48 files remain loose here. Every name below was checked individually before being declared here —
none is a guess or an allowance.

## 48 stems: no committed .ref at all — needs an oracle written first, a different row

Same disposition as raku's 50 no-.ref parser/ files (corpus-suites-consolidation LEDGER,
seat08·2026-08-27): never in scope for grading either way until someone writes the expected
`--dump-ast` output. Listed here so the completeness gate has an honest declaration rather than
silence.

parser_alt_assign_three.reb · parser_alt_assign_two.reb · parser_alt_body_three.reb ·
parser_alt_body_two.reb · parser_alt_match_mixed.reb · parser_alt_match_three.reb ·
parser_alt_match_two.reb · parser_arith_add.reb · parser_arith_mixed.reb · parser_arith_mul.reb ·
parser_assign_int.reb · parser_assign_output.reb · parser_assign_seq.reb · parser_assign_str.reb ·
parser_assign_var.reb · parser_atom_id.reb · parser_atom_int.reb · parser_atom_str.reb ·
parser_call_expr.reb · parser_call_with_args.reb · parser_cmp_eq.reb · parser_cmp_ord.reb ·
parser_func_args.reb · parser_func_call.reb · parser_func_call_seq.reb · parser_func_one_arg.reb ·
parser_func_three.reb · parser_func_two.reb · parser_if_id.reb · parser_if_output.reb ·
parser_match_after_assign.reb · parser_match_id_id.reb · parser_match_id_int.reb ·
parser_match_id_str.reb · parser_match_seq.reb · parser_match_str_id.reb ·
parser_match_str_str.reb · parser_paren.reb · parser_rec_empty.reb · parser_rec_one.reb ·
parser_rec_three.reb · parser_rec_two.reb · parser_rec_two_records.reb ·
parser_rec_with_func.reb · parser_strcat.reb · parser_unary_neg.reb · parser_while_id.reb ·
parser_while_output.reb
