# *BENCH kernel=mb-for_param_sigil -- raku-bench microbenchmark 'for_param_sigil' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
sub a(\) {}; my $p = &a.signature.params[0]; my $a = "\$"; for ^1024 { $a = $p.sigil }; say $a
