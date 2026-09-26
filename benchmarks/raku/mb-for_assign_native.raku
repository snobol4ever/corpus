# *BENCH kernel=mb-for_assign_native -- raku-bench microbenchmark 'for_assign_native' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my int $a = 0; my int $b = 1; for (1 .. 1024) { $a = $b; }; say $a;
