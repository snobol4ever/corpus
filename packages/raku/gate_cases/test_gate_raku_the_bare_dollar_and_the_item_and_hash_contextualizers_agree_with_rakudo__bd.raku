say (1..4).map({ $++ }).join(",");
sub tick { $++ }
say tick(); say tick(); say tick();
sub twice { my $a = $++; my $b = $++; "$a$b" }
say twice(); say twice();
say ($ = 10) + ($ = 20);
say (1..3).map({ $ += $_ }).join(",");
my $c; say $c++; say $c++; say $c;
my $d; say $d--; say $d;
sub counter { state $n = 0; $n++ }
say counter(); say counter(); say counter();
say $(1,2,3).elems;
say %(a=>1,b=>2).keys.sort.join(",");
say %().elems;
say $(<a b>).WHAT;
say %(a=>1).WHAT;
say (a=>1).hash<a>;
say (1,2,3,4).hash.elems;
say 5.item;
say "abc".item;
say (1,2).item.elems;
say %(x=>5)<x>;
