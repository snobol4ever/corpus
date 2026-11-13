say 3 !< 2; say 3 !== 3; say "a" !eq "b"; say 1 !<= 2; say 3 !~~ 3; say 2 !> 3; say 5 !>= 5;
say (1,2) Z+ (10,20); say <a b> Z~ <c d>; say (1,2) X* (3,4); say (1,2) Z=> (3,4); say 1,2 Zcmp 3,4; say (1,2) Zcmp (1,3);
say (1,2) Z+ (3,4) Z+ (5,6); say <a b> X~ <c d>; say (1,2) X- (3,4); say (3,1,2) Zmax (2,2,2);
say (1,2) Z (3,4); say (1,2) X (3,4); say (1,2,3) Z <a b>; say (1,2) Z (3,4) Z (5,6); say <a b> Z 1..2;
my %h = (1,2) Z=> (3,4); say %h;
my @r = (1,2) Z (3,4); say @r.elems; say @r; say @r[1]; say @r[0][1];
for (1,2) Z (3,4) { say $_ }
for (1,2) Z (3,4) -> $a, $b { say "$a $b" }
for (1,2) Z (3,4) -> ($a, $b) { say "$a $b" }
for ((1,3),(2,4)) -> ($a, $b) { say "$a $b" }
my @p = (1,3),(2,4); for @p -> ($x, $y) { say $x * $y }
for (1,2) X (3,4) -> ($a, $b) { say "$a|$b" }
for (1,2) Z <a b> -> ($n, $l) { say "$n$l" }
for (1,2,3,4) -> $a, $b { say "$a $b" }
for <a b>.kv -> $i, $v { say "$i:$v" }
say 7 +> 1; say 8 +> 2; say -8 +> 1; say 255 +> 4; say 7 +< 1;
