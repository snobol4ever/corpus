my @l;
for 1..100000 -> $i { @l.push([$i, "abcdefgh"]) }
say @l.elems;
say @l[99999][0];
my @m = 1, 2;
my @n = @m;
@m.push(3);
say @m;
say @n;
my @q;
@q.push(1, 2, 3);
@q.push((7, 8));
say @q;
say @q.elems;
sub f(@a) { @a.push(99) }
f(@m);
say @m;
my $r = @m;
@m.push(5);
say $r;
my @big;
for 1..50000 -> $i { @big.append($i) }
say @big.elems;
say @big[49999];
