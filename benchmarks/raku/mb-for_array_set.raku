# *BENCH kernel=mb-for_array_set -- raku-bench microbenchmark 'for_array_set' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my @a; @a[ $_ ] = $_ for 0 .. 1024; say @a[1024];
