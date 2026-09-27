# Pascal-P4 vendored for the SCRIP self-host test (coo, 2026-09-12)

Upstream: `/home/resources/pascal-p4-main/` (the Zurich Pascal-P4 kit as distributed; `comp.p` is the
lower-cased, entabbed, stripped compiler, `int.p` the P-code interpreter; upstream carries no VCS
hash -- see `README.upstream.txt`). Copied verbatim, then patched as listed here and NOWHERE ELSE.
P4 predates ISO 7185 and its original host predefined a few things; each patch names the reason.

## comp.pas (from comp.p)
1. `searchid` used the GLOBAL `disx` as its for-statement control variable (comp.p:598). ISO 7185
   6.8.3.9 requires the control variable to be declared in the block closest-containing the
   for-statement; SCRIP enforces it. Patch: a local `disxl: disprange` drives the loop and `disx`
   is assigned from it on every iteration, so callers still read `disx` as before.
2. `rewrite(prr)` as the first statement of the main block. P4's host bound program-parameter
   files implicitly; fpc -Miso raises runtime error 103 on a write to a file never rewritten, and so
   does SCRIP. SCRIP binds a program-parameter file to a file named after the identifier on
   rewrite/reset (ISO 6.10 leaves external binding to the implementation; fpc binds unnamed program
   files to the standard streams -- recorded as ISO-DELEGATED-SCRIP-DEFAULT, never graded).

6. `insymbol` jumped from the then-branch of `if (ch = '.') or (ch = 'e')` into its else-branch with `goto 3`
   (a number followed by `..` is an integer before a range, comp.p insymbol). ISO 7185 6.8.1 forbids it: the else-part
   is not a statement of a statement-sequence that contains the goto. SCRIP enforces 6.8.1 with no by-name exception
   (ceo CEO-1228, 2026-09-23, on hq_pascal's question -- the one-oracle law forbids a per-program accommodation). Patch
   (hq_pascal, 2026-09-24): a local `intcase: boolean` is set true before the test and false inside the real-number
   branch; the `goto 3` becomes `intcase := true` with the fraction scan moved to its `else`, the exponent and real
   construction are wrapped in `if not intcase`, the labelled else-branch becomes a following `if intcase then`, and
   label 3 leaves `label 1,2,3` (ISO requires every declared label to prefix a statement). Behaviour unchanged, measured:
   SCRIP runs the original and the patched compiler on comp_detab.p to byte-identical generation-1 listing, stderr and
   P-code (6814 / 1 / 5301 lines). fpc -Miso compiles neither version (Ordinal expression expected, comp.pas:734), so
   the oracle could not serve as the equivalence check.

7. Three variant parts named only some values of their tag-type: `attr`'s `case kind: attrkind of` had no `expr` arm, its
   nested `case access: vaccess of` no `inxd` arm, and the identifier record's `case occur: where of` no `blck` or `rec` arm.
   ISO 7185 6.4.3.3: the case-constants of a variant-part "shall be distinct and the set thereof shall be equal to the set of
   values specified by the tag-type"; SCRIP enforces it (ceo CEO-1231, 2026-09-24, on hq_pascal's question; upstream
   Pascal-P5 made the same repair, adding `blck: (bname: ctp)` to the where variant, P5 pcom.pas line 517). Patch
   (hq_pascal, 2026-09-24): empty arms `inxd: ()`, `expr: ()` and `blck, rec: ()` on the lines that close each variant.
   Behaviour unchanged, measured: generation 1 on comp_detab.p is byte-identical -- listing, stderr and P-code (6814 / 0 /
   5301 lines) -- for the original compiler and the patched one built by the SCRIP before the check, and for the patched one
   built by the SCRIP that carries it.
9. The machine constants are comp1's, not the machine int.p implements (hq_pascal, 2026-09-27, ceo CEO-1317). The kit's comp0.p (the
   compiler as distributed) has `realsize = 1`, `ptrsize = 1`, `setsize = 1`, `lcaftermarkstack = 5`; comp1.p (fixes to Pascal
   Newsletter #12) retargets them to 2, 2, 4 and 10, and comp.p (from comp2.p, from comp1.p) keeps comp1's. int.p implements comp0's
   machine: one store cell per value, the files at cells 5..8 (`inputadr = 5` .. `prradr = 8`). So the compiler places input, output,
   prd and prr at cells 10..13 (`lda 0 11` for output) and under int.p every file access reaches the wrong cell: a five-line program
   compiled by the fpc-built compiler and run by the fpc-built interpreter printed nothing. Patch: comp0's four values. Measured: the
   same program then prints `sum= 15` under that fpc-built pair; the Pascal-P5 kit's p4/pcom.pas carries the same four values.
   comp_detab.p carries the same four lines (see Input): generation 2's compiler is compiled from it, and the fixpoint compares the
   P-code of the two generations.
## int.pas (from int.p)
3. `alfa = packed array [1..10] of char` added to the type section: a predefined type of P4's host,
   absent from ISO 7185 and from fpc (`Identifier not found "alfa"`).
4. `procedure null; begin end;` added: a predefined no-op of P4's host, used as a bare statement.
5. The main-block loop `for i := 0 to q - 1 do store[i1 + i] := store[i2 + i]` (int.p:1478) drives
   `i0`, a new global beside `i`: `i` is assigned by procedures declared in that block, an ISO 6.8.3.9
   violation SCRIP enforces.

8. The `store` array's `case datatype of` named no `undef` arm, the same ISO 7185 6.4.3.3 rule as item 7 (CEO-1231). Patch
   (hq_pascal, 2026-09-24): `undef: ()` after `of`. Behaviour unchanged, measured: the emitted assembly of int.pas is
   byte-identical (228175 lines, the source path in two lines aside) for the original and the patched source under the
   SCRIP before the check, and for the patched source under the SCRIP that carries it.
10. The 21 `sptable` literals hold a TAB (hq_pascal, 2026-09-27): the kit's entab turned a blank inside each 10-character alfa into a
   tab (`'get<TAB>      '`; upstream int.p is the same), so no standard-procedure name the loader packs from the P-code (`'get       '`)
   equals a table entry, and `while name <> sptable[q] do q := q + 1` runs off the end of sptable on the first `csp`. Measured: fpc -Miso
   -Cr stops there with runtime error 201 at the lookup line. Patch: each TAB back to the one blank that keeps the literal 10 characters.
11. Item 4's `procedure null` was declared inside `load`, but the main block calls `null` three times (the `chr`/`ujc` cases and label 1),
   where `load`'s declarations are out of scope (hq_pascal, 2026-09-27). fpc -Miso resolved those calls to its own System.Null, a Variant
   function, and the fpc-built interpreter died at the call (SIGSEGV in NULL$$VARIANT, main line 1515). Patch: the same declaration at
   program level, just before `procedure load`.
12. int.p reads variant fields it did not write (hq_pascal, 2026-09-27, ceo CEO-1317: ISO 7185 6.5.3.3 makes that an error, SCRIP keeps
   one slot per variant as ISO allows, and the program is corrected, never the pun emulated). On the CDC every variant of a store cell
   was one 60-bit word; fpc overlaps them byte-wise, so a cell written as an address and read as an integer carries the other bytes
   (fpc's eof read -2147483643 for the input address 5). From Staiesse's FPC port (corpus pint.pas): the loader keeps `ord` with its
   operand type instead of dropping `ord`/`chr` (`59, 60: goto 1`), and `ord`/`chr` convert instead of being no-ops; `inc`, `dec` and
   `chk` act on the variant of their type instead of `.vi` for all; `eof` reads the file address as `.va`; `wrc` to prr writes `.vc`;
   `readc` stops writing the buffer character a second time as `.vi`. Two more that the port keeps because fpc's overlap hides them:
   `new` reads its size, pushed by `ldci`, as `.vi` not `.va`; and `compare` and the four multi-word relations compare the characters
   `lca` stored as `.vc`, not `.vi` (P4 compares only strings this way). Measured: with items 9-12 the fpc-built interpreter runs
   generation 1's P-code over comp_detab.p to a full 4019-line listing with no errors in 0.6 s, and its generation-2 P-code equals
   generation 1's modulo whitespace -- the kit's own self-host criterion (`diff -w`); the residue is one column of padding in `ldc i`
   lines, present identically under fpc.
## Input
`comp_detab.p` is `expand comp.p`: P4's own `chartypes` never classifies chr(9), so a tab is P4's
illegal character (error 399) in every implementation; the self-host feeds the detabbed text. It carries
item 9's four constant lines as well, so the compiler it holds describes the same machine as comp.pas.
