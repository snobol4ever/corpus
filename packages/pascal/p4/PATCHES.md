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

## int.pas (from int.p)
3. `alfa = packed array [1..10] of char` added to the type section: a predefined type of P4's host,
   absent from ISO 7185 and from fpc (`Identifier not found "alfa"`).
4. `procedure null; begin end;` added: a predefined no-op of P4's host, used as a bare statement.
5. The main-block loop `for i := 0 to q - 1 do store[i1 + i] := store[i2 + i]` (int.p:1478) drives
   `i0`, a new global beside `i`: `i` is assigned by procedures declared in that block, an ISO 6.8.3.9
   violation SCRIP enforces.

## Input
`comp_detab.p` is `expand comp.p`: P4's own `chartypes` never classifies chr(9), so a tab is P4's
illegal character (error 399) in every implementation; the self-host feeds the detabbed text.
