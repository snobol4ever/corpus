:- initialization(main).
:- dynamic(pr/3).
loop(0) :- !.
loop(N) :- ( retract((pr(a, 1, M) :- M >= 0)) -> true ; M = 0 ), M1 is M + 1, assertz((pr(a, 1, M1) :- M1 >= 0)), N1 is N - 1, loop(N1).
main :- loop(4000), pr(a, 1, V), write(V), nl, halt.
