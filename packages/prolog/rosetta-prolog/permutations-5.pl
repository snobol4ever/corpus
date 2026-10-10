insert(X, L, [X|L]).
insert(X, [Y|Ys], [Y|L2]) :- insert(X, Ys, L2).

permutation([], []).
permutation([X|Xs], P) :- permutation(Xs, L), insert(X, L, P).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines permutation/2 and never calls it; the driver prints the permutations of [1,2,3].
:- initialization(forall(permutation([1, 2, 3], P), writeln(P))).
