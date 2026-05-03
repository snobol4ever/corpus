// smoke.sc — smoke test for corpus/programs/scrip/ (Snocone-hosted runtime).
// Verifies the runtime loads and a Shift/Pop round-trip works using the
// faithful no-arg Pop() form beauty.sno uses at line 617:
//     DIFFER(sno = Pop())
// Shift('foo','bar') pushes a tree leaf; Pop() returns it.
// Expected output: bar
//
// NOTE: This smoke is RED until PARSER-SN-INFRA-5a lands in scrip's C
// runtime — one-arg IDENT(var) inside Pop() returns wrong-branch when an
// Insert-shaped function (tree.sc::Insert) is loaded in the same session.
// See GOAL-PARSER-SNOBOL4.md INFRA-5a.

Shift('foo', 'bar');
sno = Pop();
OUTPUT = v(sno);
