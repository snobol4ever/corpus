my $s = "a1b22c333"; $s ~~ s:g/(\d+)/{ $0.chars }/; say $s;
my $t = "hello world"; $t ~~ s/(\w+)/{ $0.uc }/; say $t;
my $u = "abc"; $u ~~ s/x/{ "y" }/; say $u;
my $w = "x1y2"; my $r = $w ~~ s:g/(\d)/<$0>/; say $w; say so $r;
sub f($n) { my $q = "aaa"; $q ~~ s:g/a/{ $n }/; $q }
say f(7);
say S:g/o/0/ given "foo boo";
my $k = 0; my $v = "a b c"; $v ~~ s:g/\w/{ ++$k }/; say $v; say $k;
say 7 ~~ { $_ > 5 };
say "abc" ~~ { .chars == 3 };
say 5 ~~ { 42 };
my &big = { $_ > 3 }; say 5 ~~ &big; say 2 ~~ &big;
sub lim { my $l = 4; say 5 ~~ { $_ > $l } }
lim();
given 7 { when { $_ > 5 } { say "big" }; default { say "small" } }
given 2 { when { $_ > 5 } { say "big" }; default { say "small" } }
my @r = (1..10).grep({ $_ ~~ { $_ %% 3 } }); say @r;
my &tri = { $_ * 3 }; say (1,2,3).map(&tri);
my &odd = { $_ % 2 }; say (1..6).grep(&odd); say (4,5,6).first(&odd);
my &add = { $^a + $^b }; say (1..5).reduce(&add);
my $n = 0; for 1..200 -> $i { my $x = "a$i"; $x ~~ s:g/(\d)/{ $0 + 1 }/; $n += $x.chars; $n += (($i ~~ { $_ %% 2 }) ?? 1 !! 0) }
say $n;
