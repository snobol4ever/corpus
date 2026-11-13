my $s = gather { for 1..3 { say "producing $_"; take $_ } };
say "before";
for @$s -> $x { say "got $x" }
