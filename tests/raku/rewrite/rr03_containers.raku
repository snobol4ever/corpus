my $a = 1; my $b := $a; $b = 2; say $a;
sub incr($x is rw) { $x++ }; incr($a); say $a;
say VAR($a).^name;
my @l = 1, 2; my $c = 9; @l[0] := $c; $c = 10; say @l[0];
my $ro := 5; try { $ro = 6; CATCH { default { say "ro" } } };
say $ro;
my %h; %h<k> = 1; my $hv := %h<k>; $hv = 2; say %h<k>;
