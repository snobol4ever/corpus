# *BENCH kernel=mb-deep_scan_for_interpolated_string_var -- raku-bench microbenchmark 'deep_scan_for_interpolated_string_var' (japhb/raku-bench, Artistic 2.0), SCALE baked to 16; imported 2026-09-26 (ceo CEO-1283) -- the trailing say is the import's own line: the snippet printed nothing
$_ = "0" x 100 ~ "foo bar baz"; my $s = "foo bar baz"; loop (my $i = 0; $i < 16; $i++) { /$s/ }
say 'ok';
