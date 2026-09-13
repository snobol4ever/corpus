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
