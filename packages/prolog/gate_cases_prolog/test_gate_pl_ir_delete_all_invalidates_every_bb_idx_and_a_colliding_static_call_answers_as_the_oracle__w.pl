:- dynamic t/1.
p(1). p(2). p(3).
q(X, Y) :- p(X), Y is X * 10.
r(X) :- member(X, [a, b]).
s(X) :- t(X), X \== a.
:- assertz((t(Z) :- q(X, Z), X > 1)), findall(Z, t(Z), L), write(L), nl.
:- assertz((t(Z) :- r(Z))), findall(Z, s(Z), L), write(L), nl.
:- clause(q(_, _), B), numbervars(B, 0, _), print(B), nl.
:- retract((t(Z) :- q(_, Z), _)), findall(Z, t(Z), L), write(L), nl.
:- assertz(t(9)), findall(Z, s(Z), L), write(L), nl.
