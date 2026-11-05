my @a = 1..6;
say @a.grep({ $_ ~~ { $_ %% 3 } });
say @a.first({ $_ > 4 });
say @a.grep(-> $x { $x ~~ -> $y { $y > 2 } });
say @a.map({ $_ ~~ { $_ > 3 } ?? "y" !! "n" }).join;
say "abc" ~~ { .chars == 3 };
