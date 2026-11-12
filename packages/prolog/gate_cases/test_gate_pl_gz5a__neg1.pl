:- initialization(main).
t3(A,B,C) :- A = B, B = C.
main :- t3(a,X,Y), write(X), write(Y), nl.
