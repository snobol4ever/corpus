# corpus/programs/ebnf/

Canonical grammars for the languages the SCRIP frontends parse. These
files are the **source of truth** for nonterminal names used by the
PARSER-* pattern frontends (`corpus/programs/scrip/parser_*.sc`). Per
GOAL-PARSER-ICON.md ## Design issues D2/D3, every PARSER-* parser must
use names that map 1-to-1 to productions in the corresponding `.ebnf`
file in this directory.

## Dialect

The same EBNF dialect is used for every grammar:

- `←` separates a nonterminal from its productions
- `;` terminates a production list
- `'...'` is a literal terminal
- ALLCAPS bare identifiers are token classes (e.g. `IDENT`, `INTLIT`)
- lowercase identifiers are nonterminals
- `epsilon` is the empty alternative

Two file variants exist for each language:

- `*-sp.ebnf` — alternatives separated by `|` (regular pipe)
- `*-no.ebnf` — alternatives separated by `⋮` (U+22EE, vertical
  ellipsis, "no-pipe" form for grammars where `|` is itself a
  language terminal)

## Files

| File | Provenance |
|------|------------|
| `s4-sp.ebnf`, `s4-no.ebnf`     | SNOBOL4 grammar (project-internal). |
| `icon-sp.ebnf`, `icon-no.ebnf` | Icon grammar — 1-to-1 translation of `icon-grammar.h`. |
| `icon-grammar.h`               | Verbatim copy of upstream gtownsend/icon `src/h/grammar.h` (public domain — see README header in that file). |
| `pl-sp.ebnf`, `pl-no.ebnf`     | SWI-Prolog syntax (Edinburgh/ISO core + SWI extensions). Derived from `swipl-devel` master (2025): tokeniser in `src/pl-read.c` (`get_token`), operator-precedence parser (`complex_term`), built-in operator table in `src/pl-op.c` (`operators[]`), character classification in `src/os/pl-ctype.h`, and syntax documentation in `man/overview.doc` §sec:syntax. Covers all operators, number literal forms (0b/0x/0o/radix/char-code), quoted atoms, strings, lists, DCG, dicts (SWI extension), and escape sequences. |
| `icon-references/`             | Supplementary cross-references — independent implementations of the same grammar that corroborate the canonical names. See `icon-references/NOTES.md`. |

## Adding a new language grammar

1. Locate the canonical upstream grammar (yacc/bison `.y`, ANTLR `.g`,
   or BNF appendix). Prefer one with an unambiguously free license.
2. Save the upstream file verbatim as `<lang>-grammar.<ext>` for
   provenance — never edit it.
3. Translate productions into the dialect above; produce both `-sp`
   and `-no` variants.
4. Update the corresponding `parser_<lang>.sc` so its pattern names
   match the EBNF nonterminal names exactly.
