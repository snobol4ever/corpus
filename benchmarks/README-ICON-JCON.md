# Icon & JCON Benchmarks

Canonical benchmark suites for the SCRIP Icon front-end, copied verbatim from
the upstream sources provided in `icon-master/tests/bench/` (reference Icon
interpreter, C) and `jcon-master/bmark/` (JCON, Java). These are the headline
programs the SCRIP "ten times faster" pitch is measured on.

## `icon/` — from icon-master/tests/bench

| File | Role | Inputs |
|------|------|--------|
| `queens.icn`   | **benchmark** — N-queens generator | — |
| `concord.icn`  | **benchmark** — concordance (tables + scan + sort) | `concord.dat` |
| `deal.icn`     | **benchmark** — card dealing (lists + shuffle + random) | (link `shuffle`) |
| `ipxref.icn`   | **benchmark** — cross-reference (records + tables + sort + scan) | `ipxref.dat` |
| `rsg.icn`      | **benchmark** — random sentence generator (tables + records + recursion) | `rsg.dat` |
| `micro.icn`    | **benchmark** — micro-operation timing battery | — |
| `micsum.icn`   | **benchmark** — micro summary | — |
| `options.icn`  | support — command-line option parsing (link dependency) | — |
| `post.icn`     | support — postfix helper (link dependency) | — |
| `shuffle.icn`  | support — list shuffle (link dependency for `deal`) | — |
| `*.std`        | upstream reference output. **Note:** the icon-master `.std` files are the icont *self-benchmark* dumps (`&features` banner + storage/GC stats + elapsed time), **not** plain program stdout — not directly diffable. | — |

## `jcon/` — from jcon-master/bmark

| File | Role | Inputs |
|------|------|--------|
| `queens.icn`   | **benchmark** — N-queens | — |
| `concord.icn`  | **benchmark** — concordance | `concord.dat` |
| `deal.icn`     | **benchmark** — card dealing | (link `shuffle`) |
| `ipxref.icn`   | **benchmark** — cross-reference | (input) |
| `rsg.icn`      | **benchmark** — random sentence generator | `rsg.dat` |
| `tgrlink.icn`  | **benchmark** — long-runner (graph link) | `tgrlink.dat` |
| `geddump.icn`  | **benchmark** — GED dump | `geddump.dat` |
| `options.icn`  | support — option parsing (link dependency) | — |
| `post.icn`     | support — postfix helper (link dependency) | — |
| `shuffle.icn`  | support — list shuffle (link dependency for `deal`) | — |
| `version.icn`  | support — version string (link dependency) | — |

## The five standard benchmarks (both suites)

`queens` · `concord` · `deal` · `rsg` · `ipxref` — plus JCON long-runners
`tgrlink` / `geddump` and the icon-master microbench `micro` / `micsum`.

## Link-free corpus variants

Link-free transcriptions of several of these (inlined arg parsing, dropped
`options()`/`Init__()`/`Term__()`) live alongside the corpus Icon programs as
`programs/icon/rung36_jcon_*.icn`, each with a `.expected` oracle (real program
stdout) — those are the gating oracles for the SCRIP native-execution work.
The files here are the **unmodified upstream originals**.
