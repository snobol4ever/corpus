# Point Class Benchmarks

# Here's the runtime for the point class in seconds (YMMV). Lower is better:
# 0.22   Lua table      LuaJIT 2.0 git HEAD -O+sink
# 420+   Perl6 class    Rakudo/MoarVM

# see point_class_add_README (in README.md) for more information
# SCRIP corpus import: iteration count reduced from upstream's 100_000_000, and
# 'use nqp;' added -- upstream no longer compiles on current Rakudo without it
# (see README.md)

use v6;
use nqp;

class Point {
    has num $.x;
    has num $.y;
    method new(num $x, num $y) {
        my Point $self := nqp::create(self);
        nqp::bindattr_n($self, Point, '$!x', $x);
        nqp::bindattr_n($self, Point, '$!y', $y);

        $self;
    }

    method add(Point $b) {
        Point.new($!x + $b.x, $!y + $b.y);
    }
}
my int $i = 0;
my Point $a = Point.new(1.5e0, 2.5e0);
my Point $b = Point.new(3.25e0, 4.75e0);

while $i < 1000000 {
    $a = $a.add($b).add($b);
    $i = $i + 1;
}

print $a.x, ' ', $a.y;
