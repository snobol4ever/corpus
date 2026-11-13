:- initialization(main).
m(X,[X|_]).
m(X,[_|T]) :- m(X,T).
main :- m(Q,[a,b]), write(Q), nl, fail ; true.
