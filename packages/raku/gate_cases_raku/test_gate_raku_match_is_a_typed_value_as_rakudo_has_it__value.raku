my $m = "abcb" ~~ /(b)(c)/;
say $m.WHAT; say $m.from; say $m.to; say $m.pos; say $m.orig; say $m.Str; say $m.gist; say $m.raku;
say $m[0].from; say $m[1]; say $m.elems; say $m.list.elems; say $m.hash.elems;
my $n = "2024-10-07" ~~ /$<y>=(\d+)'-'$<m>=(\d+)/;
say $n; say $n<y>; say $n<m>.from; say $n.keys.sort.join(","); say $n.hash.elems;
my $q = "aaa" ~~ /(a)+/; say $q; say $q[0].elems; say $q[0][1].from;
my $s = "x" ~~ /y/; say so $s; say ("x" ~~ /y/) ?? "yes" !! "no";
say ("abcd" ~~ /b/).prematch; say ("abcd" ~~ /b/).postmatch;
say ("héllo wo" ~~ /w/).from; say ("héllo wo" ~~ /w/).to;
