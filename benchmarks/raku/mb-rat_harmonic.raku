# *BENCH kernel=mb-rat_harmonic -- raku-bench microbenchmark 'rat_harmonic' (japhb/raku-bench, Artistic 2.0), SCALE baked to 128; imported 2026-09-26 (ceo CEO-1283)
my $r = FatRat.new(0, 1); for 1 .. 128 { $r += 1 / $_ }; say $r.perl
