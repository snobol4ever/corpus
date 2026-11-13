:- use_module(library(clpfd)).
:- initialization(main).
main :- X in 1..5, X #> 3, label([X]), write(X), nl.
