go :-
  multiply(5, 2, P),
  format("The product is ~d.~n", [P]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: multiply/3 is function-definition-1's and this block's go/0 and function-definition-3's test_multiply/0 call it, so the driver takes function-definition-1 over (CEO-1613), includes -3, calls go/0 (the product of 5 and 2) and prints whether test_multiply/0 holds (its comments: the first check passes, the second does not).
:- include('function-definition-1.pl').
:- include('function-definition-3.pl').
:- initialization((go, (test_multiply -> R = true ; R = false), format("test_multiply: ~w~n", [R]))).
