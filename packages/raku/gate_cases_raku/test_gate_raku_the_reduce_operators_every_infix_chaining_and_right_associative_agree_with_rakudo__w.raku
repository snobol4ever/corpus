say [+] 1..4; say [-] 10,3,2; say [*] 1..5; say [/] 8,2,2; say [**] 2,3,2; say [%] 10,4,3; say [~] <a b c>; say [x] "a",3; say [min] 3,1,2; say [max] 3,1,2;
say [<] 1,2,3; say [<] 3,2,1; say [==] 1,1,1; say [eq] <a a b>; say [<=] 1,2,2; say [!=] 1,2,3; say [!=] 1,1; say [>] 3,2,1; say [lt] <a b c>; say [<] 1; say [<] ();
say [&&] 1,2,3; say [||] 0,0,5; say [//] Any,3,4; say [gcd] 12,18; say [lcm] 4,6; say [+<] 1,2; say [div] 20,3; say [mod] 20,3;
say [,] 1,2,3; say [=>] 1,2,3; say [R-] 1,2,3; say [R/] 2,8; say [R**] 2,3,2;
say [+] (); say [*] (); say [~] ();
my @a = 5,3,1; say [+] @a; say [*] @a; say [<] @a; say [>] @a; say [+] [1,2],[3,4];
say [~~] 1,1,1; say [===] 1,1;
say Any // 3; say (Int) // 5; say 0 // 5; say Nil // 6; say defined(Any); say defined(5); say Any.defined;
