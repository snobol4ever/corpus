class Vec { has $.x; has $.y; }
multi sub infix:<+>(Vec $a, Vec $b) { Vec.new(x => $a.x + $b.x, y => $a.y + $b.y) }
multi sub infix:<*>(Vec $a, $n) { Vec.new(x => $a.x * $n, y => $a.y * $n) }
multi sub infix:<==>(Vec $a, Vec $b) { $a.x == $b.x && $a.y == $b.y }
class Box { has $.n; }
multi sub infix:«<»(Box $a, Box $b) { $a.n < $b.n }
class Animal { has $.size; }
class Dog is Animal { }
multi sub infix:<->(Animal $a, Animal $b) { $a.size - $b.size }
my $p = Vec.new(x => 1, y => 2);
my $q = Vec.new(x => 10, y => 20);
my $r = $p + $q;
say $r.x, " ", $r.y;
my $s = $p * 3;
say $s.x, " ", $s.y;
say $p == $q;
say $p == Vec.new(x => 1, y => 2);
say Box.new(n => 3) < Box.new(n => 7);
say Box.new(n => 9) < Box.new(n => 7);
if Box.new(n => 1) < Box.new(n => 2) { say "less" } else { say "not less" }
say Dog.new(size => 30) - Dog.new(size => 12);
say 2 + 3, " ", 7 - 2, " ", 2 * 4, " ", 1/3 + 1/6, " ", 3 < 4, " ", "a" ~ "b";
my $acc = Vec.new(x => 0, y => 0);
for 1..200 -> $i { $acc = $acc + Vec.new(x => $i, y => 1) }
say $acc.x, " ", $acc.y;
