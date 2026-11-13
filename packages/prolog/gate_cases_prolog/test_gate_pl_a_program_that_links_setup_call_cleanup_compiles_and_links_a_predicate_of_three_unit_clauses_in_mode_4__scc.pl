v1(_).
v1(_).
v1(_).
v2(_, _).
v2(_, _).
v2(_, _).
unused :- setup_call_cleanup(true, true, true).
:- initialization(main).
main :-
    findall(x, v1(_), L1), length(L1, N1), write(N1), nl,
    findall(x, v2(_, _), L2), length(L2, N2), write(N2), nl,
    halt.
