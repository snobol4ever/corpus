my %moves;
my @log;
sub record($from, $to) {
    %moves{"$from to $to"}++;
    @log.push("$from to $to");
}
sub hanoi(Int $n, $a, $b, $c) {
    return if $n == 0;
    hanoi($n - 1, $a, $c, $b);
    record($a, $b);
    say "Move disk $n from $a to $b";
    hanoi($n - 1, $c, $b, $a);
}
hanoi(3, 'A', 'B', 'C');
say "moves: ", @log.elems;
for %moves.keys.sort -> $k {
    say "$k: ", %moves{$k};
}
