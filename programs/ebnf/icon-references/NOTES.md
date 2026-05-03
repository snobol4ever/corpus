# icon-references/

Supplementary cross-references for the Icon grammar. The
authoritative file is one level up: `../icon-grammar.h` (verbatim
upstream copy) with EBNF translations `../icon-sp.ebnf` and
`../icon-no.ebnf`.

The files in this directory exist to **corroborate** that authority
— a different implementation, written independently by the same
group, that uses the same nonterminal hierarchy.

## Files

| File | Provenance |
|------|------------|
| `jcon-parse.icn`   | LL(1) recursive-descent parser from JCON (Java Icon, Proebsting & Townsend, U. Arizona, 1998–2014). 43 `parse_*` procedures, names verbatim from `tran/parse.icn`. |
| `jcon-COPYRIGHT`   | JCON license (Arizona Board of Regents). Permits use, copy, modify, distribute with notice; not public domain. |

## Why this corroboration matters

`icon-grammar.h` is a yacc grammar — bottom-up, LR-flavored,
left-recursive productions throughout. JCON's `parse.icn` is a
top-down LL(1) recursive-descent parser written in Icon itself.
**Both use the same nonterminal names** — `parse_program`,
`parse_decl`, `parse_do_proc` (the `do_` prefix avoids collision
with Icon's reserved word `proc`), `parse_expr`, `parse_expr1`
through `parse_expr11`, `parse_expr1a`, `parse_literal`,
`parse_compound`, `parse_cclause`, `parse_idlist`, `parse_locals`,
`parse_invocop`, `parse_lnkfile`, `parse_pdcolist`, `parse_nexpr`,
`parse_section`, `parse_do_case`, `parse_do_if`, `parse_do_while`,
`parse_do_until`, `parse_do_every`, `parse_do_repeat`,
`parse_do_return`, `parse_do_global`, `parse_do_link`,
`parse_do_record`, `parse_do_initial`, `parse_do_invocable`,
`parse_exprlist`, `parse_arglist`, `parse_fldlist`, `parse_invoclist`,
`parse_retention`, `parse_compound`.

That two independent parsers — one yacc, one hand-rolled
recursive-descent — converge on the same names is strong evidence
that this hierarchy *is* the canonical Icon grammar. PAT-IC inherits
those names per `../README.md` D2/D3 conventions.

## Useful LL(1) decomposition for PAT-IC INFRA-2

Snocone patterns cannot left-recurse. `grammar.h` `expr11` has
left-recursive productions:

    expr11 : ... | expr11 LBRACK exprlist RBRACK
                 | expr11 LBRACE pdcolist RBRACE
                 | expr11 LPAREN exprlist RPAREN
                 | expr11 DOT IDENT ;

`jcon-parse.icn` decomposes this into right-recursive form using
two helpers: `parse_expr11a` (the `expr11` body without the
left-recursive postfix cases) and `parse_expr11suffix(lhs)` (zero
or more postfix operators applied to a previously-recognized
`expr11a`). PAT-IC INFRA-2 should mirror this decomposition:
`Expr11 = Expr11a Expr11suffix`, where `Expr11suffix = ARBNO(...)`.

The same LL(1) decomposition trick may apply to other
left-recursive nonterminals in the tower (`expr2 TO expr3`,
`expr4 SEQ expr5`, `expr5 CONCAT expr6`, `expr6 PLUS expr7`,
`expr7 STAR expr8`, etc.) — each should become
`Exprn = Exprn_plus_one (op Exprn_plus_one)*`. JCON does this
inside each `parse_exprN`; PAT-IC will too.
