sum([],0).
sum([H|T],X) :- sum(T,Y), X is H + Y.
product([],1).
product([H|T],X) :- product(T,Y), X is H * X.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines sum/2 and product/2 and never calls them; product/2 evaluates X is H * X with X unbound (an instantiation error), so the driver prints sum/2 of a sample array only.
:- initialization((L = [1, 2, 3, 4, 5], sum(L, S), format("sum of ~w: ~w~n", [L, S]))).
