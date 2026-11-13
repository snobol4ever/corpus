:- initialization(main).
mk(0, B, B) :- !.
mk(N, A, B) :- N1 is N-1, mk(N1, (true, A), B).
main :- mk(60000, true, Body), assertz((p :- Body)), p, write(ok), nl.
