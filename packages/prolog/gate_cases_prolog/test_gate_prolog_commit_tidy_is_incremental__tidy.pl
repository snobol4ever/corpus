:- initialization(main).
main :- N = 100000, length(L, N), ( true ; fail ), bind_all(L), commits(N), write(done), nl.
bind_all([]).
bind_all([X|Xs]) :- X = 1, bind_all(Xs).
commits(0) :- !.
commits(N) :- ( N > 0 -> true ; fail ), N1 is N - 1, commits(N1).
