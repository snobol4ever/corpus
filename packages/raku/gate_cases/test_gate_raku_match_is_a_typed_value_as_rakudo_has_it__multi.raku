for "a1b22" ~~ m:g/(\d+)/ { say $_; say $_.from }
my @ms = "a1b22".match(/\d+/, :g); say @ms.raku; say @ms.elems; say @ms[1].Str;
say "abc".match(/b/).from; say "abc".match(/b/);
say ("a1b22" ~~ m:g/\d+/).elems; say ("a1b22" ~~ m:g/\d+/).join(",");
