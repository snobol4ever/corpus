say "" == 0;
say " " == 0;
say "" < 1;
my $e = "";
say $e == 0;
say "\t\n" == 0;
say " 12 " == 12;
say "" != 0;
my $w = False;
given "" { when 1 { $w = True } }
say $w;
my $v = ' ';
given $v { when 0 { say "zero" }; default { say "other" } }
try { say "abc" == 0 };
say $!.^name;
my $z = try { "abc" < 1 };
say $z.defined;
if "" == 0 { say "cond-true" } else { say "cond-false" }
say "after";
