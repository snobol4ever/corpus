# SNOBOL4-corpus

Shared SNOBOL4 programs, libraries, and benchmarks for the
[SNOBOL4-plus](https://github.com/SNOBOL4-plus) organization.

---

## File Extension Conventions

This corpus follows the conventions established by James F. Gimpel in
*Algorithms in SNOBOL4* (Wiley, 1976; redistributed by Catspaw, Inc.) —
the closest thing the SNOBOL4 community has to a canonical standard:

| Extension | Meaning | Example |
|-----------|---------|---------|
| `.sno` | Complete program — has an `END` statement, runs standalone | `hello.sno` |
| `.inc` | Include file — `DEFINE`-only, no `END`, used via `-include` | `stack.inc` |

**Data files** accompanying a program use whatever extension fits the content
(`.dat`, `.in`, `.txt`). Gimpel used `.IN` for data files (`POKER.IN`, `RPOEM.IN`).

**SPITBOL** uses `.spt` for the same programs — we keep `.sno` throughout
since our primary oracles are CSNOBOL4 and SPITBOL-x64, and extension
is not semantically meaningful to either.

---

## Include Path

CSNOBOL4 resolves `-include` files via (in order):

1. The `-I DIR` command-line flag (repeatable)
2. `SNOPATH` environment variable (colon-separated, Unix)
3. `SNOLIB` environment variable (legacy name, pre-1.5)
4. Compiled-in default: `/usr/local/lib/snobol4/`

To use the `lib/` standard library without a path prefix:

```bash
export SNOPATH=/path/to/SNOBOL4-corpus/lib
snobol4 -f myprogram.sno
```

Or invoke directly:

```bash
snobol4 -I /path/to/SNOBOL4-corpus/lib -f myprogram.sno
```

---

## Layout

```
SNOBOL4-corpus/
│
├── lib/                 ← Standard library (.inc files, -include by name)
│   ├── stack.inc        ← stack_push/pop/peek/top/depth
│   ├── case.inc         ← lwr/upr/cap/icase
│   ├── math.inc         ← max/min/abs/sign/gcd/lcm
│   ├── string.inc       ← lpad/rpad/ltrim/rtrim/trim/repeat/contains/index
│   └── README.md
│
├── crosscheck/          ← Harness feed — self-contained, deterministic, fast
│   ├── hello/           ← smoke tests
│   ├── arith/           ← arithmetic and numeric ops
│   ├── strings/         ← string operations
│   ├── patterns/        ← pattern primitives
│   ├── capture/         ← . and $ capture
│   ├── control/         ← goto, loops, label resolution
│   ├── functions/       ← DEFINE, CALL, RETURN, FRETURN, recursion
│   ├── arrays/          ← ARRAY, TABLE, DATA
│   ├── code/            ← CODE(), EVAL()
│   └── library/         ← tests for lib/*.inc
│
├── benchmarks/          ← Performance programs (timing comparisons)
│
├── programs/            ← Real-world programs (may need I/O, -include, env)
│   ├── beauty/          ← beauty.sno beautifier + driver
│   ├── lon/             ← Lon's collection
│   │   ├── sno/         ← general programs
│   │   ├── eng685/      ← ENG 685 NLP coursework + data files
│   │   └── rinky/       ← rinky/social media programs
│   ├── gimpel/          ← Gimpel book programs (.SNO) and functions (.INC)
│   ├── aisnobol/        ← AI in SNOBOL4 (Shafto)
│   ├── dotnet/          ← programs from SNOBOL4-dotnet tests
│   └── icon/            ← Icon language translation demos
│
├── generated/           ← Pinned worm outputs that passed crosscheck
│
├── inc/                 ← Lon's working include files (production, not stdlib)
│
└── run/                 ← Oracle runner scripts
    ├── run-csnobol4.sh
    ├── run-spitbol.sh
    └── sno.mk
```

---

## Rules for `crosscheck/`

Programs in `crosscheck/` **must** be:
- **Self-contained** — no `-include`, no external file I/O
- **Deterministic** — no `DATE()`, `TIME()`, random numbers
- **Fast** — complete in < 1 second on any engine
- **Named for what they test**

## Rules for `lib/`

Files in `lib/` **must** be:
- **`.inc` extension** — signals include-only, no `END`
- **`DEFINE`-only** — no executable top-level statements
- **Self-contained** — no `-include` dependencies on other `lib/` files
- **Documented** — header comment listing every export with signature
- **Tested** — corresponding `crosscheck/library/test_*.sno`

## Rules for `generated/`

Programs land here via `run-worm-batch` when they pass crosscheck.
They are regression guards — do not edit by hand.

---

## As a Submodule

```bash
# In SNOBOL4-jvm  (path: corpus/lon)
# In SNOBOL4-dotnet  (path: corpus)
git submodule update --init --recursive
```

---

## Benchmarks

See [benchmarks/README.md](benchmarks/README.md) for the full catalog
and instructions for adding new benchmarks.
