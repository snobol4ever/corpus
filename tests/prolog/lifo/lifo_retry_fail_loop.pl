p(1). p(2). p(3).
q(X) :- p(X), X > 1.
q(9).
main :- q(X), write(X), nl, fail.
main :- write(done), nl.
:- initialization(main).
