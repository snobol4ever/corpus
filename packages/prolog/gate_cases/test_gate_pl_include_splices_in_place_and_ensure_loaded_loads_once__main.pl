:- dynamic(d/1).
:- initialization(assertz(d(m1))).
:- include(inc_a).
:- include('inc_b.pl').
a(3).
:- ensure_loaded(once).
:- ensure_loaded(once).
main :- findall(X, a(X), L), write(L), nl, findall(Y, e(Y), M), write(M), nl, findall(Z, d(Z), N), write(N), nl.
:- initialization(main).
