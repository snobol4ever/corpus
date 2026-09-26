# *BENCH kernel=mb-split_string_regex -- raku-bench microbenchmark 'split_string_regex' (japhb/raku-bench, Artistic 2.0), SCALE baked to 128; imported 2026-09-26 (ceo CEO-1283)
my $s = (1 .. 128).join: ", "; my @s; @s = $s.split(/\s*\,\s*/) for 1 .. 128; say +@s;
