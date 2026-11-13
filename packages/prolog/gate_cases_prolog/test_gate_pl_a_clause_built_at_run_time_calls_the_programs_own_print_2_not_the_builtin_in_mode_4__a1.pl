:- use_module(library(lists)).
print(N,M) :- write(N-M), nl.
main :- assertz((t :- print(2,0))), t.
:- initialization(main).
