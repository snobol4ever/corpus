my @list = 1...10;
say @list.first({ $_ > 3 });
say @list.first({ $_ > 3 }, :k);
say @list.first({ $_ > 3 }, :kv);
say @list.first({ $_ > 3 }, :p);
say @list.first({ $_ > 3 }, :v);
say @list.first({ $_ > 3 }, :end);
say @list.first({ $_ > 3 }, :end, :k);
say @list.first({ $_ > 3 }, :end, :kv);
say @list.first({ $_ > 3 }, :end, :p);
say @list.first({ $_ > 3 }, :!end, :!k);
say @list.first({ $_ > 30 }, :k).defined;
say @list.first({ $_ > 30 }, :end, :kv).defined;
say (first { $^a % 2 }, @list, :end, :kv);
say (first { $^a % 2 }, 1, 2, 3, 4, 5, 6, 7, 8, :end, :kv);
say (first { $^a % 2 }, @list, :k);
say (first { $^a % 2 }, |@list, :end, :p);
say (first { $^a % 2 }, @list);
say first(Int, 'a', 'b', 3, 4, :k);
say first(Str, 'a', 'b', 3, 4, :end, :kv);
my @fancy = 1, 2, "Hello", 4.Num;
say @fancy.first(Str, :kv);
say @fancy.first(Str, :end, :kv);
say @fancy.first(Int, :end, :kv);
say @fancy.first(Int, :end, :!kv);
my @w = <Philosopher Goblet Prince>;
say @w.first(/o/, :kv);
say @w.first(/o/, :end, :kv);
say @w.first(/ob/, :end, :kv);
say @w.first(/l.*o/, :end, :kv);
say @w.first(/zz/, :k).defined;
say (True, False, Int).first(Bool, :end, :kv);
say first(Bool, True, False, Int, :end, :kv);
say @list.first(5, :kv);
say @list.first(5, :end, :p);
say @list.first("7", :k);
{
    my $count = 0;
    say @list.first({ $count++; $^x % 2 }, :end, :kv);
    say $count;
}
{
    my $count = 0;
    my $m = sub (Int $x) { $count++; $x > 5 };
    say @list.first($m, :p);
    say $count;
}
sub h($a, $b, :$k, :$z) { say "$a $b ", $k.gist, ' ', $z.defined ?? $z.gist !! 'unset' }
h(1, 2, :k, :z);
h(1, 2, :z, :k);
h(1, 2, :k);
