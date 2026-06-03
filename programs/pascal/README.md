# Pascal-P4 — a working bootstrap compiler (reference oracle)

> **The Pascal-P4 sources are NOT bundled in this repository.** We do not
> redistribute them. SCRIP implements the P4 subset in its own original C and
> uses Pascal-P4 only as a private behavioral oracle during development. To work
> with the reference, fetch it into a local (never-committed) directory:
>
> ```bash
> git clone https://github.com/BackupTheBerlios/pp4fpc.git /home/claude/pp4ref
> ```
>
> The only Pascal source in *this* directory is our own `recursion.pas` probe.
> The notes below document that reference toolchain; every command runs inside
> the fetched clone.

**Pascal-P4** is a complete, self-hosting Pascal compiler in ~4000 lines of
Pascal that targets a tiny stack machine, plus the interpreter for that machine.
It is SCRIP's reference frontend oracle (see `GOAL-PASCAL-BB.md` in the `.github`
repo) and a beautifully compact worked example of how a self-hosting compiler
bootstraps.

It is also a museum piece worth running. The interpreter header reads
*"K. Jensen, N. Wirth, Ch. Jacobi, ETH May 76"* — this code is approaching its
fiftieth birthday and still compiles itself bit-for-bit.

## Provenance and attribution

Pascal-P4 is the fourth iteration of the **Portable Pascal** implementation kit
written at the Institut für Informatik, ETH Zürich, expressly to spread Pascal
to new machines by being copied, ported, and modified.

- **`pcom.pas`** — the compiler. Authors: **Urs Ammann, Kesav Nori, Christian Jacobi** (ETH Zürich).
- **`pint.pas`** — the P-code assembler/interpreter. Credited to **K. Jensen, N. Wirth, Ch. Jacobi** (ETH, May 1976).
- Both are fully documented in **"Pascal Implementation"** by *Steven Pemberton and Martin Daniels*, Ellis Horwood, Chichester, UK, 1982 (ISBN 0-13-653-0311). The book annotates this code line by line.
- This particular copy is the **Free Pascal / Delphi port by Christophe Staiesse (2013)**, which fixes the original's CDC-6000 machine dependencies and bugs while preserving line numbering. The `grammar/` lex+yacc files carry an MIT license.

See the corpus `NOTICE` file for how this third-party content sits alongside the
CC0 dedication that covers the rest of the corpus.

## The files

**In this directory (ours):**

| File | What it is |
|------|------------|
| `README.md` | This writeup. |
| `recursion.pas` | `fact` and `fib` — a SCRIP Pascal probe that exercises the activation-record machinery. |

**In the reference clone (fetched separately, not bundled):**

| File | What it is |
|------|------------|
| `pcom.pas` | The compiler. Reads Pascal on stdin, writes P-code to a file named `prr`. |
| `pint.pas` | The P-machine: reads P-code from a file named `prd`, executes it. |
| `pinthelper.inc` | Helper routines included by `pint.pas`. |
| `ppp.pas` | A tiny preprocessor needed so `pcom` can compile *itself* (see bootstrap below). |
| `sieve.pas` | Sieve of Eratosthenes — a clean control-flow + array test program. |
| `grammar/` | A lex (`pascalp.l`) + yacc (`pascalp.y`) grammar for Pascal-P (MIT-licensed). The token rules are the source of truth for a `TT_*` lexer. |
| `errormsg.txt` | The compiler's numbered error-message list. |
| `Makefile` | Builds `pcom` + `pint` with Free Pascal and runs the self-compile test. |

## The architecture

Pascal-P4 is the textbook two-stage design that SCRIP also uses: a **front end
that lowers source to an abstract machine**, and a **back end that runs the
abstract machine**.

```
program.pas ──▶ pcom ──▶ P-code (the "prr" file) ──▶ pint ──▶ output
                (compiler)   (a stack-machine            (P-machine
                             assembly listing)            interpreter)
```

The P-machine is a pure stack machine. Its store is one flat array split into a
runtime stack (grows up) and a heap pointer (grows down); the compiler emits
constants such as `maxint = 32767`, modelling a 16-bit target word — a detail
worth remembering when a result overflows.

## Build it

Requires Free Pascal (`fpc`). On Debian/Ubuntu: `apt-get install -y fpc`.

```bash
fpc -Ci -Co -Cr -gl pcom.pas      # the compiler
fpc -Ci -Co -Cr -gl pint.pas      # the interpreter
```

The flags turn on I/O checking (`-Ci`), overflow checking (`-Co`), range
checking (`-Cr`), and line-number debug info (`-gl`). Range checking earns its
keep: it cleanly traps a P-machine store overrun instead of letting it corrupt
memory and spin.

## Compile and run a program

`pcom` reads source on **stdin** and writes the P-code to a file called **`prr`**.
`pint` reads its program from a file called **`prd`** and runs it. So the dance is:
compile, rename `prr` to `prd`, interpret.

```bash
./pcom < sieve.pas          # produces ./prr  (the P-code)
cp prr prd
./pint < /dev/null          # runs it; prints the primes < 100
```

Note the `< /dev/null`. Old Pascals have the famous *lazy-I/O* quirk: the
interpreter blocks trying to read standard input before it will flush any
output, even for a program that reads nothing. Feeding it an empty stdin
unsticks it.

### The P-code, annotated

Here is the inner loop of the sieve as `pcom` emits it — a clean stack machine
at work:

```
 ldci 100        load constant integer 100
 ldoi    109     load global integer at offset 109   (the variable i)
 sqi             square the integer on top of stack
 leqi            push (sqr(i) <= 100)
 fjp  l   9      jump to label 9 if false
 lao      9      load address of global at offset 9  (the array a)
 ldoi    109     load i
 chki 2 100      range-check it is in 2..100
 deci      2     subtract the array's lower bound (2)
 ixa      1      index: address + element*1
 indb     0      load the boolean a[i]
 ...
```

`ld*` loads, `st*`/`sr*` stores, `lao`/`lda` load addresses, `chk*` range-checks,
`ixa` indexes an array, `adi`/`sbi`/`mpi`/`dvi` are integer arithmetic, `sqi`
squares, `fjp`/`ujp` are conditional/unconditional jumps. The full opcode set
and its exact semantics live in the big `case` statement in `pint.pas`.

## The bootstrap fixpoint

The interesting part. `pcom` is *written in the language it compiles*, so it can
compile itself — and a correct compiler must reproduce its own object code
exactly. The `Makefile`'s `test` target proves this:

```bash
# 1. Compile the helper preprocessor to P-code (with the native pcom).
./pcom < ppp.pas && mv prr ppp.pc

# 2. pcom compiles ITSELF: run ppp on the interpreter to preprocess pcom.pas,
#    pipe that into the native pcom. Result is pcom as 21,044 lines of P-code.
cp ppp.pc prd
./pint < pcom.pas | ./pcom && mv prr pcom.pc

# 3. THE FIXPOINT: now run pcom *as P-code on the interpreter*, compiling its
#    own (preprocessed) source, and diff the result against itself.
cp ppp.pc prd ; ./pint < pcom.pas > pcom.pp        # ppp preprocesses pcom.pas
cp pcom.pc prd ; ./pint < pcom.pp                  # pcom-as-P-code compiles it
diff -w pcom.pc prr                                # ⟹ identical
```

When that `diff` is empty, the compiler — running as 21,044 lines of stack
code on a tree-walking interpreter — has regenerated itself byte-for-byte. That
is the self-hosting fixpoint, the same property SCRIP pursues for its own
stage-2 compiler.

`ppp` is the secret ingredient: a one-page preprocessor that comments out the
two lines of `pcom` that only make sense when an outer compiler reads them.
Delightfully, its own header describes it as *"a state machine resolving a
regular expression"* — to bootstrap a Pascal compiler, its author reached for a
pattern matcher, which is exactly the machinery SNOBOL4 and SCRIP are built on.

## Recursion on the P-machine

`recursion.pas` computes `fact` and `fib`. Recursion is where the P-machine's
activation-record model is visible. `fib := fib(n-1) + fib(n-2)` compiles to:

```
 mst  1          mark stack: reserve a fresh activation record
 lodi 0 5        load n
 ldci 1
 sbi             n - 1
 cup  1 l 8      call user procedure fib (entry label 8)
 mst  1          mark a second record
 lodi 0 5
 ldci 2
 sbi             n - 2
 cup  1 l 8      call fib again
 adi             add the two results
```

`mst` (mark stack) reserves the activation record; `cup` (call user procedure)
enters it; `ent` sets up locals on entry; `ret*` unwinds. The frames chain
through a static link so a routine can reach its enclosing scope's variables —
which is precisely the structure a Byrd-Box graph already provides, and the
reason Pascal's nested functions map so naturally onto BBs.

```bash
./pcom < recursion.pas && cp prr prd && ./pint < /dev/null
```

It prints `k`, `k!`, and `fib(k)`. It runs correctly through `fact(7) = 5040`;
at `fact(8) = 40320` the result exceeds the compiler's 16-bit `maxint` model and
the P-machine's range check fires — a faithful reminder that the target word
size is part of the language's semantics.

## Why keep this around

This is the canonical small bootstrap compiler: a real language, self-hosting,
in a few thousand readable lines, targeting an abstract machine you can hold in
your head. It is the historical ancestor of every "compile to bytecode, then
interpret or JIT" system — including SCRIP, which lowers six (now seven)
languages to a shared IR and then either interprets it or emits native code. The
Pascal-P4 P-code is to `pcom` what SCRIP's IR is to its front ends.
