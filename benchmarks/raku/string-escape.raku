use v6;
# ⛔⭐ SELF-TIMED ON THE TWO-NUMBER BASIS (Lon 2026-08-30, RULES.md § THE TWO-NUMBER BENCHMARK BASIS).
# The bracket encloses the WORK ONLY -- not startup, not the write. Published multiples are work-on-work;
# startup/finish OVERHEAD is a separate per-engine number the harness derives as (external total - work).
# ⛔ TIMESTAMPS GO TO STDERR (note) SO stdout STAYS BYTE-COMPARABLE and string-escape.ref still verifies unchanged.
# ⭐ BOTH UNITS ON PURPOSE (see prelude_rakudo.rakumod): work_us is the measurement, work_ms is the cross-check.
# wall_us()/wall_ms() are SCRIP builtins; the Rakudo arm gets them from prelude_rakudo.rakumod via -M, so
# this file is byte-identical on every engine. Mirrors corpus/benchmarks/prolog/bench/fib.pl.
my $t0 = wall_us(); my $m0 = wall_ms();
my $d = "\n" x 1000;
my $s = $d.trans(   ['"',  '\\',   "\b", "\f", "\n", "\r", "\t"]
                 => ['\"', '\\\\', '\b', '\f', '\n', '\r', '\t']);
my $t1 = wall_us(); my $m1 = wall_ms();
say $s.chars;
note("BENCH kernel=string-escape work_us=" ~ ($t1 - $t0) ~ " work_ms=" ~ ($m1 - $m0));
