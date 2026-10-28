r(X) :- member(X, [a, b]).
main :- ( between(1, 3, I), r(X), write(I-X), nl, fail ; true ), write(done), nl.
:- initialization(main).
