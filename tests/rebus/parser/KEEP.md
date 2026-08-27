# KEEP.md — standalone-keep exceptions in corpus/tests/rebus/parser/

81 files remain loose here after tests-consolidate-rebus converted the 15 clean pairs into
`../parser.reb` / `../parser.ref` (corpus_suite_harness.py convert-blocks --lang rebus). Every
name below was checked individually before being declared here — none is a guess or an allowance.

## 33 stems: AST-dump drift vs their committed .ref (independent sweep, seat01, 2026-08-27/28)

`scrip --dump-ast` on the .reb does not byte-match the committed .ref today. Same systematic
shape-drift class already found and written up for Snocone parser-fixtures (59/67 red) and Icon
parser/ (153/153 red) — see FINDING-2026-08-27-seat08-parser-fixture-ast-oracles-drifted-....md.
Not a per-fixture bug: one compiler AST-shape change plausibly explains a cluster this size, but
that is a correctness call outside this row's standing (deciding whether the .ref is stale or the
compiler regressed). Passed to `convert-blocks` as `--skip` with this same reason.

augmented_assign.reb/.ref · capture_cond.reb/.ref · capture_imm.reb/.ref · case_basic.reb/.ref ·
case_default.reb/.ref · compound_if.reb/.ref · comprehensive.reb/.ref · exponent.reb/.ref ·
fib.reb/.ref · for_basic.reb/.ref · for_by.reb/.ref · if_else.reb/.ref · if_return.reb/.ref ·
local_initial.reb/.ref · modulo.reb/.ref · multi_func.reb/.ref · nested_case.reb/.ref ·
nested_if.reb/.ref · range_sub.reb/.ref · record_func.reb/.ref · repeat_id.reb/.ref ·
replace_basic.reb/.ref · repln_basic.reb/.ref · scmp_eq.reb/.ref · scmp_ne.reb/.ref ·
sub_assign.reb/.ref · subscript_multi.reb/.ref · subscript.reb/.ref · trailing_comma.reb/.ref ·
unary_dot.reb/.ref · unless_id.reb/.ref · until_id.reb/.ref · while_if.reb/.ref

## 48 stems: no committed .ref at all — needs an oracle written first, a different row

Same disposition as raku's 50 no-.ref parser/ files (corpus-suites-consolidation LEDGER,
seat08·2026-08-27): never in scope for grading either way until someone writes the expected
`--dump-ast` output. Listed here so the completeness gate has an honest declaration rather than
silence.

alt_assign_three.reb · alt_assign_two.reb · alt_body_three.reb · alt_body_two.reb ·
alt_match_mixed.reb · alt_match_three.reb · alt_match_two.reb · arith_add.reb · arith_mixed.reb ·
arith_mul.reb · assign_int.reb · assign_output.reb · assign_seq.reb · assign_str.reb ·
assign_var.reb · atom_id.reb · atom_int.reb · atom_str.reb · call_expr.reb · call_with_args.reb ·
cmp_eq.reb · cmp_ord.reb · func_args.reb · func_call.reb · func_call_seq.reb · func_one_arg.reb ·
func_three.reb · func_two.reb · if_id.reb · if_output.reb · match_after_assign.reb ·
match_id_id.reb · match_id_int.reb · match_id_str.reb · match_seq.reb · match_str_id.reb ·
match_str_str.reb · paren.reb · rec_empty.reb · rec_one.reb · rec_three.reb · rec_two.reb ·
rec_two_records.reb · rec_with_func.reb · strcat.reb · unary_neg.reb · while_id.reb ·
while_output.reb
