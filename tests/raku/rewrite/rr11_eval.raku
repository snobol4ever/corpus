use MONKEY-SEE-NO-EVAL;
say EVAL "1 + 2";
my $x = 5; say EVAL '$x * 2';
my $code = 'sub { $^a + 1 }'; my &f = EVAL $code; say f(41);
