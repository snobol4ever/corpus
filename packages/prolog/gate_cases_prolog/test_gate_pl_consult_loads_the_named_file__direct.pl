:- consult(t_foo).
:- initialization(main).
main :- t_foo(1,X), write(X), nl.
