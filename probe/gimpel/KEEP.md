# KEEP — files that stay loose, deliberately

Per this family's consolidation task (`probe-consolidate-m1-and-small`, GOAL text:
"Data inlines in the suite entries; ONLY genuinely stdin/file-driven tests stay
standalone, marked in a KEEP.md beside them").

## Not green on fresh HEAD (da035c7d+) — documented pre-existing defects

`gim_blanks_min_wrong`, `gim_defer_cassign_array_elt`, `gim_double_include_hang`,
`gim_double_include_once_control`, `gim_fortput_m4_only_segv`,
`gim_goto_function_call_parse`, `gim_indirect_read_third_operand`,
`gim_name_of_field_store`, `gim_not_op_no_template`, `gim_omitted_arg_shift`,
`gim_or_single_alternative_crash`, `gim_real_literal_parse`,
`gim_seq_code_loop_in_function`, `gim_span_self_rebind_wrong` — each has 3-10
existing citations in `.github/`; pre-existing tracked defects, not discovered
by this row. See the family's commit message for the exact convert-time
verdicts.

## Ref-less, pre-existing, not minted here

No `.ref` exists for any of these (predates this task; not fabricating one):
`BALREV.sno`, `BLANKS.sno`, `DIFF.sno`, `OR.sno` (uppercase-named, look like
imported/raw Gimpel-suite programs never scored against an oracle) ·
`gim_cassign_array_elt_loud.sno`, `gim_double_include_hang_A.sno` (variants of
the standing-red witnesses above, same underlying defects, also never scored).
Out of scope for this row.
