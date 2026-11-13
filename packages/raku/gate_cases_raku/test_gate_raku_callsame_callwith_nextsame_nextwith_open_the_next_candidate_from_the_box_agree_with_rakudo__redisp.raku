class A { method g($x) { "A($x)" }; method h() { "A.h" } }
class B is A { method g($x) { "B($x)+" ~ callsame() }; method h() { "B.h>" ~ nextsame() } }
class C is B { method g($x) { "C($x)+" ~ callwith($x * 10) } }
say C.new.g(2);
say B.new.h;
class D is A { method g($x) { my $r = callsame; "D:" ~ $r } }
say D.new.g(7);
class E is A { method g($x) { "E" ~ nextwith($x + 1) } }
say E.new.g(1);
class F { method g() { (callsame) // "none" } }
say F.new.g;
class Base { has $.n; method describe() { "Base n=" ~ $!n } }
class Mid is Base { method describe() { "Mid/" ~ callsame() } }
class Top is Mid { method describe() { "Top/" ~ callsame() } }
say Top.new(n => 4).describe;
class Acc { method add($a, $b) { $a + $b } }
class Acc2 is Acc { method add($a, $b) { 100 + callwith($a * 2, $b * 2) } }
say Acc2.new.add(3, 4);
my $total = 0;
for 1..300 -> $i { $total += C.new.g($i).chars; $total += Top.new(n => $i).describe.chars }
say $total;
