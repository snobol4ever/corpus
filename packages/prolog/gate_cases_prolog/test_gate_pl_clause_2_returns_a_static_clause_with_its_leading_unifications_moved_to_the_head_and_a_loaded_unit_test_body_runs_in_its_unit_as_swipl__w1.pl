:- use_module(library(lists)).
:- initialization(main).
a1(X) :- X = f(A), q(A).
a2(X) :- f(_) = X, q(X).
a3(X, X) :- X = f(_).
a4(X) :- X = f(X).
a5(X) :- X = f(_), q([X]).
a6(X, Y) :- X = f(Y), Y = a.
a7(A, B) :- B = g(y), A = h(x), q(A, B).
a8(X) :- X = a, X = b.
a9(X) :- foo = bar, X = f(Y), q(Y).
a10(X) :- q(X), X = f(_).
a11(X, _) :- X = f(Z), Z = g(_), q(Z).
a12(X, Y) :- Y = k, X = j.
a13(f(X)) :- X = a, q(X).
a14([H|T]) :- H = a, q(T).
b1(X) :- X = a, q(X).
b2(X, Y) :- X = f(Y), q(Y).
b3(X) :- X = 1, q(X).
b4(X) :- X = [], q(X).
b5(X, Y) :- Y = a, X = f(Y).
b6(X, Y) :- X = f(Y), Y = g(Z), q(Z).
b7(X, Y) :- X = g(Y), Y = a, q(X).
b8(X) :- X = a.
b9(X, Y) :- X = f(Y), Y = g(_).
b10(X, Y) :- X = f(Y), Y = 1.
c1(X) :- X = f(Y), q(Y), X = g(_).
c2(X, Y) :- q(Y), X = f(_).
c3(X) :- ( X = f(_) ; q(X) ).
c4(X, Y) :- Y = k, q(Y), X = j.
c5(X) :- true, X = f(A), q(A).
c6(X) :- X = Y, q(Y).
c7(f(X), X) :- X = a.
c8(X) :- X = f(_), !, q(X).
c9(X) :- X = f(A), A = b, q(X).
c11(X) :- X = "str", q(X).
c12(X) :- X = 'A b', q(X).
:- dynamic d1/1.
d1(X) :- X = f(_), q(X).
q(_).
q(_, _).
s(a1, T) :- clause(a1(X1), B), T = (a1(X1) :- B).
s(a2, T) :- clause(a2(X1), B), T = (a2(X1) :- B).
s(a3, T) :- clause(a3(X1, X2), B), T = (a3(X1, X2) :- B).
s(a4, T) :- clause(a4(X1), B), T = (a4(X1) :- B).
s(a5, T) :- clause(a5(X1), B), T = (a5(X1) :- B).
s(a6, T) :- clause(a6(X1, X2), B), T = (a6(X1, X2) :- B).
s(a7, T) :- clause(a7(X1, X2), B), T = (a7(X1, X2) :- B).
s(a8, T) :- clause(a8(X1), B), T = (a8(X1) :- B).
s(a9, T) :- clause(a9(X1), B), T = (a9(X1) :- B).
s(a10, T) :- clause(a10(X1), B), T = (a10(X1) :- B).
s(a11, T) :- clause(a11(X1, X2), B), T = (a11(X1, X2) :- B).
s(a12, T) :- clause(a12(X1, X2), B), T = (a12(X1, X2) :- B).
s(a13, T) :- clause(a13(X1), B), T = (a13(X1) :- B).
s(a14, T) :- clause(a14(X1), B), T = (a14(X1) :- B).
s(b1, T) :- clause(b1(X1), B), T = (b1(X1) :- B).
s(b2, T) :- clause(b2(X1, X2), B), T = (b2(X1, X2) :- B).
s(b3, T) :- clause(b3(X1), B), T = (b3(X1) :- B).
s(b4, T) :- clause(b4(X1), B), T = (b4(X1) :- B).
s(b5, T) :- clause(b5(X1, X2), B), T = (b5(X1, X2) :- B).
s(b6, T) :- clause(b6(X1, X2), B), T = (b6(X1, X2) :- B).
s(b7, T) :- clause(b7(X1, X2), B), T = (b7(X1, X2) :- B).
s(b8, T) :- clause(b8(X1), B), T = (b8(X1) :- B).
s(b9, T) :- clause(b9(X1, X2), B), T = (b9(X1, X2) :- B).
s(b10, T) :- clause(b10(X1, X2), B), T = (b10(X1, X2) :- B).
s(c1, T) :- clause(c1(X1), B), T = (c1(X1) :- B).
s(c2, T) :- clause(c2(X1, X2), B), T = (c2(X1, X2) :- B).
s(c3, T) :- clause(c3(X1), B), T = (c3(X1) :- B).
s(c4, T) :- clause(c4(X1, X2), B), T = (c4(X1, X2) :- B).
s(c5, T) :- clause(c5(X1), B), T = (c5(X1) :- B).
s(c6, T) :- clause(c6(X1), B), T = (c6(X1) :- B).
s(c7, T) :- clause(c7(X1, X2), B), T = (c7(X1, X2) :- B).
s(c8, T) :- clause(c8(X1), B), T = (c8(X1) :- B).
s(c9, T) :- clause(c9(X1), B), T = (c9(X1) :- B).
s(c11, T) :- clause(c11(X1), B), T = (c11(X1) :- B).
s(c12, T) :- clause(c12(X1), B), T = (c12(X1) :- B).
s(d1, T) :- clause(d1(X1), B), T = (d1(X1) :- B).
pr(T) :- copy_term(T, T1), numbervars(T1, 0, _), writeq(T1), nl.
main :- forall(s(N, T), (writeq(N), write(' '), pr(T))), halt.
