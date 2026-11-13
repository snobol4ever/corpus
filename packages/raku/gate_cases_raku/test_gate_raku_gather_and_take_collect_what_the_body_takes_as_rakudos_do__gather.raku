my @a = gather { take 1; take 2; for 3..4 { take $_ * 2 } };
say @a;
say gather { take 5; take 6 };
say (gather { take $_ for 1..3 }).elems;
my @b = gather for 1..3 { take $_ + 10 }
say @b;
sub evens(Int $n) { return gather { for 1..$n { take $_ if $_ %% 2 } } }
say evens(9);
sub squares(Int $n) { gather { my $k = 0; (1..$n).map: { take $_ * $_; $k++ }; take $k } }
say squares(4);
my @nested = gather { for 1..2 -> $i { take gather { take $i; take $i * 10 } } };
say @nested.elems;
say @nested[1];
for gather { take "x"; take "y" } -> $c { print "[$c]" }
print "\n";
say gather { take $_ for 1..5 }.sum;
my $n = 3;
say gather { for 1..$n { take $_ ** 2 } }.join(",");
