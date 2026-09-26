# *BENCH kernel=mb-while_int2str_native -- raku-bench microbenchmark 'while_int2str_native' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my int $i = 0; my str $s = ~$i; while ($i = $i + 1) <= 1024 { $s = ~$i }; say $s;
