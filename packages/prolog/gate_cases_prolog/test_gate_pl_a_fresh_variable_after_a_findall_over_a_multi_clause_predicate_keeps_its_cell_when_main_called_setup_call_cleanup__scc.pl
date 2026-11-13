v1(_).
v1(_).
t1 :- setup_call_cleanup(true, true, true), findall(x, v1(_), L), length(L, N), write(N), nl.
t2 :- setup_call_cleanup(true, true, true), findall(x, v1(_), L), N = foo, write(L-N), nl.
t3 :- setup_call_cleanup(true, true, true), findall(x, v1(_), L), copy_term(L, M), write(M), nl.
:- initialization(main).
main :- t1, t2, t3, halt.
