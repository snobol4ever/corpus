# *BENCH kernel=rakudo-tools-05-10-000-multi-method-dispatches -- Rakudo's own tools/benchmark.pl snippet "05 - 10,000 multi-method dispatches" (Artistic 2.0); it prints nothing by design, the trailing say is the import's own line; imported 2026-09-26 (ceo CEO-1283)
class A {
    multi method m(Int $x, Str $y) { }
    multi method m (Str $x, Int $y) { }
}
my $x = A.new;
for 1..5000 {
    $x.m(1, "hi");
    $x.m("hi", 1);
}
say 'ok';
