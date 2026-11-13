:- initialization(main).
q(a). q(b).
p(0) :- !.
p(N) :- N > 0, q(_), N1 is N - 1, p(N1).
main :- ( p(100000) -> write(cp_ok) ; write(cp_no) ), nl.
