say (1, 2).map({ Belt => $_ });
say (1, 2).map({ "k$_" => $_ });
my %h = { a => 1, b => 2 };
say %h<a>;
my $f = { a => $^x };
say $f(3);
say { a => 1 }.WHAT;
my %g = (1, 2).map({ $_ => 10 * $_ });
say %g<2>;
sub h { { a => 1 } }
say h().WHAT;
