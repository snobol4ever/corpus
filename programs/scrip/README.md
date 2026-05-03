# corpus/programs/scrip — SCRIP source tree

This is the SCRIP compiler/interpreter/runtime, written in SCRIP. The
host implementation languages are **Snocone, Icon, and Prolog** (with
Raku and SNOBOL4 reserved for show pieces). Host language is identified
by file extension; the directory does **not** split by host:

| Extension | Host language |
|-----------|---------------|
| `.sc`     | Snocone |
| `.icn`    | Icon |
| `.pl` / `.pro` | Prolog |
| `.sno` / `.inc` / `.spt` | SNOBOL4 / SPITBOL |
| `.raku`   | Raku |

Files in different host languages co-exist in this one directory and
are wired together by the test scripts.

## Pattern-based frontends

The six PARSER-* frontends (PARSER-SN, PARSER-SC, PARSER-RB, PARSER-RK,
PARSER-IC, PARSER-PR) are siblings: they share `Compiland` / `Shift` /
`Reduce` / `Push` / `Pop` / `Top` / `tree` / `nPush` / `nTop` / `nPop`.
Each driver's `Compiland` shares the same spine — only the `Command`
rules and language-specific token rules differ:

```
Compiland = nPush() ARBNO(*Command) reduce('Parse', 'nTop()') nPop();
```

## Snocone-hosted runtime + drivers

Snocone has no `-include` directive; callers pass every file as a blob:

```
scrip --ir-run \
  corpus/programs/scrip/tree.sc \
  corpus/programs/scrip/stack.sc \
  corpus/programs/scrip/counter.sc \
  corpus/programs/scrip/ShiftReduce.sc \
  corpus/programs/scrip/semantic.sc \
  corpus/programs/scrip/parser_<lang>.sc \
  input_file
```

### Shared runtime (Snocone)

| File | Purpose |
|------|---------|
| `tree.sc` | General-purpose tree datatype (`struct tree { t, v, n, c }`). Provides `MakeLeaf`, `MakeNode`, `Append`, `Prepend`, `Insert`, `Remove`, `Equal`, `Visit`. |
| `stack.sc` | Linked-list value stack (`struct link`). Provides `InitStack`, `Push`, `Pop`, `Top`. Used by `ShiftReduce.sc`. |
| `counter.sc` | Stack of integer counters (`struct link_counter`). Provides `InitCounter`, `PushCounter`, `IncCounter`, `DecCounter`, `PopCounter`, `TopCounter`. |
| `ShiftReduce.sc` | Core shift-reduce operations. `Shift(t,v)` pushes a leaf tree; `Reduce(t,n)` pops `n` trees and pushes a parent. Requires `tree.sc` and `stack.sc`. |
| `semantic.sc` | Pattern-building helpers called at pattern-construction time (not match time). Provides `nPush`, `nInc`, `nDec`, `nTop`, `nPop`, `shift`, `reduce`, `pop`, plus `OPSYN` declarations of `~` and `&` infix operators. |

### Per-language frontend drivers (Snocone-hosted)

| File | Goal | Status |
|------|------|--------|
| `parser_snobol4.sc` | `GOAL-PARSER-SNOBOL4.md` | written under PARSER-SN-0 |
| `parser_snocone.sc` | `GOAL-PARSER-SNOCONE.md` | written under PARSER-SC-0 |
| `parser_rebus.sc`   | `GOAL-PARSER-REBUS.md`   | written under PARSER-RB-0 |
| `parser_raku.sc`    | `GOAL-PARSER-RAKU.md`    | written under PARSER-RK-0 |
| `parser_icon.sc`    | `GOAL-PARSER-ICON.md`    | written under PARSER-IC-0 |
| `parser_prolog.sc`  | `GOAL-PARSER-PROLOG.md`  | written under PARSER-PR-0 |

### Smoke test

`smoke.sc` loads the runtime and verifies a Shift/Pop round-trip.
`one4all/scripts/test_scrip.sh` runs it with the full blob and
expects `bar` on stdout.

### Style — Snocone files

Today's `.sc` files are **faithful mechanical Snocone ports** of their
`.inc` source-of-truth counterparts in `corpus/programs/snobol4/demo/beauty/`.
Same control flow, same variable names, same `Pop()` no-arg signature,
same `xTrace`-gated `OUTPUT = GT(xTrace, N) ...` tracing, full BegTag/
EndTag tag stacks in `counter.sc`, `OPSYN` active in `semantic.sc`.

Faithfulness exposes a scrip Snocone runtime bug (one-arg `IDENT(var)`
inside `Pop()` returns wrong branch when `tree.sc::Insert` is co-loaded);
this is tracked as PARSER-SN-INFRA-5a in `GOAL-PARSER-SNOBOL4.md`. The
`test_scrip.sh` gate currently reports **BLOCKED** with that pointer
until the C-runtime fix lands.

## Future hosts

When SCRIP frontends get implemented in Icon, Prolog, etc., those
files land here too — `parser_snobol4.icn`, `parser_snobol4.pl`, and
so on, alongside the `.sc` versions. Cross-host crosschecking
becomes another gate: same input, same IR tree, regardless of which
host implementation produced it.

## Invariants

- All Snocone-hosted frontend drivers MUST share these five `.sc`
  runtime files byte-for-byte. A driver that needs new shared
  infrastructure adds it to the appropriate runtime file, never to
  the driver itself.
- Runtime fixes belong here first, then propagate to
  `corpus/programs/snocone/demo/beauty/` only if the bug is also there.
  The two paths have intentionally diverged in style; do not unify.
