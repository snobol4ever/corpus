multi sub g(Int $x) { "int $x" }
multi sub g(Str $x) { "str $x" }
say g(3);
say g("a");
class A {
  multi method m(Int $x) { "A int $x" }
  multi method m(Str $x) { "A str $x" }
}
say A.new.m(4);
say A.new.m("z");
class Pt {
  has $.x; has $.y;
  method new($x, $y) { self.bless(x => $x, y => $y) }
  method add($o) { Pt.new($.x + $o.x, $.y + $o.y) }
}
my $p = Pt.new(0, 0);
for 1..200 { $p = $p.add(Pt.new(1, 2)) }
say $p.x, " ", $p.y;
sub named(:$a, :$b = 3) { $a + $b }
say named(a => 4);
