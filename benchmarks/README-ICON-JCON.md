# Icon Benchmarks

Canonical benchmark suite for the SCRIP Icon front-end, merged from
`icon-master/tests/bench/` (reference Icon interpreter, C) and
`jcon-master/bmark/` (JCON, Java). All sources live in `benchmarks/icon/`.

## `icon/` — merged icon-master + jcon-master

| File | Source | Role | Inputs |
|------|--------|------|--------|
| `queens.icn`   | both   | **benchmark** — N-queens generator | — |
| `concord.icn`  | both   | **benchmark** — concordance (tables + scan + sort) | `concord.dat` |
| `deal.icn`     | both   | **benchmark** — card dealing (lists + shuffle + random) | (link `shuffle`) |
| `ipxref.icn`   | both   | **benchmark** — cross-reference (records + tables + sort + scan) | `ipxref.dat` |
| `rsg.icn`      | both   | **benchmark** — random sentence generator (tables + records + recursion) | `rsg.dat` |
| `tgrlink.icn`  | jcon   | **benchmark** — long-runner (graph link) | `tgrlink.dat` |
| `geddump.icn`  | jcon   | **benchmark** — GED dump | `geddump.dat` |
| `micro.icn`    | icon   | **benchmark** — micro-operation timing battery | — |
| `micsum.icn`   | icon   | **benchmark** — micro summary | — |
| `options.icn`  | both   | support — command-line option parsing (link dependency) | — |
| `post.icn`     | both   | support — postfix helper (link dependency) | — |
| `shuffle.icn`  | both   | support — list shuffle (link dependency for `deal`) | — |
| `version.icn`  | jcon   | support — version string (link dependency) | — |
| `*.std`        | icon   | upstream reference output — icont *self-benchmark* dumps, NOT plain stdout, not diffable | — |

## Notes

- `concord.dat`: jcon version used (superset of icon-master's; icon-master content + additional pages).
- `rsg.dat`: icon-master version (1000-poem count; jcon used 2500).
- `*.std` files are the icont self-benchmark format (`&features` banner + storage/GC stats + elapsed
  time); they are NOT diffable oracles. The real oracles are in `corpus/programs/icon/rung36_jcon_*.expected`.
- These upstream originals use `link options, post, shuffle, version`; they are NOT link-free.
  Link-free, oracle-bearing variants for the SCRIP native-execution gate live in `programs/icon/rung36_jcon_*`.
