# *BENCH kernel=mb-rat_mul_div_cancel -- raku-bench microbenchmark 'rat_mul_div_cancel' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
my $r = 1.0; for 1 .. 1024 { $r *= $_; $r /= $_ + 1 }; say $r.numerator ~ "/" ~ $r.denominator;
