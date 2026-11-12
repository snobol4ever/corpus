p(X) :- q(X), s(X).
q(1).
q(2).
q(3).
s(3).
:- initialization(main).
main :- p(X), write(X), nl, halt.
