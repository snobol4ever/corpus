my $p = a => 1;
say $p.key;
say $p.value;
say $p;
my %h = x => 10, y => 20;
for %h.pairs.sort -> $q { say $q.key ~ "=" ~ $q.value }
say %h.pairs.sort;
say %h.kv.sort;
say "abab".trans(['a','b'] => ['x','y']);
say (1 => 2).kv;
my @ps = (c => 3, a => 1);
say @ps.sort.map({ .key }).join(",");
