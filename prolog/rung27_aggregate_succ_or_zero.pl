:- initialization(main).
main :-
    succ_or_zero(3, X), write(X), nl,
    succ_or_zero(1, Y), write(Y), nl,
    succ_or_zero(0, Z), write(Z), nl.
succ_or_zero(0, 0) :- !.
succ_or_zero(N, M) :- M is N - 1.
