sub apply(&f) { f(3) }
say apply({ $_ + 1 });
sub apply2(&f) { &f(3) }
say apply2({ $_ + 1 });
sub apply3(&f) { return &f(3) }
say apply3(-> $x { $x * 2 });
sub apply0(&f) { f() }
say apply0({ 7 });
sub inc($n) { $n + 1 }
sub twice(&f, $x) { f(f($x)) }
say twice(&inc, 5);
say twice(-> $v { $v * 2 }, 5);
my $r = &inc;
say $r(5);
say (1, 2, 3).map(&inc);
sub f($x) { $x * 10 }
sub g(&f) { f(2) }
say f(1);
say g({ $_ + 100 });
say f(3);
my &h = { $_ * 3 };
sub k(&h) { h(1) }
say k({ 9 });
say h(4);
sub lives(&c, $d = "") {
    my $ok = True;
    try { c(); CATCH { default { $ok = False } } }
    say "$d: $ok";
}
lives({ 1 }, "a");
lives({ die "x" }, "b");
