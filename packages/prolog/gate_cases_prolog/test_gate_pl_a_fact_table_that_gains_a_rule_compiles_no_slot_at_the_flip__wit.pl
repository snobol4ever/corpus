:- dynamic f/1, g/2.
:- forall(between(1, 40, I), assertz(f(I))).
:- assertz((f(X) :- between(101, 102, X))).
:- asserta(f(0)).
:- retract(f(5)).
:- findall(X, f(X), L), length(L, N), write(N), nl.
:- f(101), write(yes101), nl.
:- ( f(103) -> write(yes103) ; write(no103) ), nl.
:- f(0), f(40), write(ends), nl.
:- forall(between(1, 40, I), ( J is I * 2, assertz(g(I, J)) )).
:- assertz((g(K, V) :- between(41, 45, K), V is K * 2)).
:- g(41, V), write(V), nl.
:- g(7, V), write(V), nl.
:- findall(K-V, ( g(K, V), K mod 20 =:= 0 ), L2), write(L2), nl.
:- assertz(g(50, odd)), findall(W, g(50, W), L3), write(L3), nl.
:- retract(f(1)), retract(f(2)), findall(X, ( f(X), X < 6 ), L4), write(L4), nl.
:- assertz((h(Z) :- Z = first)), assertz(h(second)), findall(Z, h(Z), L5), write(L5), nl.
