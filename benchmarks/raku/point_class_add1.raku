# Point Class Benchmarks

# Here's the runtime for the point class in seconds (YMMV). Lower is better:
# 0.22   Lua table      LuaJIT 2.0 git HEAD -O+sink
# 2500+  Perl6 class    Rakudo/MoarVM

# see point_class_add_README (in README.md) for more information
# SCRIP corpus import: iteration count reduced from upstream's 100_000_000 (see README.md)

use v6;

class Point {
    has num $.x;
    has num $.y;

    submethod BUILD(num :$x, num :$y ) {
        $!x = $x;
        $!y = $y;
    }

    method add(Point $b) {
       return self.bless(:x($!x + $b.x), :y($!y + $b.y));
    }
}

my int $i = 0;
my Point $a = Point.new(:x(1.5e0), :y(2.5e0));
my Point $b = Point.new(:x(3.25e0), :y(4.75e0));

while $i < 1000000 {
    $a = $a.add($b).add($b);
    $i = $i + 1;
}

print $a.x, ' ', $a.y;
