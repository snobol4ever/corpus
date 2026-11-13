sub add($a, $b) {
    return $a + $b;
}
sub main() {
    my $s = 0;
    for 1..5 { $s = add($s, 2); }
    say($s);
}
