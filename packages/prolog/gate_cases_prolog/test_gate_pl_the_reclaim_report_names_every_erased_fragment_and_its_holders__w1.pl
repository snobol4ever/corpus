:- initialization(main).
:- dynamic(pi/3).
loop(0) :- !.
loop(N) :- ( retract((pi(a, 1, M) :- _)) -> true ; M = 0 ), M1 is M + 1, assertz((pi(a, 1, M1) :- true, true)), N1 is N - 1, loop(N1).
main :- loop(200), pi(a, 1, V), write(V), nl, halt.
