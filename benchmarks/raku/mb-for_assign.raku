# *BENCH kernel=mb-for_assign -- raku-bench microbenchmark 'for_assign' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my $a = 0; my $b = 1; for (1 .. 1024) { $a = $b; }; say $a;
