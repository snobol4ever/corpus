my @a;
for 1..3 -> $i { @a.push({ $i * 10 }) }
say @a.map({ $_() }).join(",");
my @b;
for 1..3 { my $j = $_ * 2; @b.push(-> { $j }) }
say @b.map({ $_() }).join(",");
my $k = 0; my @u;
while $k < 3 { my $m = $k; @u.push({ $m + 100 }); $k++ }
say @u.map({ $_() }).join(",");
my @c;
for 1..3 -> $i { my $n = $i; @c.push({ $n++ }) }
say @c.map({ $_() }).join(",");
say @c.map({ $_() }).join(",");
my @h;
for 1..3 -> $i { my %m; %m<a> = $i; @h.push({ %m<a> * 2 }) }
say @h.map({ $_() }).join(",");
my @g;
for 1..3 -> $i { my @r = $i, $i + 1; @g.push({ @r.push(9); @r.elems }) }
say @g.map({ $_() }).join(",");
say @g.map({ $_() }).join(",");
my @n;
for 1..3 -> $i { for 1..2 -> $j { @n.push(-> { $i * 10 + $j }) } }
say @n.map({ $_() }).join(",");
my @s;
for 1..3 -> $i { my @r = (1, 2, 3).map({ $_ * $i }); @s.push({ @r.join("-") }) }
say @s.map({ $_() }).join(",");
my @t;
for 1..2 -> $i { @t.push({ (1, 2).map({ $_ + $i }).join("+") }) }
say @t.map({ $_() }).join(",");
my @w;
my $q = 0;
while $q < 3 { my $z = $q * 3; $z += 1; @w.push({ "z=$z q=$q" }); $q++ }
say @w.map({ $_() }).join(",");
for 1..2 -> $i { my @l = (1, 2, 3).grep({ $_ > $i }); say @l.join(" ") }
my @v;
for <a b c> -> $s { @v.push({ $s ~ "!" }) }
say @v.map({ $_() }).join(",");
my $p = 0; my $f = { $p++ };
say $f(); say $f(); say $p;
my $n2 = 5; my $h2 = { $n2 = $n2 + 1; $n2 };
say $h2(); say $h2(); say $n2;
my $tot = 5; my @r2 = (1, 2).map({ $tot += $_ });
say @r2; say $tot;
my %ph = a => 1, b => 2;
say %ph.keys.sort.map({ $^k ~ ':' ~ %ph{$k} }).join(' ');
say (1, 2, 3).map({ $^a + $a * 2 });
my $adder = -> $b { -> $c { $b + $c } };
say $adder(1)(2);
my $inner = { -> $c { $c + 1 } };
say $inner()(2);
my $keep = { my $r = 7; sub { $r } };
say $keep()();
