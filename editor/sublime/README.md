# Sublime Text syntax files for SNOBOL4 and Snocone

This directory contains a complete Sublime Text editing setup for
SNOBOL4 (`.sno`, `.spt`, `.inc`) and Snocone (`.sc`).  Both dialects
share the same scope vocabulary so a single color scheme renders them
consistently.

## Files

| File                              | Purpose                                                  |
|-----------------------------------|----------------------------------------------------------|
| `SNOBOL4.sublime-syntax`          | Syntax highlighting for SNOBOL4 (`source.sno`)           |
| `Snocone.sublime-syntax`          | Syntax highlighting for Snocone  (`source.sc`)           |
| `SNOBOL4.sublime-settings`        | Editor settings applied when SNOBOL4 syntax is active    |
| `Snocone.sublime-settings`        | Editor settings applied when Snocone  syntax is active   |
| `SNOBOL4.sublime-build`           | Build / run command for SNOBOL4 (Lon's local SPITBOL)    |
| `Snocone.sublime-build`           | Build / run command for Snocone (uses `scrip --ir-run`)  |
| `Preferences.sublime-settings`    | Global editor preferences (font size, trim trailing ws)  |
| `DEFINE.sublime-snippet`          | `DEFINE` ↹  expansion for SNOBOL4 prototype-string form  |
| `START.sublime-snippet`           | `START` ↹  expansion for SNOBOL4 program skeleton        |
| `function.sublime-snippet`        | `function` ↹  expansion for the Snocone block-form       |

## Installation

Copy or symlink **every file in this directory** into your Sublime
Text User package directory:

  * Linux:    `~/.config/sublime-text/Packages/User/`
  * macOS:    `~/Library/Application Support/Sublime Text/Packages/User/`
  * Windows:  `%APPDATA%\Sublime Text\Packages\User\`

Sublime auto-loads every `.sublime-syntax`, `.sublime-settings`,
`.sublime-build`, and `.sublime-snippet` file in `Packages/User/` on
the next file-open.  No restart required.

## Activating the syntax

Both syntaxes are auto-applied by file extension on the next file
open after installation:

  * `.sno`, `.spt`, `.inc` → SNOBOL4
  * `.sc`                   → Snocone

If a file is already open, close and reopen it (or pick `View →
Syntax → SNOBOL4` / `Snocone`) to refresh.

### `.sc` extension conflict with Scala (RESOLVED via User precedence)

Sublime Text ships with a Scala syntax that also claims `.sc` (used
by Scala worksheet files):

```
Packages/Scala/Scala.sublime-syntax:
  file_extensions: [scala, sbt, sc]
```

Per the Sublime docs, *any file in `Packages/User/` takes precedence
over an identically-named or identically-claiming file in shipped
packages.*  So once `Snocone.sublime-syntax` is dropped into your
`Packages/User/` folder, `.sc` files open as Snocone.

If a `.sc` file ever opens as Scala anyway, force the association
once via the menu:

  * Open the file
  * `View → Syntax → Open all with current extension as ... → Snocone`

Sublime will write a per-extension override that survives upgrades.

## What each syntax file covers

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

## Build commands

Press **Ctrl+B** (Cmd+B on macOS) with a source file active to run
the configured build.

* **SNOBOL4** — `SNOBOL4.sublime-build` invokes Lon's local Catspaw
  SPITBOL (`spitbol.exe -bfl …`).  Paths are Windows-flavoured
  (`C:\LegalEarth`); you'll need to edit `path` and `shell_cmd` for
  your platform / SPITBOL location.  The `file_regex` parses
  SPITBOL's `filename(line,col) : Error N…` diagnostic format and
  jumps to the offending source line on error.

* **Snocone** — `Snocone.sublime-build` invokes `scrip --ir-run` on
  the active `.sc` file, capturing stdout/stderr to a matching
  `.out` file alongside.  Build `scrip` from
  `snobol4ever/one4all/scripts/build_scrip.sh` and put it on PATH
  (or set the build's `path` setting).  Cross-platform; no path
  edits needed if `scrip` is on PATH.

## Snippets

Type the trigger word and press Tab in a file of the matching syntax:

  * **`DEFINE`** in SNOBOL4 → expands to a `DEFINE('NAME(args)')`
    prototype-string with `:(NAMEEnd)` jump-around and `NAME = …`
    body, plus the `NAMEEnd` label.  Includes the trick `$1/\*//`
    to strip a leading `*` from the function name in the label
    positions (legacy convention).
  * **`START`** in SNOBOL4 → expands to a `START` label with the
    canonical `-INCLUDE` chain (`global.inc`, `assign.inc`,
    `match.inc`, `tree.inc`, `ReadWrite.inc`, `Qize.inc`, `Gen.inc`,
    `TDump.inc`, `XDump.inc`).
  * **`function`** in Snocone → expands to a `function NAME(args) {
    body }` skeleton.  Intended for the modern block-form;
    SNOBOL4-style `DEFINE(...)` snippet still works in Snocone too
    if you prefer it (Snocone supports both forms).

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
