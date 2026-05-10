# Sublime Text syntax files for SNOBOL4, Snocone, GAS-x86, and SCRIP-x86

This directory contains a complete Sublime Text editing setup for
SNOBOL4 (`.sno`, `.spt`, `.inc`), Snocone (`.sc`), GNU `as` Intel-syntax
x86_64 (`.s`, `.S`, `.asm`), and SCRIP-emitted `.s` files.  All four
share the same scope vocabulary so a single color scheme renders
them consistently.

## Files

| File                              | Purpose                                                  |
|-----------------------------------|----------------------------------------------------------|
| `SNOBOL4.sublime-syntax`          | Syntax highlighting for SNOBOL4 (`source.sno`)           |
| `Snocone.sublime-syntax`          | Syntax highlighting for Snocone  (`source.sc`)           |
| `GAS-x86.sublime-syntax`          | Base GAS / GNU-`as` Intel-syntax x86_64 (`source.asm.gas`) |
| `SCRIP-x86.sublime-syntax`        | SCRIP-emitted-`.s` overlay extending GAS-x86 (`source.asm.scrip`) |
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

## GAS-x86 — base GAS Intel-syntax x86_64 highlighter

`GAS-x86.sublime-syntax` is a stand-alone, from-scratch highlighter
for GNU assembler (`gas` / `as`) source in Intel syntax.  It is NOT
built on a Nasm base — Nasm and GAS share most mnemonic and register
names but differ on critical points like comment characters, statement
separators, directive vocabulary, and macro semantics.

It owns scope `source.asm.gas` and activates on `[s, S, asm]` files.

**What this gets right that a Nasm-base layer cannot:**

  * `;` is a STATEMENT SEPARATOR on x86 GAS — not a comment.  Multiple
    statements can sit on one line: `cmp esi, 0; jne L1; jmp L2`.
    Fundamental to SCRIP's triple-fusion shape.
  * `#` is the GAS line-comment chr; `/* … */` is a block comment.
  * Directives (`.section`, `.string`, `.quad`, `.macro`, `.endm`,
    `.include`, `.intel_syntax`, `.cfi_*`, …) form a fixed GAS
    vocabulary — recognised as first-class `keyword.directive.<family>`
    rather than as identifiers.
  * `.macro NAME args ... .endm` is a structured block.  Body content
    is scoped `meta.macro.gas`; `\arg` references inside paint as
    `variable.parameter.macro.gas`.
  * Section names (`.note.GNU-stack`, `.rodata.cst8`, …) follow
    `.section` and may contain `.` and `-` — handled by a dedicated
    `section-name-tail` context so they paint as a single section
    name, not as a directive split at the hyphen.
  * Intel-syntax memory references (`[rip + label]`, `[rax + rbx*4 + 8]`)
    and size hints (`byte ptr`, `dword ptr`, `qword ptr`).
  * ELF symbol decorations (`@PLT`, `@GOT`, `@GOTPCREL`, `@function`,
    `@object`, `@progbits`, `@nobits`, `@notype`, …) — one
    `support.other.elf-decoration.gas` family.
  * x86_64 register vocabulary by width (qword/dword/word/byte/ip/
    flags/segment/xmm/ymm/zmm/mmx/cr/dr/mask).
  * Comprehensive Intel-syntax mnemonic set (move/stack/address/arith/
    branch/call/set/string/bit/fpu/simd/flag).

**The label-color uniformity fix:** `.L`-prefix local labels (per the
`as` manual: local symbols begin with `.L`) AND user-named labels share
ONE scope, `entity.name.label.gas`.  This eliminates the historic
white-vs-orange split in the Nasm-base highlighter, where `.L*` labels
painted as `entity.name.constant` (white in most themes) while user
labels painted as `entity.name.label` (orange in most themes).

The directive catch-all uses negative lookahead `(?!L)` to refuse
`.L*` tokens, deferring them to `local-labels`.  `local-labels` runs
early in `statement-content` so it claims `.L*` operands before the
catch-all could.  `plain-labels` runs LAST — claiming whatever
identifier-shaped tokens are left.

## SCRIP-x86 — SCRIP-emitted-`.s` overlay

`SCRIP-x86.sublime-syntax` is a thin overlay on the GAS-x86 base.
It uses Sublime Text 4's `extends:` mechanism (build 4080+) to inherit
all directives, mnemonics, registers, ELF decorations, and label
recognition from `Packages/User/GAS-x86.sublime-syntax`, then adds
SCRIP-specific contexts on top via `meta_prepend`.

It owns scope `source.asm.scrip`.  File extension `[s, S]` is shared
with the base; Sublime resolves the conflict via `first_line_match`:
an `.s` file whose first line matches `\.include\s+"(sm|bb)_macros\.s"`
(every `scrip --jit-emit --x64`-emitted `.s` begins this way)
activates this syntax; otherwise the file falls through to GAS-x86.

**What the overlay adds:**

| Category | Examples in `.s` | Scope |
|---|---|---|
| Statement banner | `# stmt 2 (line 6): DEFINE(...)` | `comment.line.banner.stmt.scrip` |
| Pattern banner | `# pattern pat_inv_0: RPOS(0) LEN(0)` | `comment.line.banner.pattern.scrip` |
| Per-box banner | `# BOX RPOS(0) [xcat0_γ]` | `comment.line.banner.box.scrip` |
| Data annotation | `# data: .Lcap1_vname, ...` | `comment.line.banner.data-annotation.scrip` |
| Rule banner | `#====...` `#----...` (120 cols) | `comment.line.banner.rule.scrip` |
| Triple-fusion separator | `;` between fused triples | `punctuation.separator.fusion.scrip` |
| Cond-jmp in fusion | `je`, `jne`, `jl`, … in `; je LBL ; jmp LBL` | `keyword.control.flow.cond-jmp.scrip` |
| Uncond-jmp in fusion | `jmp` in `; jmp LBL` | `keyword.control.flow.uncond-jmp.scrip` |
| SM virtual-machine opcode | `PUSH_INT`, `CONCAT`, `RETURN`, `JUMP_F` | `keyword.control.sm-opcode.scrip` |
| Pattern opcode | `PAT_ANY`, `PAT_LEN`, `PAT_RPOS` | `support.function.pattern.scrip` *(mirrors `.sno` `pattern_function`)* |
| BB broker primitive | `EPS_α`, `RPOS_β`, `FAIL_α` | `support.function.broker.scrip` |
| Runtime call | `rt_init`, `rt_match_blob`, `rt_push_int` | `support.function.runtime.scrip` |
| BB box helper | `bb_cap`, `bb_broker` | `support.function.broker.scrip` |
| Pattern-blob root | `pat_inv_0:` | `entity.name.section.pattern.scrip` |
| Greek box label | `cap1_α:`, `xcat0_left_β:` | `entity.name.label.box.scrip` |

**Why Intel, not AT&T:** the emitter writes Intel via
`.intel_syntax noprefix` (`mov rax, [rcx]`, no `%`/`$` sigils,
dest-then-source).  Intel's dest-then-source matches SNOBOL4's `X = Y`
direction; Greek-suffix labels (`α β γ ω Δ Σ`) interact more cleanly
with Intel label rules.

The scope-name conventions parallel SNOBOL4 / Snocone:
`support.function.pattern.scrip` mirrors `support.function.sno` for
pattern functions; `keyword.control.sm-opcode.scrip` is a sibling of
`keyword.control.sno` / `keyword.control.sc`;
`entity.name.section.pattern.scrip` and `entity.name.label.box.scrip`
parallel `entity.name.function.sno`.

**Label color uniformity is preserved.** The overlay does NOT use a
different scope family for `.L*` labels — those continue to paint as
`entity.name.label.gas` from the base.  Greek-suffix port labels
(`pat_inv_0_α:`, `cap1_β:`) get the more-specific overlay scope
`entity.name.label.box.scrip` so themes that want a distinct accent
for pattern-box arms can do so.  Themes without that override get
both kinds painted at the same default colour, preserving the
white/orange-fix uniformity from the GAS base.

## Authors

Lon Cherryholmes (LCherryholmes / lcherryh@yahoo.com) wrote the
SNOBOL4 syntax originally, refined over time as the engine matured.
The Snocone syntax was derived from it during session 2026-05-04
with Claude (Opus 4.7) as a side-project off the GOAL-REWRITE-SCRIP
track.

The first `SCRIP-x86.sublime-syntax` overlay was built session
2026-05-10 with Claude (Opus 4.7) on top of the upstream
`13xforever/x86-assembly-textmate-bundle` Nasm Intel-syntax
highlighter — workable but a layer cake of patches over a Nasm base
that gets several GAS semantics wrong.  The current arrangement —
`GAS-x86.sublime-syntax` authored from scratch as a proper GAS
Intel-syntax base, with `SCRIP-x86.sublime-syntax` as a thin overlay —
landed session 2026-05-10 (later) under
`.github/GOAL-MODE4-EMIT.md` rung `EM-FORMAT-SUBLIME-GAS-INTEL`,
also with Claude (Opus 4.7).
