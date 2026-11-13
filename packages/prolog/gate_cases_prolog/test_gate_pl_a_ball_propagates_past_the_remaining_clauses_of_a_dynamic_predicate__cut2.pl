:- initialization(main).
:- dynamic(p/1). :- dynamic(q/1). :- dynamic(u/1). :- dynamic(v/2). :- dynamic(w/1).
p(X) :- member(X, [1,2,3]), X > 1, !.
p(9).
q(X) :- ( X > 0 -> true ; fail ).
q(_) :- true.
u(X) :- \+ X = a.
u(b).
v(X, Y) :- call((member(Y, [x, y]), !)), X = 1.
v(2, z).
w(1). w(2) :- !. w(3).
main :- findall(X, p(X), L1), write(L1), nl, findall(a, q(1), L2), length(L2, N2), write(N2), nl,
        findall(X, u(X), L3), write(L3), nl, findall(X-Y, v(X, Y), L4), write(L4), nl, findall(X, w(X), L5), write(L5), nl,
        assertz(w(4)), findall(X, (w(X), X > 1), L6), write(L6), nl, ( w(2) -> write(w2) ; write(no) ), nl.
