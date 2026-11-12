use Test;
plan 2;
ok 1, "a";
ok (1 ~~ 2) , "b";
sub f { fail "x" }
ok f(), "c";
