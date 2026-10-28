:- dynamic p/1.
p(1). p(2).
main :- ( clause(p(X), true), write(c(X)), nl, fail ; true ), write(done), nl.
:- initialization(main).
