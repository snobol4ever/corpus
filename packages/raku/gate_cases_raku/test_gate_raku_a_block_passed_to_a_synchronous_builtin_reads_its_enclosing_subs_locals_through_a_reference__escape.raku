sub f($n) { my &g = { $n + 1 }; g() }
say f(3);
sub f2($n) { return { $n + 1 } }
say f2(3)();
sub callit(&c) { c() }
sub f3($n) { callit({ $n + 1 }) }
say f3(3);
sub counter() { my $n = 0; return sub { $n += 1; $n } }
my $c = counter(); say $c(); say $c(); say $c(); my $d = counter(); say $d(); say $c();
sub mk($k) { return -> $x { $x + $k } }
my $f = mk(10); my $g = mk(20); say $f(1); say $g(1);
sub two() { my $n = 0; return (sub { $n += 1 }, sub { $n }) }
my ($inc, $get) = two(); $inc(); $inc(); say $get();
sub arrc() { my @a; return { @a.push($_); @a.elems } }
my $p = arrc(); $p(5); say $p(6);
sub hashc() { my %h; return -> $k { %h{$k} = 1; %h.elems } }
my $q = hashc(); $q('a'); say $q('b');
sub mutparam($n) { my $v = $n; return sub { $v += 1; $v } }
my $m = mutparam(10); $m(); say $m();
sub nest($a) { my $t = 0; return -> $b { my $r = $a + $b; my $s = sub { $t += $r; $t }; $s } }
my $nn = nest(1)(2); $nn(); say $nn();
sub many() { my @fs; for 1..50 -> $i { @fs.push(mk($i)) }; @fs.map({ $_(1) }).sum }
say many();
