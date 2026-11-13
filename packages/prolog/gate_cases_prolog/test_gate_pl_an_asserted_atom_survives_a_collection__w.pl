:- initialization(main).
mk(N,A) :- number_codes(N,C), atom_codes(S,C), atom_concat(p_,S,A).
gen(0) :- !.
gen(N) :- mk(N,A), T =.. [A,plain], assertz(T), N1 is N-1, gen(N1).
shw(0) :- !.
shw(N) :- mk(N,A), G =.. [A,X],
          ( call(G) -> ( X == plain -> R = ok ; R = wrongval(X) ) ; R = missing ),
          ( R == ok -> true ; write(N-R), nl ),
          N1 is N-1, shw(N1).
main :- gen($N), shw($N), write(done), nl.
