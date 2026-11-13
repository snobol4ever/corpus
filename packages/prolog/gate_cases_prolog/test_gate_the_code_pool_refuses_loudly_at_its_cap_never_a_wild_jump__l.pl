:- initialization(main).
:- dynamic(pi/3).
loop(N) :- N > 6000, !.
loop(N) :- assertz((pi(a, 1, N) :- N >= 0)), N1 is N + 1, loop(N1).
main :- loop(1), pi(a, 1, 1), write(done), nl, halt.
