:- initialization(main).
mk(0,[]) :- !.
mk(N,[N|T]) :- M is N-1, mk(M,T).
main :- mk(2000,L), length(L,X), write(X), nl.
