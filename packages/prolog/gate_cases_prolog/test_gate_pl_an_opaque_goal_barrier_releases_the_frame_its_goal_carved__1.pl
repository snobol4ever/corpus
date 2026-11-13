:- initialization(main).
q(1).
q(2).
r(_).
p(0) :- !.
p(N) :- N > 0, $2, N1 is N - 1, p(N1).
main :- ( p($N) -> write(ok) ; write(no) ), nl.
