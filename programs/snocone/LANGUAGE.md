# Snocone — language summary for the next reader

This is the language that the `.sc` files in this directory are
written in. It is **not** identical to Andrew Koenig's original
Snocone described in `report.md`. The differences are deliberate
and small; they are listed below.

The authoritative spec lives in
[`.github/GOAL-SNOCONE-LANG-SPACE.md`](https://github.com/snobol4ever/.github/blob/main/GOAL-SNOCONE-LANG-SPACE.md).
The binding working rules live in
[`.github/RULES.md`](https://github.com/snobol4ever/.github/blob/main/RULES.md)
under "Snocone language facts." This document is the short tour.

## In one sentence

> Snocone is **Andrew's `.sc` self-host operator set, minus
> `&&` / `||` / `%`, plus C-style structured control flow,
> plus SPITBOL space-as-concat.**

A SPITBOL program that does not itself use `&&` / `||` / `%` as
binary operators, and that uses `;` statement terminators with
`name:` label syntax (not column-1 labels), runs unchanged under
Snocone. This is the functional-superset guarantee.

## What changed from Andrew's original

| Andrew's `.sc` | Snocone today | Why |
|---|---|---|
| `&&` (concat) | (whitespace) | SPITBOL space-as-concat — Lon's restoration |
| `\|\|` (logical OR) | `(e1, e2, e3)` alt-eval | SPITBOL Manual Ch.15 footnote — already a SPITBOL primitive |
| `%` (modulo, lowered to `REMDR()`) | `REMDR(a, b)` directly | `%` reserved as user OPSYN slot |
| `for (init, test, step)` | `for (init; test; step)` | Frees `,` for alt-eval |
| `go to NAME` | `goto NAME` | Single keyword, C-style |
| `procedure NAME(args)` | `function NAME(args)` | Returns a value — name matches role (Lon session #7) |
| (no switch) | `switch (e) { case v: …; default: …; }` | Modern no-fall-through; lowers to `IDENT(tmp,vN) :S(cN)` chain |
| (only `do/while`) | `do/while` only | `do/until` removed per Lon directive 2026-04-30 #12 |
| (no break/continue) | `break;`/`break LABEL;`/`continue;`/`continue LABEL;` | Java-style optional label |

What stayed: every other operator from Andrew's `.sc` self-host —
all 23 surviving binary operators, all 9 unary operators, the
identity-comparison spellings `::` / `:!:` (Andrew's choice in his
self-host, lines 45–46), C-style `if`/`else`/`while`/`for`/`do`/
`function`/`return`/`{`/`}`/`;`, the `name :` label syntax, the
`// to EOL` and `/* … */` comment styles, and `struct`.

## How concat works

Whitespace between two value-yielding tokens IS the concat
operator. The lexer emits a synthetic `T_CONCAT` token at the
boundary; the grammar treats it as a normal binary operator at
SPITBOL priority 4, right-associative.

```snocone
x = 'foo' 'bar';        // assigns 'foobar'
x = a /* comment */ b;  // concat across the comment — comments are whitespace
result = func(arg)      // bare call
       . target;        // followed by `.` — that's binary `.` (cond-assign), NOT concat
```

The lexer suppresses `T_CONCAT` injection before any token that
could be a binary operator (`.`, `$`, `+`, `-`, `*`, `?`, `&`, `~`,
`@`). Those tokens are left for the grammar to disambiguate.

## How `f(x)` vs `f (x)` work

`f(args)` with **zero whitespace** between the identifier and `(`
is a function call. `f (expr)` with one or more whitespace chars
between is `f` concat `(expr)`. Strict — same as SPITBOL.

```snocone
result = f(x);          // call f with argument x
result = f (x);         // concat the value of f with the value of x
result = f /* */ (x);   // also concat — the comment is whitespace
```

## Conditions are SPITBOL backtracking expressions

Not C-style booleans. The parenthesised condition of `if`,
`while`, `do/while`, `for`-test, and `case` tag is a single SPITBOL
backtracking expression. The success/failure exit drives the
branch.

```snocone
if (subj ? pat = repl) {
    // match succeeded; subj has been mutated by the replacement
}

while (subj ? BREAK(',') . token ' ' = '') {
    // each iteration extracts the next comma-delimited token
}
```

A bare variable reference always succeeds (a bound name has a
value). `if (x)` therefore always takes the success branch — no
"truthy/falsy" semantics.

## Statement boundary is `;` only

Newlines are whitespace, identical to spaces and tabs. The lexer
does not emit a newline token. Every Snocone statement ends with
`;`. Forgetting one produces a surprising parse, not an error
message — `x = 1\ny = 2;` is the single statement
`x = 1 y = 2;` (which evaluates `1 y = 2` as a chain and
assigns to `x`, almost certainly not what was meant).

## Bare expression statements may fail silently

A statement that is just `expr;` with no surrounding control flow
lowers to a bare SPITBOL statement with no `:S(...)F(...)`
decoration. If it fails, control falls through to the next
statement.

```snocone
EQ(x, y);       // succeeds or fails; either way, next stmt runs
GT(x, 0)  x = -x;  // SUCCESS-AND-SIDE-EFFECT idiom: negate x if positive
```

This is the SNOBOL4 default. Failure-as-control-flow is reserved
for the parenthesised conditions listed above.

## Comparison-operator sugar

| Snocone surface | Lowers to |
|---|---|
| `==` `!=` `<` `<=` `>` `>=` | `EQ()` `NE()` `LT()` `LE()` `GT()` `GE()` (numeric) |
| `:==:` `:!=:` `:<:` `:<=:` `:>:` `:>=:` | `LEQ()` `LNE()` `LLT()` `LLE()` `LGT()` `LGE()` (lexical) |
| `::` `:!:` | `IDENT()` `DIFFER()` (identity) |

These are all SPITBOL primitives; the surface sugar produces
`OP(L, R)` function-call form at lower-time.

## How to migrate an Andrew `.sc` file to Snocone today

The migration script does it mechanically:

```bash
python3 /home/claude/one4all/scripts/util_migrate_snocone_to_lang_space.py FILE.sc
```

Three rewrites:
- `&&` → space (the new concat operator)
- `||` → `(a, b)` n-ary alt-eval (preserves short-circuit semantics)
- `go to NAME` → `goto NAME`

Strings and comments are preserved verbatim. Single `|`
(pattern alternation) is untouched. The script is idempotent.

Manual review handles edge cases (strings containing `&&` or `||`
literally, format specifiers using `%`, etc.).

## Where the implementation lives

In the [`one4all`](https://github.com/snobol4ever/one4all) repo:

| Path | Role |
|---|---|
| `src/frontend/snocone/snocone_parse.y` | Bison grammar |
| `src/frontend/snocone/snocone_lex.c` | Threaded-code FSM lexer |
| `src/frontend/snocone/snocone_driver.c` | scrip-side entry point |

Build via `make scrip` from `one4all/`. Regenerate generated
parser/lexer files via `bash scripts/regenerate_parser_and_lexer_from_sources.sh`.
Both the `.y`/`.l` source and the generated files are checked in
together, per `RULES.md`.
