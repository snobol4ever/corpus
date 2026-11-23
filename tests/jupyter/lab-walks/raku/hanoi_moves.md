# Towers of Hanoi with a record of the moves (Raku)

From rosetta-raku towers-of-hanoi: the moves are said as they are made, and a record of each move is kept in a hash and a list.

```raku
my %moves;
my @log;
sub record($from, $to) {
    %moves{"$from to $to"}++;
    @log.push("$from to $to");
}
```

```raku
sub hanoi(Int $n, $a, $b, $c) {
    return if $n == 0;
    hanoi($n - 1, $a, $c, $b);
    record($a, $b);
    say "Move disk $n from $a to $b";
    hanoi($n - 1, $c, $b, $a);
}
```

```raku
hanoi(3, 'A', 'B', 'C');
say "moves: ", @log.elems;
for %moves.keys.sort -> $k {
    say "$k: ", %moves{$k};
}
```
