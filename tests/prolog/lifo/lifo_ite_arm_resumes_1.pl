:- use_module(library(clpfd)).
:- initialization(main).
main :- Vs = [A,B,C,D,E], Vs ins 0..9, all_distinct(Vs), A+B+C+D+E #= 35, findall(Vs, limit(30, labeling([bisect], Vs)), L), write(L), nl.
