# *BENCH kernel=mb-visit_2d_indices_loop_native -- raku-bench microbenchmark 'visit_2d_indices_loop_native' (japhb/raku-bench, Artistic 2.0), SCALE baked to 8; imported 2026-09-26 (ceo CEO-1283)
my int $k = 0; loop (my int $i = 1; $i <= 8; $i = $i + 1) { loop (my int $j = 1; $j <= 8; $j = $j + 1) { $k = $i + $j } }; say $k;
