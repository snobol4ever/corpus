# jcon-ref — JCON four-port BB generator reference

Source: `jcon-master/tran/irgen.icn` from the JCON compiler
(Proebsting 1996 / Todd Proebsting, University of Arizona).

## What this is

`irgen.icn` is the Icon program that generates Byrd Box (BB) intermediate
representation from JCON AST nodes.  Every `ir_a_Foo` procedure implements
the **four-port wiring** (α start / β resume / ω fail / γ succeed) for one
Icon construct.

This is the canonical reference for how every Icon operator, generator, and
control-flow form maps to BB ports — used directly when writing `icn_bb_*`
boxes in `one4all/src/frontend/icon/icon_gen.c`.

## Key procedures

| Procedure | Construct |
|-----------|-----------|
| `ir_a_BinOp` | Binary operators (`+`, `-`, `*`, `/`, relops, `\|\|`, …) |
| `ir_a_To` | `E1 to E2` generator |
| `ir_a_ToBy` | `E1 to E2 by E3` generator |
| `ir_a_Every` | `every E do body` |
| `ir_a_While` / `ir_a_Until` / `ir_a_Repeat` | Loop forms |
| `ir_a_Suspend` | `suspend E do body` (user-defined generator) |
| `ir_a_If` | `if E then T else F` (indirect-goto gate) |
| `ir_a_Alt` | `E1 \| E2` value alternation |
| `ir_a_Limit` | `E \ N` limitation |
| `ir_a_Scan` | `E ? body` string scanning |
| `ir_a_Not` | `not E` |
| `ir_a_Call` | Function/procedure call (goal-directed arg eval) |
| `ir_a_Augop` | Augmented assignment operators (`:=`, `+:=`, …) |

## Companion docs

- `one4all/.github` → `archive/MISC-ICON-JCON.md` — full analysis of this file
  with four-port wiring tables for every construct.
- `one4all/src/frontend/icon/icon_gen.c` — our BB boxes, informed by this reference.
