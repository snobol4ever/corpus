# *BENCH kernel=mb-for_postinc -- raku-bench microbenchmark 'for_postinc' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my $i = 0; for (1 .. 1024) { $i++ }; say $i;
