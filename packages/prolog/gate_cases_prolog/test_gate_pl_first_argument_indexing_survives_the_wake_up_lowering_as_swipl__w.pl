:- use_module(library(clpfd)).
len([], 0).
len([_|T], N) :- len(T, M), N is M+1.
t(G) :- call_cleanup(G, Det = true), ( Det == true -> D = det ; D = nondet ), write(G-D), nl.
main :- X #= 1+1, write(X), nl, t(len([], _)), t(len([a], _)), t(len([a,b,c], _)).
:- initialization(main).
