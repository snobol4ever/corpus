sub f(Int $n) { return (1, 2).map: { $_ + $n } }
say f(3);
sub g { my $n = 10; return (1, 2, 3).grep: { $_ > $n - 9 } }
say g();
sub h($n) { (1, 2, 3).map({ $_ * $n }).join(",") }
say h(2);
sub k(@deck) { my $mid = 1; flat map { @deck[$_, $_ + $mid] }, 0 .. 0 }
say k([5, 6, 7]);
sub acc { my $a = 0; (1, 2, 3).map({ $a += $_ }); $a }
say acc();
sub nested($m) { (1, 2).map({ my $x = $_; (3, 4).map({ $x * $_ + $m }) }) }
say nested(1);
sub cnt { my $c = 0; (1, 2, 3).grep({ $c++; True }); $c }
say cnt();
sub pusher { my @a; (1, 2, 3).map({ @a.push($_ * 2) }); @a.elems }
say pusher();
sub pusher2 { my @a = 1; (1, 2, 3).map({ @a.push($_) }); @a }
say pusher2();
sub hset { my %s; (1, 2, 3).map({ %s{$_} = 1 }); %s.elems }
say hset();
sub copy($a) { (1, 2).map({ my $y = $a; $y + $_ }) }
say copy(5);
sub strc { my $s = ""; (1, 2, 3).map({ $s ~= $_ }); $s }
say strc();
sub srt($k) { (3, 1, 2).sort({ ($^a - $k).abs <=> ($^b - $k).abs }) }
say srt(2);
sub fst($t) { (1, 2, 3, 4).first({ $_ > $t }) }
say fst(2);
sub red($z) { (1, 2, 3).reduce({ $^a + $^b + $z }) }
say red(10);
sub rec($d) { $d == 0 ?? 0 !! (1,).map({ $_ + rec($d - 1) })[0] }
say rec(3);
sub st($n) { my $p = start { $n + 1 }; await $p }
say st(3);
