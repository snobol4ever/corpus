my $r = try { EVAL("1", :lang<Perl5>) };
say $r.defined;
say EVAL("2 + 3", :lang<Raku>);
say EVAL("4", :lang<perl6>);
try { EVAL("1", :lang<Foo>) };
say $!.^name;
say $!.message;
sub g(*@a, *%h) { say %h.raku; say @a.raku }
g(1, :x<y>);
g(:x<y>, 2);
sub f($a, :$lang) { say $lang.raku }
f(:lang<P>, 1);
