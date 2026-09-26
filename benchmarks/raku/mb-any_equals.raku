# *BENCH kernel=mb-any_equals -- raku-bench microbenchmark 'any_equals' (japhb/raku-bench, Artistic 2.0), SCALE baked to 128; imported 2026-09-26 (ceo CEO-1283)
my $match = 1 == any(1 .. 128); my $fail = 0 == any(1 .. 128); say "{+?$match} {+?$fail}"
