:- initialization(main).
:- dynamic(pr/3).
put(0, M) :- assertz((pr(a, 1, M) :- M >= 0)).
put(1, M) :- assertz((pr(a, 1, M) :- M >= 0, atom(a), integer(M), M < 100000000)).
put(2, M) :- assertz((pr(a, 1, M) :- ( M > 5 -> true ; M >= 0 ), M1 is M + 1, M1 > 0)).
drop :- ( clause(pr(a, 1, _), _, R) -> erase(R) ; true ).
loop(N, N) :- !.
loop(I, N) :- drop, K is I mod 3, M is I + 1, put(K, M), I1 is I + 1, loop(I1, N).
main :- loop(0, 120), pr(a, 1, 120), write(done), nl, halt.
