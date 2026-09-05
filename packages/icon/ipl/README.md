# Icon Program Library (IPL) — Source Archive

Source: Icon 9.5.20b distribution (`icon-master`), IPL subdirectory.

**A SELECTED SUBSET, not the whole IPL, and not a verbatim copy of the directory.**
This header said "Copied verbatim — no modifications" until 2026-09-05; both halves of
that sentence were misleading, and each cost a measurement:

- **Subset.** Upstream ships 1088 `.icn`; we vendored **851**, from the six directories
  below. `cfuncs/`, `data/`, `packs/` and `gpacks/` were NOT vendored — yet the layout
  table below listed `packs/` and `gpacks/` as present ("varies"), so it described two
  directories that have never existed in this tree.
- **Not just upstream files.** The directory also holds `ALL.icn`, `ALL.csv`, `ALL.ref`,
  `ALL.wantrc` and `ALL.excluded.txt` — **ours, generated**, not Icon's. `ALL.icn` is a
  16k-line concatenation of the graded entries. ⛔ A bare `find . -name '*.icn' | wc -l`
  therefore answers **852**, and that is not the population: it is 851 upstream programs
  plus our own container. hq_I published 852 on 2026-09-05 on exactly that evidence and
  had to retract it. `test_icon_ipl_suite.sh` excludes the container and REFUSES if the
  accounting below stops balancing.

The population is exact and every file is accounted for once:

    ALL.csv        78 graded entries      (the oracle-cut RUN tier: 60 carry a .std)
    ALL.excluded  773 named exclusions    (each with its reason, e.g. empty oracle output)
                  ---
                  851 upstream .icn

These are the canonical reference programs for the Icon frontend. They serve as:
- Oracle inputs (run through `icont`/`iconx` to generate expected output)
- Feature coverage targets for rung 4+ corpus expansion
- Language reference for emitter correctness

## Directory layout

Counts are measured, not remembered — `find <dir> -name '*.icn' | wc -l`:

| Directory | Contents | `.icn` |
|-----------|----------|-------:|
| `progs/`  | Standalone programs with `procedure main` | 275 |
| `procs/`  | Library procedures (no `main`) | 251 |
| `gprogs/` | Graphics programs (X11 — won't run headless) | 177 |
| `gprocs/` | Graphics library procedures | 140 |
| `incl/`   | Include files | 3 |
| `gincl/`  | Graphics include files | 5 |
| | **total** | **851** |

## Usage

⛔ The oracle is **not** on `PATH` and does **not** live under `/home/claude/` — this
README pointed at `/home/claude/icon-master/bin/` until 2026-09-05, a path that does not
exist. Reach it by absolute path (`lib_oracle_flags.sh` exposes `icont_bin`/`iconx_bin`
so nobody re-derives it):

```bash
ICONT=/home/resources/icon-master/bin/icont
ICONX=/home/resources/icon-master/bin/iconx
cp progs/hello.icn /tmp/t.icn
cd /tmp && $ICONT -s t.icn && $ICONX t
```

`procs/` files are library modules — they need to be linked with a program that calls
them (`icont` `-u` flag or `$include`). Cross-directory links are the library's NORMAL
shape, which is why the compile tier exports `IPATH`/`ICONPATH` (SCRIP `55fae9091`).

Graphics programs (`gprogs/`, `gprocs/`) require X11 and will not run headless.

## License

Icon is distributed under a license permitting free use and redistribution with
attribution. See `icon-master/README` in the distribution for full terms.
