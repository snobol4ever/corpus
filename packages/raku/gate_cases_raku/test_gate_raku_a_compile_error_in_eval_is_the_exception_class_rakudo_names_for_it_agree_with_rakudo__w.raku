use MONKEY-SEE-NO-EVAL;
sub probe(Str $code) {
    try { EVAL $code; say 'NOERR'; CATCH { default { say .^name } } }
}
probe('/  /');
probe('/\\Qabc d?\\E/');
probe('constant ($a, $b) = (3, 4)');
probe('"foo" ~~ m/o{1,}/');
probe('/  + abc/');
probe('use v6.d; sub meow:sym«bar» {}');
probe('rand(3)');
probe('#`');
probe('if 1; 2');
probe('/abc\\z/');
probe('/\\Z/');
probe('my class C { my method foo { say "OMG" }; my method foo { say "WTF" } }');
probe('{my $x = 2;');
probe('my $a; ${a} = 5');
probe('for (my $i; $i <=3; $i++) { $i; }');
probe('my $<a>');
probe('/\\B/');
probe('/\\Aabc/');
probe('my Any :D $a');
probe('my $0');
probe('my $a::::b');
probe('.::');
probe('my class C { our method foo { say "OMG" }; our method foo { say "WTF" } }');
probe('my $x = ');
probe('/\\b/');
probe('rand()');
probe('unless 1 { } elsif 42 { }');
probe('$_ = "axbycz"; y/abc/def/');
probe('Foo->new');
probe('"$"');
probe(':2');

