# *BENCH kernel=mb-trim_string -- raku-bench microbenchmark 'trim_string' (japhb/raku-bench, Artistic 2.0), SCALE baked to 128; imported 2026-09-26 (ceo CEO-1283)
my $s = " " x 128 ~ "x" x 128 ~ " " x 128; my $result = ""; $result = $s.trim for 1 .. 128; say $result.chars;
