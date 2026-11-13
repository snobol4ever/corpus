:- nb_setval(k, []).
t(0) :- !.
t(N) :- nb_getval(k, _), b_setval(k, [N, x, y, z]), N1 is N - 1, t(N1).
:- t(2000000), writeln(done).
