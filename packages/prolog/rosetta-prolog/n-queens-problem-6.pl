not_diagonal(X, N) :-
  maplist(plus, X, N, Z1), maplist(plus, X, Z2, N), is_set(Z1), is_set(Z2).

queens(N, Qs) :-
  numlist(1, N, P), findall(Q, (permutation(P, Q), not_diagonal(Q, P)), Qs).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines queens/2 and never calls it; the driver prints the solutions for N = 8 and their count.
:- initialization((queens(8, Qs), forall(member(Q, Qs), format("~w~n", [Q])), length(Qs, N), format("~w solutions~n", [N]))).
