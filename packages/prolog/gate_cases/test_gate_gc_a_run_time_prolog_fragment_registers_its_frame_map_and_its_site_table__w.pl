:- initialization(main).
:- dynamic(r/2).
loop(0) :- !.
loop(N) :- retractall(r(_, _)), assertz((r(X, Y) :- atom_concat(X, abc, Z), atom_length(Z, Y))), r(hello, L), L =:= 8, N1 is N - 1, loop(N1).
main :- loop(300), r(hi, V), write(V), nl, halt.
