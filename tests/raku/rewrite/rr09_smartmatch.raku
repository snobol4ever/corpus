say 5 ~~ Int; say so "abc" ~~ /b/; say 5 ~~ * > 3; say 5 ~~ 1..10; say so 2 ~~ 1|2|3;
given 7 {
    when 1..5 { say "low" }
    when * > 5 { say "high" }
}
say so any(1, 2, 3) > 2; say so (1|2) + 1 ~~ 2|3; say so all(1, 2) < 3;
my @a = 1, 2, 3; say @a ~~ [1, 2, 3]; say "x" ~~ "x";
say (1, 2, 3).grep(1|3).elems;
