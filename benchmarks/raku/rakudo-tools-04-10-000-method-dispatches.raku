# *BENCH kernel=rakudo-tools-04-10-000-method-dispatches -- Rakudo's own tools/benchmark.pl snippet "04 - 10,000 method dispatches" (Artistic 2.0); it prints nothing by design, the trailing say is the import's own line; imported 2026-09-26 (ceo CEO-1283)
class A { method m1(Int $x, Int $y) { }; method m2(Int $x, Int $y) { } }
my $x = A.new;
for 1..5000 {
    $x.m1(1,2);
    $x.m2(1,2);
}
say 'ok';
