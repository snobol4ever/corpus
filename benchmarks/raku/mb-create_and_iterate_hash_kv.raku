# *BENCH kernel=mb-create_and_iterate_hash_kv -- raku-bench microbenchmark 'create_and_iterate_hash_kv' (japhb/raku-bench, Artistic 2.0), SCALE baked to 8; imported 2026-09-26 (ceo CEO-1283)
my %h; my $m = 0; for ^8 { %h{$_} = $_ }; for %h.kv -> $k, $v { $m += $k == $v }; say $m;
