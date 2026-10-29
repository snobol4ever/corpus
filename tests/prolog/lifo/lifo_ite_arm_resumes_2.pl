:- use_module(library(clpfd)).
:- initialization(main).
main :- Vs = [A,B,C,D], Vs ins 0..15, A*B #= C+D, findall(Vs, limit(40, labeling([bisect], Vs)), L), write(L), nl.
