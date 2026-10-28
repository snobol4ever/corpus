:- use_module(library(clpfd)).
main :- [X, Y] ins 0..5, X + Y #= 5, X #> Y, label([X, Y]), write(X-Y), nl, fail.
main :- write(done), nl.
:- initialization(main).
