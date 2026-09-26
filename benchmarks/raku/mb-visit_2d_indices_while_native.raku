# *BENCH kernel=mb-visit_2d_indices_while_native -- raku-bench microbenchmark 'visit_2d_indices_while_native' (japhb/raku-bench, Artistic 2.0), SCALE baked to 8; imported 2026-09-26 (ceo CEO-1283)
my int $k = 0; my int $i = 1; while ($i <= 8) { my int $j = 1; while ($j <= 8) { $k = $i + $j; $j = $j + 1 }; $i = $i + 1 }; say $k
