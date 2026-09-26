# *BENCH kernel=mb-while_empty_native -- raku-bench microbenchmark 'while_empty_native' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my int $i = 0; while ($i = $i + 1) <= 1024 { }; say $i;
