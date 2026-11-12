sub f { @_.elems }
say f(1, 2, 3);
sub g { say @_; }
g(4, 5);
sub h { my $n = 0; for @_ -> $x { $n += $x }; $n }
say h(1, 2, 3);
say h();
sub k($a) { $a }
say k(7);
