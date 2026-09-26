# *BENCH kernel=mb-for_push -- raku-bench microbenchmark 'for_push' (japhb/raku-bench, Artistic 2.0), SCALE baked to 128; imported 2026-09-26 (ceo CEO-1283)
my @a; for (1 .. 128) { push @a, 1 }; say +@a;
