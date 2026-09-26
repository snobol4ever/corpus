# *BENCH kernel=mb-for_hash_set -- raku-bench microbenchmark 'for_hash_set' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my %h; %h{ $_ } = $_ for 0 .. 1024; say %h<1024>;
