:- dynamic f/1.
:- forall(between(1, 300, I), assertz(f(I))).
:- assertz((f(X) :- X = rule)).
:- retract(f(1)).
:- ( f(10) -> true ; true ).
:- retract(f(2)).
:- findall(X, f(X), L), length(L, N), write(N), nl.
:- retract(f(3)).
