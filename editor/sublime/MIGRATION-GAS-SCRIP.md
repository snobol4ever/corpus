# SCRIP-x86 Sublime syntax: Old vs New

**Rung:** `EM-FORMAT-SUBLIME-GAS-INTEL-e` (visual A/B).
**Sess:** 2026-05-10 (later).

This document records what changed between the two versions of
`SCRIP-x86.sublime-syntax` so a reviewer can compare them by reading
rather than by toggling between two installed Sublime configurations.

## Architectural shape

| | OLD (sess 2026-05-10 mid-day) | NEW (sess 2026-05-10 later) |
|---|---|---|
| **Files** | `SCRIP-x86.sublime-syntax` (1779 ll) + `SCRIP-x86.LICENSE` (44 ll) | `GAS-x86.sublime-syntax` (467 ll) + `SCRIP-x86.sublime-syntax` (194 ll) |
| **Total** | 1823 ll, one file | 661 ll, two files (63% smaller) |
| **Base** | Inlined upstream `13xforever/x86-assembly-textmate-bundle` Nasm/Intel-syntax highlighter (MIT) | Authored from scratch as proper GAS Intel-syntax base |
| **Overlay mechanism** | All overlay rules inlined into one file alongside Nasm rules | `extends: Packages/User/GAS-x86.sublime-syntax`, `meta_prepend` to selected contexts |
| **License file** | Required (upstream MIT attribution) | Removed (no derived material) |
| **Scope** | `source.asm.scrip` | `source.asm.scrip` (unchanged) |

## What the OLD version got wrong about GAS

The OLD version was built on a Nasm base.  Nasm and GAS share most
mnemonic and register names but differ on critical points.  The OLD
version patched some of these but not all:

| GAS reality | Nasm-base default | OLD version handled? |
|---|---|---|
| `;` is a STATEMENT SEPARATOR | `;` is a comment-to-EOL | Patched: `scrip-jumpfuse` recognised triple-fusion and a final orphan-`;` rule scoped a bare `;` as separator.  Fragile: any `;` outside the recognised forms broke. |
| `#` line comment, any column | `#` only with whitespace after | Patched in OLD as well |
| Section names can contain `.` and `-` (e.g. `.note.GNU-stack`) | Nasm directive vocabulary doesn't have section names with hyphens | NOT handled — `.note.GNU-stack` painted as `.note.GNU` (directive) + `-` (operator) + `stack` (identifier) |
| `.macro NAME … .endm` is a structured block with `\arg` references | Nasm uses `%macro/%endmacro` instead | NOT handled — `.macro` painted as a single-line directive; `\arg` references painted as escape sequences |
| ELF decorations are a family (`@PLT`, `@GOT`, `@GOTPCREL`, `@function`, …) | Nasm has no `@` notation | Partially handled — only `@PLT @function @progbits @object @notype` recognised; anything else silently fell through |
| GAS local labels begin with `.L` | Nasm local labels begin with `.` (no `.L` convention) | NOT handled — `.L*` labels painted as `entity.name.constant.asm.x86_64` (NASM-base behaviour) |

## The white-vs-orange split (the user-visible bug)

The OLD version painted two label families with two different scope
vocabularies:

| Token | OLD scope | OLD theme colour |
|---|---|---|
| `.Lstr_0`, `.Lpc6`, `.Lchunk_registry`, `main` | `entity.name.constant.asm.x86_64` | white-ish (most themes) |
| `pat_inv_0_α`, `cap1_β`, `xcat0_γ` | `entity.name.label.box.scrip` | orange (most themes) |

Two label kinds, two distinct paint families.  Visually inconsistent.

The NEW version paints both under one scope, **`entity.name.label.gas`**,
which themes treat uniformly:

| Token | NEW scope | NEW theme colour |
|---|---|---|
| `.Lstr_0`, `.Lpc6`, `.Lchunk_registry`, `main` | `entity.name.label.gas` | one consistent colour |
| `pat_inv_0_α`, `cap1_β`, `xcat0_γ` | `entity.name.label.gas` (with overlay refinement to `entity.name.label.box.scrip`) | same colour by default; theme can opt-in to a distinct accent for `.box.scrip` |

The overlay refinement is purely additive: a theme with no special
rule sees one colour; a theme with `entity.name.label.box.scrip` →
`accent-colour` gets the distinct accent without losing base
uniformity for `.L*` labels.

## Concrete tokenization comparison (claws5.s, region around line 139)

Source slice:

```
#=======================================================================================================================
# pattern pat_inv_0: POS(0) LEN(0) . <var>
#=======================================================================================================================
                        .global          pat_inv_0_α
pat_inv_0_α:            lea              r10, [rip + Δ]
                        cmp              esi, 0;                    je pat_inv_0_α_body; jmp pat_inv_0_β
```

### OLD (Nasm-base) painting

```
[#====================...]                       comment.line.number-sign  (OK)
[# pattern pat_inv_0: ...]                       custom banner             (OK)
[#====================...]                       comment.line.number-sign  (OK)
[.global]                                        nasm directive            (OK)
[pat_inv_0_α]                                    entity.name.label.box     (orange)
[pat_inv_0_α:]                                   entity.name.label.box     (orange)
[lea r10, [rip + Δ]]                             nasm mnemonics + register (OK)
[Δ]                                              FAILS — Greek char fell out of NASM ident regex
[cmp esi, 0]                                     nasm mnemonics + register (OK)
[;]                                              fusion separator          (OK, via patch)
[je pat_inv_0_α_body]                            cond-jmp + label.box      (orange)
[;]                                              fusion separator          (OK)
[jmp pat_inv_0_β]                                uncond-jmp + label.box    (orange)
```

### NEW (GAS-base + thin overlay) painting

```
[#====================...]                       comment.line.banner.rule.scrip
[# pattern pat_inv_0: ...]                       comment.line.banner.pattern.scrip
                                                 with sub-captures:
                                                   `pattern` → keyword.other.pattern.scrip
                                                   `pat_inv_0` → entity.name.section.pattern.scrip
                                                   `POS(0) LEN(0) . <var>` → meta.embedded.snobol4.scrip
[#====================...]                       comment.line.banner.rule.scrip
[.global]                                        keyword.directive.symbol.gas
[pat_inv_0_α]                                    entity.name.label.gas  (UNIFIED — same colour as .L*)
[pat_inv_0_α:]                                   entity.name.label.gas  (UNIFIED)
[lea]                                            keyword.mnemonic.address.gas
[r10]                                            variable.language.register.qword.gas
[rip]                                            variable.language.register.ip.gas
[Δ]                                              entity.name.label.gas  (Greek now handled)
[cmp]                                            keyword.mnemonic.arith.gas
[esi]                                            variable.language.register.dword.gas
[;]                                              punctuation.separator.fusion.scrip  (overlay rule)
[je]                                             keyword.control.flow.cond-jmp.scrip
[pat_inv_0_α_body]                               entity.name.label.box.scrip  (overlay refinement)
[;]                                              punctuation.separator.fusion.scrip
[jmp]                                            keyword.control.flow.uncond-jmp.scrip
[pat_inv_0_β]                                    entity.name.label.box.scrip
```

## Quantitative summary (across 5 tracked artifacts)

Tokenized with the simulator `gas_syntax_sim.py`:

| File | Tokens | Labels (uniform) | Port-labels (overlay refinement) | Banners | Fusion separators |
|---|---:|---:|---:|---:|---:|
| roman.s | 637 | 73 | 15 | 11 | 12 |
| wordcount.s | 398 | 67 | 0 | 18 | 0 |
| claws5.s | 3124 | 532 | 15 | 149 | 12 |
| treebank-list.s | 3950 | 651 | 15 | 209 | 12 |
| treebank-array.s | 4447 | 737 | 15 | 251 | 12 |

"Other label-named scopes" (i.e. label scopes outside the unified
`entity.name.label.gas` and `entity.name.label.box.scrip` families):
**zero across all five files.**  The white/orange split is fully
eliminated.

## Why the GAS base file is general-purpose, not SCRIP-only

The GAS base (`GAS-x86.sublime-syntax`) is comprehensive — it covers
the full GAS directive spectrum (sections, symbols, data, alignment,
macros, conditionals, debug, mode, CFI), the full Intel-syntax
mnemonic set (move/stack/address/arith/branch/call/set/string/bit/
fpu/simd/flag families), the full register vocabulary
(qword/dword/word/byte/ip/flags/segment/xmm/ymm/zmm/mmx/cr/dr/mask),
and the full ELF-decoration family.  It works as a stand-alone
GAS-Intel-syntax highlighter for any `.s` file whose first line does
NOT match the SCRIP marker.  This makes the work reusable beyond
SCRIP — gcc -S output, hand-written GAS kernels, etc.

The SCRIP overlay (`SCRIP-x86.sublime-syntax`) is small, focused, and
purely additive: 194 lines covering banners, triple-fusion, SM/PAT
opcodes, BB broker primitives, runtime calls, and Greek-port label
refinement.  Activated on `.s` files that begin with
`.include "sm_macros.s"` (every `scrip --jit-emit --x64`-emitted `.s`
matches), it adds SCRIP semantics on top of the GAS base.
