my @a = 2, 4;
say $(my @c = @a; @c.push(9); @c);
say $(my $x = 5; $x + 1);
my @d = @a;
say (@d»++; @d).elems;
say $(my @e = @a; @e»++; @e);
