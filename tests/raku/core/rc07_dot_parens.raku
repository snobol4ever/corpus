my @subs = (sub ($x) { $x + 1 }, sub ($x) { $x * 2 });
say @subs.map({ .(5) });
say @subs[0].(10), " ", @subs[1].(10);
my %h = f => sub ($a) { $a ~ "!" };
say %h<f>.("hi");
class C { has $.cb; method run($v) { $!cb.($v) } }
say C.new(cb => { $_ ~ "?" }).run("a");
