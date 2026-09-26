# *BENCH kernel=rakudo-tools-06-10-000-operator-dispatches -- Rakudo's own tools/benchmark.pl snippet "06 - 10,000 operator dispatches" (Artistic 2.0); it prints nothing by design, the trailing say is the import's own line; imported 2026-09-26 (ceo CEO-1283)
my $x = 3;
my $y = 39;
for 1..5000 {
    $x + $y;
    $x - $y;
}
say 'ok';
