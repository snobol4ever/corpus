sub f($s) { my $t = $s ~ "x"; return $t ~ "y" }
my $a = "ab"; my $b = f($a); say $a; say $b;
sub g($s) { my $u = $s ~ "1"; my $v = $s ~ "2"; return $u ~ $v }
say g("q"); say g("rs");
my $acc = "";
for 1..5 { $acc = $acc ~ $_ }
say $acc;
sub rep($s, $n) {
    my $r = "";
    for 1..$n { $r = $r ~ $s }
    return $r;
}
say rep("ab", 4); say rep("z", 0);
sub keep($s) { my $t = $s; my $w = $s ~ "!"; return $t ~ $w }
say keep("hi");
