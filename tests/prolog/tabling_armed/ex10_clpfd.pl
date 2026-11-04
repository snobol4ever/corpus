:- use_module(library(clpfd)).
:- table d/1, e/1.
d(X) :- e(Y), Y < 5, X is Y + 1.
d(X) :- d(Y), Y < 20, X is Y + 5.
d(0).
e(X) :- d(Y), Y < 5, X is Y + 1.
main :- findall(X, d(X), L), msort(L, S), write(S), nl.
:- initialization(main).
