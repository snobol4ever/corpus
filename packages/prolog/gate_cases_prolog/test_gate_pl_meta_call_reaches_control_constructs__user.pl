','(_,_) :- write(mine), nl.
:- initialization(main).
main :- X = (p,q), call(X).
