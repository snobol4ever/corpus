sub fib($n) { return $n < 2 ?? $n !! fib($n - 1) + fib($n - 2); }
say fib(18);
sub add2($a, $b) { $a + $b }
sub add3($a, $b, $c) { $a + $b + $c }
sub add4($a, $b, $c, $d) { $a + $b + $c + $d }
sub add5($a, $b, $c, $d, $e) { $a + $b + $c + $d + $e }
sub add7($a, $b, $c, $d, $e, $f, $g) { $a + $b + $c + $d + $e + $f + $g }
say add2(1, 2); say add3(1, 2, 3); say add4(1, 2, 3, 4); say add5(1, 2, 3, 4, 5); say add7(1, 2, 3, 4, 5, 6, 7);
say add2(add2(1, 2), add3(3, 4, 5));
sub nothing() { 42 }
say nothing();
sub dflt($x, $y = 5) { "$x $y" }
say dflt(1); say dflt(1, 2);
sub opt($x, $y?) { $x.defined ~ $y.defined }
say opt(1); say opt(1, 2);
sub ack($m, $n) { $m == 0 ?? $n + 1 !! $n == 0 ?? ack($m - 1, 1) !! ack($m - 1, ack($m, $n - 1)) }
say ack(2, 3);
sub depth($n) { $n == 0 ?? 0 !! 1 + depth($n - 1) }
say depth(3000);
