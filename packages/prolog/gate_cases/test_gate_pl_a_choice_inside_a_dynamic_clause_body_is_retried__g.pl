:- initialization(main).
:- dynamic(a/1).
a(X) :- ( X = 1 ; X = 2 ), !.
a(z).
:- dynamic(b/1).
b(X) :- ( between(1,3,X) -> true ; X = none ).
b(z).
:- dynamic(c/1).
c(X) :- \+ ( X == q ; fail ), ( X = 1 ; X = 2 ; X = 3 ).
c(z).
:- dynamic(d/2).
d(X,Y) :- ( X = 1 ; X = 2 ), ( Y = p ; Y = q ).
d(z,z).
:- dynamic(e/1).
e(X) :- between(1,2,X), ( true ; X > 5 ).
e(z).
:- dynamic(f/1).
f(X) :- once(( X = 1 ; X = 2 )).
f(z).
:- dynamic(g/1).
g(1). g(2). g(3).
:- dynamic(h/1).
h(X) :- ( X = 1 ; X = 2 ).
:- dynamic(i/1).
i(X) :- ( X = 1 ; X = 2 ; X = 3 ), X >= 2.
i(z).
:- dynamic(j/1).
j(a) :- ( true ; write(j_alt), nl ).
j(b).
s(N, G) :- write(N), write(':'), ( call(G), write(' '), write(G), fail ; true ), nl.
:- dynamic(m/1).
m(X) :- between(1,3,X).
m(z).
:- dynamic(n/1).
n(X) :- repeat, nb_getval(c,N), N1 is N+1, nb_setval(c,N1), X = N1, (N1 >= 2 -> ! ; true).
n(z).
:- dynamic(o/1).
o(X) :- member(X,[p,q]).
o(z).
main :-
  s(a, a(_)), s(b, b(_)), s(c, c(_)), s(d, d(_,_)), s(e, e(_)), s(f, f(_)), s(g, g(_)), s(h, h(_)), s(i, i(_)),
  assertz((k(X) :- ( X = 1 ; X = 2 ))), assertz(k(z)), s(k, k(_)),
  ( h(X1), X1 == 1 -> write(first(X1)) ; write(none) ), nl,
  findall(X2, j(X2), L), write(L), nl,
  ( j(X3), X3 == a, retract((j(a) :- _)), fail ; true ), findall(X4, j(X4), L2), write(L2), nl,
  s(m, m(_)), nb_setval(c,0), s(n, n(_)), s(o, o(_)),
  halt.
