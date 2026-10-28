my $p = start { 42 }; say await $p;
my $c = Channel.new; $c.send(7); say $c.receive;
my @got; Supply.from-list(1, 2, 3).tap({ @got.push($_) }); say @got;
react { whenever Supply.from-list(1..2) { say "w$_" } }
my @ps = (^3).map({ start { $_ * 2 } }); await Promise.allof(@ps); say @ps.map(*.result).join(",");
