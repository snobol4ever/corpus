# Sublime Text syntax files for SNOBOL4 and Snocone

These two `.sublime-syntax` files give Sublime Text syntax-highlighting
support for SNOBOL4 (`.sno`, `.spt`, `.inc`) and Snocone (`.sc`).
They share the same scope vocabulary so a single color scheme renders
both dialects consistently.

## Installation

Copy or symlink both files into your Sublime Text User package
directory:

  * Linux:    `~/.config/sublime-text/Packages/User/`
  * macOS:    `~/Library/Application Support/Sublime Text/Packages/User/`
  * Windows:  `%APPDATA%\Sublime Text\Packages\User\`

Sublime auto-loads any `.sublime-syntax` file in `Packages/User/` on
the next file-open and from then on.  The dialect is then selectable
from `View → Syntax → SNOBOL4` or `Snocone`, and is auto-applied by
file extension.

## What each file covers

### SNOBOL4.sublime-syntax  →  scope `source.sno`

The classic column-1 statement model: comments start with `*` (or
`!`/`|`/`;` per CSNOBOL4 / Lon's flex lexer), control statements with
`-INCLUDE`/`-COPY`/etc. start with `-`, continuation with `+` or `.`,
labels in column 1, body indented, goto field after `:`.  Rich
prototype-string contexts for `DATA(...)`, `DEFINE(...)`, and
`ARRAY(...)` — the function name highlights as `entity.name.function`,
arguments as `variable.other`/`variable.parameter`, and embedded
quote-flips inside the prototype are handled.

### Snocone.sublime-syntax  →  scope `source.sc`

Andrew Koenig's block-structured dialect.  Free-form C-like layout:
`{` `}` block delimiters, `;` statement terminator, `//` line and
`/* */` block comments.  Native definition forms `function name(args)
{ body }` and `struct name { fields }` get their own highlighting
contexts.

Snocone still supports all SNOBOL4 functions, so the SNOBOL4
prototype-string contexts (DATA / DEFINE / ARRAY / CODE / EVAL) are
preserved verbatim — legacy `DEFINE('NAME(arg1,arg2)label')` calls
still highlight correctly.

Snocone-only additions: keywords `if`, `else`, `while`, `do`, `for`,
`switch`, `case`, `default`, `break`, `continue`, `goto`, `return`,
`freturn`, `nreturn`, `function`, `struct`; augmented-assignment
operators `+= -= *= /= ^=`; numeric comparison operators
`== != <= >=`; lexical/identity operators in colon-form `:==: :!=:
:<: :>: :<=: :>=: :: :!:`; real-number exponent letter `d/D` in
addition to `e/E` (a Snocone extension over SPITBOL).

## Reference accuracy

The regexes are calibrated against:

  * SPITBOL Manual v3.7 — operator tables (Ch. 15), keyword listings
    (Ch. 16), function descriptions (Ch. 19), data-type and
    identifier rules (Ch. 3 §3 Variable Names).  Real numbers per
    Ch. 3: must have decimal point OR exponent, ≥1 digit left of
    decimal point.
  * `one4all/src/frontend/snobol4/snobol4.l` — the flex lexer for
    SNOBOL4.  ALPHA = `[A-Za-z\x80-\xFF]`, IDCONT =
    `[A-Za-z0-9_.\x80-\xFF]`.
  * `one4all/src/frontend/snocone/snocone_lex.c` — the threaded-code
    FSM lexer for Snocone.  is_alpha includes `_`, is_idcont
    includes digits.  S_INT/S_FRAC/S_EXP_DIG accept e/E and d/D for
    the exponent letter.
  * `one4all/src/frontend/snocone/snocone_parse.y` — Bison grammar
    for token name / keyword inventory.

## FENCE — both variable and function

Per SPITBOL Manual Ch. 19, `FENCE` is BOTH:

  * a primitive pattern variable (no parens, equivalent to `&FENCE`)
    that aborts the match on backtrack; and
  * a function `FENCE(pattern)` that wraps a pattern such that
    alternatives within it are not retried during backup.

Both syntax files list `FENCE` in both `pattern_function` and
`pattern_variable` accordingly — the trailing `(` decides which fires.

## Color schemes

Any color scheme that targets the standard scope names (`keyword.*`,
`storage.type.*`, `entity.name.function`, `entity.name.struct`,
`constant.language`, `constant.numeric.*`, `string.quoted.*`,
`comment.*`, `support.function`, `variable.*`, `punctuation.*`)
will style both dialects.  Built-in Sublime themes work; custom
themes work; the choice is yours.

## Authors

Lon Cherryholmes (LCherryholmes / lcherryh@yahoo.com) wrote the
SNOBOL4 syntax originally, refined over time as the engine matured.
The Snocone syntax was derived from it during session 2026-05-04
with Claude (Opus 4.7) as a side-project off the GOAL-REWRITE-SCRIP
track.
