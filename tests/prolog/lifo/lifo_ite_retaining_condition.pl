c(L, R) :- ( member(X, L), X > 1 -> R = X ; R = none ).
main :- c([1, 2, 3], A), write(A), nl, c([0], B), write(B), nl, ( c([5, 6], C), write(C), nl, fail ; true ), write(done), nl.
:- initialization(main).
