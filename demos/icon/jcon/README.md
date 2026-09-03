# JCON — the Icon compiler, as a SCRIP demo

JCON (Gregg Townsend & Todd Proebsting, Arizona) is a production Icon-to-JVM compiler
**written in Icon**. At 9,953 lines across 16 hand-written modules plus 2 it generates
with its own Icon programs, it is the largest real-world Icon program in the corpus —
which is why it is a *demo* and not a test: it exercises the whole front end at once,
and one number about it says more than a hundred rung witnesses.

Sources: `corpus/packages/icon/jcon-compiler/` (see its README for provenance and the
semicolon conversion). Nothing is duplicated here.

## The entries are link manifests, not programs

Each `*.icn` here is a thin file of `link "<relpath>"` lines and nothing else. SCRIP's
own `icn_resolve_links` (`src/parsers/icon/icon_driver.c:26`, 64-file ceiling) splices
the named modules in. Each entry names **exactly** the modules JCON's `tran/Makefile`
builds that program from.

⛔ **This is deliberate, and the obvious alternative is wrong.** Handing SCRIP all 18
package files on one command line — the way this package used to be compiled — merges
JCON's **four** separate `procedure main`s (`jtran_main`, `linker`, `oplexgen`,
`interfacegen`) into a single program. It compiles, so nothing announces the problem.

| entry | program | modules |
|---|---|:---:|
| `interfacegen.icn` | JCON's Java-interface table generator | 1 |
| `oplexgen.icn` | JCON's operator-lexer generator | 1 |
| `jlink.icn` | `jlink`, JCON's class linker | 2 |
| `jtran.icn` | `jtran`, the full translator | 17 |

`inputs/` holds demo inputs, kept out of this directory because the gate treats every
`*.icn` here as an entry. `<name>.args` gives a program its command line;
`<name>.knowndiff` declares a difference that is known and still open, and names its class.

## Grading

```bash
bash SCRIP/scripts/test_demo_icon_jcon.sh          # the gate
bash SCRIP/scripts/bench_triangulate_demos_icon.sh # the three-angle numbers
```

The gate builds its own `icont` oracle from the same package sources on every run, so
an oracle/SCRIP difference is a SCRIP difference and can never be source drift. It
**refuses (`rc=2`) rather than skipping** when it cannot measure, and a declared
known-difference that starts *passing* is reported `XPASS` and **fails** — so a cure
cannot land silently and leave a stale marker behind it.

State, measured 2026-09-03:

| demo | m3 | m4 | vs oracle |
|---|:---:|:---:|---|
| `interfacegen` | ✅ | ✅ | byte-identical |
| `jlink` | ✅ | ✅ | byte-identical (answers on **stderr**; the oracle picks the stream) |
| `oplexgen` | ⚠ | ⚠ | same 611 lines, different `key(table)` order |
| `jtran` | ⛔ | ⛔ | does not build — see `jtran.knowndiff` |

⚠ `jlink` matches byte-for-byte on all three arms while **exiting 0 where the oracle
exits 1** (`stop()` should exit 1; SCRIP also has no `exit()` builtin at all). The gate
reports that divergence and does not gate on it — the answer is the correctness signal,
per the same posture as `bench_triangulate_demos_snobol4.sh`.

## The `.s` artifacts

`interfacegen.s`, `oplexgen.s` and `jlink.s` are current mode-4 output, committed
because `.s` artifacts belong beside demos. ⛔ They are **honest current compiler
output, never pinned goldens** — no gate compares them, and none ever should.

⛔ **`jtran.s` is deliberately absent.** It is 44 MB of assembly for a program that does
not link; committing it would cost more than every other artifact here combined and
prove nothing. Regenerate it on demand:

```bash
scrip --compile -o jtran.s jtran.icn < /dev/null
```
