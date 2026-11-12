:- initialization(main).
p(0) :- !.
p(N) :- N > 0, N1 is N - 1, p(N1).
main :- ( p(200000) -> write(det_ok) ; write(det_no) ), nl.
