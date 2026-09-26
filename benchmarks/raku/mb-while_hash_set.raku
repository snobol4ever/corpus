# *BENCH kernel=mb-while_hash_set -- raku-bench microbenchmark 'while_hash_set' (japhb/raku-bench, Artistic 2.0), SCALE baked to 128; imported 2026-09-26 (ceo CEO-1283)
my %h; my $i = 0; %h{$i} = $i; while (++$i <= 128) { %h{ $i } = $i }; say %h{$i - 1};
