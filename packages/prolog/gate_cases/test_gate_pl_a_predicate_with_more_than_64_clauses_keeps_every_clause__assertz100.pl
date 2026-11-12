:- initialization(main).
:- dynamic(f/2).
fill(0) :- !.
fill(N) :- K is N * 7, assertz(f(N, K)), N1 is N - 1, fill(N1).
main :- fill(100), findall(x, f(_, _), L), length(L, C), write(C), nl, ( f(1, K) -> write(K) ; write(none) ), nl, ( f(36, K2) -> write(K2) ; write(none) ), nl,
        findall(N, (f(N, V), V < 60), L2), write(L2), nl, halt.
