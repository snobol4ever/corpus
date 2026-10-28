:- use_module(library(clpfd)).
main :- X in 1..3, X #\= 2, label([X]), write(X), nl, fail.
main :- write(done), nl.
:- initialization(main).
