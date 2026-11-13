sub mk($n) { my @a = (1..$n).map({ "s$_" }); return @a }
sub tot($xs, $k) {
    my $c = 0;
    for $xs.list -> $x { $c += $x.chars }
    return $c + $k;
}
sub walk($n, $acc) { $n == 0 ?? $acc !! walk($n - 1, $acc ~ "k") }
my $sum = 0;
for 1..40 {
    my @x = mk(20);
    $sum += tot(@x, $_);
}
say $sum;
say walk(200, "").chars;
sub nest($d, $a, $b) { $d == 0 ?? "$a$b" !! nest($d - 1, $b ~ "L", $a ~ "R") }
say nest(30, "a", "b").chars;
my @r = (1..30).map(-> $i { tot(mk(5), $i) });
say @r.sum;
