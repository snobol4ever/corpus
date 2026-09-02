# Point Class Benchmarks

# Here's the runtime for the point class in seconds (YMMV). Lower is better:
# 0.22   Lua table      LuaJIT 2.0 git HEAD -O+sink
# 6600+  Perl6 class    Rakudo/MoarVM

# see point_class_add_README (in README.md) for more information
# SCRIP corpus import: iteration count reduced from upstream's 100_000_000 (see README.md)

use v6;

class Point {
    has num $.x;
    has num $.y;

    method add(Point $b) {
       return Point.new(:x($!x + $b.x), :y($!y + $b.y));
    }
}

# ⛔⭐ SELF-TIMED ON THE TWO-NUMBER BASIS (Lon 2026-08-30, RULES.md § THE TWO-NUMBER BENCHMARK BASIS).
# The bracket encloses the 1_000_000-iteration method-call loop -- the WORK. The class declaration and
# the two constructing .new calls are setup and sit outside it, as does the final print. Timestamps go
# to STDERR (note) so stdout stays byte-comparable and point_class_add.ref verifies unchanged. wall_us()/wall_ms()
# are SCRIP builtins; Rakudo gets them from prelude_rakudo.rakumod via -M, so this file is byte-identical
# on every engine.
my $t0 = wall_us(); my $m0 = wall_ms();
my int $i = 0;
my Point $a = Point.new(:x(1.5e0), :y(2.5e0));
my Point $b = Point.new(:x(3.25e0), :y(4.75e0));

while $i < 1000000 {
    $a = $a.add($b).add($b);
    $i = $i + 1;
}

my $t1 = wall_us(); my $m1 = wall_ms();
print $a.x, ' ', $a.y;
note("BENCH kernel=point_class_add work_us=" ~ ($t1 - $t0) ~ " work_ms=" ~ ($m1 - $m0));
