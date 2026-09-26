# *BENCH kernel=rakudo-tools-02-10-000-sub-dispatches -- Rakudo's own tools/benchmark.pl snippet "02 - 10,000 sub dispatches" (Artistic 2.0); it prints nothing by design, the trailing say is the import's own line; imported 2026-09-26 (ceo CEO-1283)
sub foo(Int $x, Int $y) { }
for 1..5000 {
    foo(1,2);
    foo(1,2);
}
say 'ok';
