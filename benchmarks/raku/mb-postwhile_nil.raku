# *BENCH kernel=mb-postwhile_nil -- raku-bench microbenchmark 'postwhile_nil' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my $i = -1024 || exit(0); Nil while ++$i; say $i;
