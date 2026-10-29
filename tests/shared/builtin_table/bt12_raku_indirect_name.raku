my $m = "chars";
say "abcd"."$m"();
$m = "uc";
say "abcd"."$m"();
my $f = &::("uc");
say $f("xyz");
say &::("chars")("hello");
my @names = <flip uc lc>;
for @names -> $n { say "AbC"."$n"() }
sub mysub($x) { "mysub:" ~ $x }
say &::("mysub")("q");
my $s = "mysub";
say &::($s)("r");
