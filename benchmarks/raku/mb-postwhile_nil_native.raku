# *BENCH kernel=mb-postwhile_nil_native -- raku-bench microbenchmark 'postwhile_nil_native' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my int $i = -1024 || exit(0); Nil while $i = $i + 1; say $i;
