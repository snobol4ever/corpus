sub outer(Int $n, Str $tag) {
    my $total = 0;
    my @seen;
    my sub add($x) { $total += $x * $n; @seen.push($x); }
    my sub label($y, $z = 2) { return "$tag-$y-$z-$total"; }
    my sub fact($k) { return $k <= 1 ?? 1 !! $k * fact($k - 1) * ($n - $n + 1); }
    add(1); add(2);
    for 1 .. 3 -> $i { add($i); }
    say label(7);
    say label(8, 9);
    say fact(5);
    say (1, 2, 3).map: { label($_) };
    say "total=$total seen=@seen[]";
    return $total;
}
say outer(3, "t");
sub counter(Int $start) {
    my $c = $start;
    my sub bump() { $c++; return $c; }
    my sub twice() { bump(); bump(); }
    twice();
    bump();
    return $c;
}
say counter(10);
sub deep($a) {
    my $b = 5;
    my sub mid($p) {
        my sub inner($q) { return $q + $a + $b; }
        return inner($p) * 2;
    }
    return mid(1);
}
say deep(100);
