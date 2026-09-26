# *BENCH kernel=mb-reduce_int_comb_range -- raku-bench microbenchmark 'reduce_int_comb_range' (japhb/raku-bench, Artistic 2.0), SCALE baked to 128; imported 2026-09-26 (ceo CEO-1283)
say [+] (1 .. 128).comb>>.Int;
