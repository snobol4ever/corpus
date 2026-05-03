// smoke.sc — smoke test for corpus/programs/scrip/ (Snocone-hosted runtime).
// Verifies the runtime loads and a Shift/Pop round-trip works.
// Shift('foo','bar') pushes a tree leaf; Pop('') returns it.
// Expected output: bar
Shift('foo', 'bar');
r = Pop('');
OUTPUT = v(r);
