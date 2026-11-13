sub meow { $^a };
say meow(5);
sub plus1 { $^a + 1 }
say plus1(5);
sub cat2 { $^b ~ $^a }
say cat2("x", "y");
sub sq { $^x * $^x }
say sq(7);
my sub minus1 { $^a - 1 }
say minus1(8);
sub three { $^c ~ $^a ~ $^b }
say three("a", "b", "c");
sub both { $^a + $a }
say both(4);
sub outer { my $f = { $^a * 2 }; $f($^a) }
say outer(6);
sub pair { $^a, $^b }
say pair(3, 4);
say pair(3, 4).elems;
sub g1 { 1, 2 }
say g1();
sub g2 { return 1, 2 }
say g2();
sub g3($a) { $a, $a + 1 }
say g3(3);
my @r = g3(3);
say @r.elems;
sub g4 { my $x = 5; $x, 7 }
say g4();
sub g5 { (1, 2) }
say g5();
sub g6 { return 7 }
say g6();
sub g7 { return (1, 2), 3 }
say g7().elems;
my $f1 = { 1, 2 };
say $f1();
my $f2 = -> $a { $a, 2 };
say $f2(5);
for 1, 2 { say $^a }
for 1, 2, 3, 4 { say $^a + $^b }
for 1, 2, 3, 4 { say $^b - $^a }
for 1 .. 3 { my $y = $^a * 2; say $y }
my $t;
for 1, 2 { $t = $^a }
say $t;
my @acc;
for 1, 2 { @acc.push($^a * 3) }
say @acc;
for 1, 2 { for 5, 6 { say $^a } }
my @v = 3, 1, 2;
my @s = sort { $^a <=> $^b }, @v;
say @s;
say sort({ $^b <=> $^a }, @v);
say sort -> $x, $y { $y <=> $x }, @v;
say sort { -$_ }, @v;
my @w = <b a c>;
say sort { $^a cmp $^b }, @w;
say sort { $^b cmp $^a }, @w;
