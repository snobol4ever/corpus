permutation_sort(L,S) :- permutation(L,S), sorted(S).

sorted([]).
sorted([_]).
sorted([X,Y|ZS]) :- X =< Y, sorted([Y|ZS]).

permutation([],[]).
permutation([X|XS],YS) :- permutation(XS,ZS), select(X,YS,ZS).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines permutation_sort/2 and never calls it; the driver sorts one eight-element sample list (permutation sort is n!, so kept short) and prints it.
:- initialization((permutation_sort([4, 65, 2, -31, 0, 99, 83, 1], S), format("~w~n", [S]))).
