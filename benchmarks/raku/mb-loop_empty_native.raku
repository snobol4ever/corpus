# *BENCH kernel=mb-loop_empty_native -- raku-bench microbenchmark 'loop_empty_native' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
loop (my int $i = 1; $i <= 1024; $i = $i + 1) { }; say $i;
