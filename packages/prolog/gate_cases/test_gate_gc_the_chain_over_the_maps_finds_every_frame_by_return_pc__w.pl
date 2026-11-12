p(1).
p(2).
q(X, Y) :- p(X), Y is X * 2.
:- q(X, Y), write(Y), nl, fail.
:- true.
