my $f = -> $x { $x + 1 };
say $f(1);
my &g = sub ($a, $b) { $a * $b };
say g(6, 7);
sub h($x) { $x * 10 }
say (1, 2, 3).map(&h);
say (3, 1, 2).sort({ $^a <=> $^b });
say (1, 2, 3, 4).grep({ $_ %% 2 }).map({ $_ * $_ });
class P {
    has $.v = 3;
    method m($x) { $x * $!v }
    method n($x, $y) { $x + $y + $!v }
}
class Q is P {
    method m($x) { callsame() + 1 }
}
say P.new.m(4); say Q.new(v => 5).m(2); say P.new.n(1, 2);
multi sub mm(Int $x) { "int $x" }
multi sub mm(Str $x) { "str $x" }
say mm(5); say mm("a");
my @subs = (sub ($x) { $x + 1 }, sub ($x) { $x * 2 });
say @subs[0](5) + @subs[1](5);
say (1, 2, 3).reduce(-> $a, $b { $a + $b });
