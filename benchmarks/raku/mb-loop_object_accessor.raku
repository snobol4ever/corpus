# *BENCH kernel=mb-loop_object_accessor -- raku-bench microbenchmark 'loop_object_accessor' (japhb/raku-bench, Artistic 2.0), SCALE baked to 1024; imported 2026-09-26 (ceo CEO-1283)
class A { has $.x; }; my $a = A.new(x => 42); my $y = 42; loop (my int $i = 0; $i < 1024; $i++) { $y = $a.x; }; say $y;
