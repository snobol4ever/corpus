:- module(cm, []).
:- initialization(main).
inc(X, Y) :- Y is X + 1.
main :- numlist(1, , L), maplist(inc, L, L2), sum_list(L2, S), write(S), nl.
