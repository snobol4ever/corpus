v(Y) :- Y = val, member(Z, [1, 2]), write(Y-Z), nl, fail.
v(_) :- write(v_second), nl.
main :- v(_), write(done), nl.
:- initialization(main).
