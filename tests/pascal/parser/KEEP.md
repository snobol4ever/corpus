# KEEP.md — tests/pascal/parser

Thirteen dialect witnesses for the Pascal dialect switch (CEO-1614; `.github/ARCH-PASCAL-DIALECTS.md` section 2), one program each, kept loose on purpose.
They have no `.ref` and no `ALL.csv` row: they are never run, only parsed. Their grader is the tree gate, `test_gate_snocone_parsers_match_the_c_parsers_tree_for_tree.sh`
(and `util_parser_grid.sh`), which enumerate every `.pas` under `corpus/` except `ALL.*` and `library/` and require the C parser (`out/parser_pascal`) and
`bootstrap/parser_pascal.sc` to print the same tree hash for each file, or both to print `Parse Error`. Same shape as `tests/icon/parser` and `tests/raku/parser`.
Each file is the smallest program whose parse depends on the dialect; its `{$mode}` directive says which, and the C parser (`pascal.l`
`pascal_mode_directive`, `pascal_oo_keyword`, `pascal_context_keyword`) is the oracle.

## Explicit `{$mode iso}` refuses what ISO 7185 does not have (C: both lexer functions return 0 when the dialect is ISO)

- `dialect_iso_uses.pas` — `uses crt;`: C refuses, `uses` is a plain identifier under iso.
- `dialect_iso_class.pas` — `type c = class end;`: C refuses.
- `dialect_iso_try.pas` — `try ... finally ... end`: C refuses.
- `dialect_iso_unit.pas` — `unit u; interface implementation`: C refuses.

## objfpc and delphi reserve the object words (class try raise inherited constructor destructor property is as); fpc and the default do not

- `dialect_objfpc_program_is.pas` — `program is;` under objfpc: C refuses.
- `dialect_objfpc_var_is.pas` — `var is: integer;` under objfpc: C refuses.
- `dialect_objfpc_const_class.pas` — `const class = 1;` under objfpc: C refuses.
- `dialect_delphi_var_is.pas` — `var is: integer;` under delphi: C refuses.
- `dialect_fpc_var_property.pas` — `var property: integer;` under fpc: an identifier, both print a tree.
- `dialect_nomode_var_is.pas` — `var is: integer;` with no directive: an identifier, both print a tree.

## Where the mode directive sits

- `dialect_objfpc_after_program_var_is.pas` — `program t;` then `{$mode objfpc}` then `var is: integer;`, the shape of 202 of the 275 corpus files that carry a directive (a scan of 2026-10-28): the directive applies to the rest of the program, so C refuses `is`.
- `dialect_objfpc_after_uses.pas` — `uses crt;` BEFORE the directive: the `uses` flips the default to FPC (a `seen_mode` pragma event) and the directive then sets objfpc and raises its own, so the tree carries the `seen_mode` pragma marks of both (three in all with the program stamp); with `rosetta-pascal/amicable-pairs-1.pas` it is the one file shape where a dialect fixed before the match drops an event.
- `dialect_mode_after_decl_ignored.pas` — a `{$mode objfpc}` after the first `var` is a pragma event only; C honours the directive only before the first declaration.
