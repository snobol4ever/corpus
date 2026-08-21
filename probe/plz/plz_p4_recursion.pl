:- initialization(main).
count(0) :- !.
count(N) :- N > 0, write(N), nl, N1 is N - 1, count(N1).
main :- count(3).
