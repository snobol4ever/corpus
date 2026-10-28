d(X) :- ( member(X, [1, 2]) ; member(X, [3, 4]) ), X > 1.
main :- findall(X, d(X), L), write(L), nl, ( d(Y), write(Y), nl, fail ; true ), write(done), nl.
:- initialization(main).
