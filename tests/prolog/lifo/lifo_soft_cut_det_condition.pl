s2(X, R) :- ( X > 0 *-> R = pos ; R = nonpos ).
s3(X, R) :- ( X == a *-> R = yes ; R = no ), true.
t(X) :- ( member(Y, [1, 2]) *-> X = Y ; X = 0 ).
main :- s2(1, A), write(A), nl, s2(0, B), write(B), nl, findall(R, s2(5, R), L), write(L), nl, s3(a, C), write(C), nl, s3(b, D), write(D), nl, findall(X, t(X), M), write(M), nl.
:- initialization(main).
