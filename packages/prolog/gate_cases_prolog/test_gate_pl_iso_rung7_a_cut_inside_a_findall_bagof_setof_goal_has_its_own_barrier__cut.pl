:- initialization(main).
member(M,[M|_]).
member(M,[_|T]) :- member(M,T).
q(a). q(b).
opaque :- findall(X, ((X=1;X=2), !), _), fail.
opaque :- write(outer_alive), nl.
main :-
    findall(X1, ((X1=1;X1=2), (true -> !)), A), write(a(A)), nl,
    findall(X2, ((X2=1;X2=2), (true *-> !)), B), write(b(B)), nl,
    findall(X3, ((X3=1;X3=2), (true;!)), C), write(c(C)), nl,
    findall(X4, ((X4=1;X4=2), (!;true)), D), write(d(D)), nl,
    findall(X5, ((X5=1;X5=2), (fail;!)), E), write(e(E)), nl,
    findall(X6, ((X6=1;X6=2), !), F), write(f(F)), nl,
    findall(X7, (member(X7,[1,2,3]), !), G), write(g(G)), nl,
    findall(X8, ((X8=1;X8=2), \+ \+ !), H), write(h(H)), nl,
    bagof(X9, ((X9=1;X9=2), (fail;!)), I), write(i(I)), nl,
    setof(XA, ((XA=2;XA=1), (fail;!)), J), write(j(J)), nl,
    bagof(XB-Y, (q(Y), (XB=1;XB=2), (fail;!)), K), write(k(K)), nl,
    opaque,
    halt.
