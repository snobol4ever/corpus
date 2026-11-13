:- initialization(main).
mem(M,[M|_]).
mem(M,[_|T]) :- mem(M,T).
c1 :- mem(X,[1,2]), write(X), (true -> ! ; true), fail.
c1 :- write(c1b).
c2 :- mem(X,[1,2]), write(X), (! ; true), fail.
c2 :- write(c2b).
c3(X) :- (true -> (X = 1 ; X = 2, !) ; true).
c4(X) :- catch((mem(X,[1,2,3]), (X >= 2, ! ; true)), _, true).
c5(X) :- (mem(X,[1,2,3]) *-> (X >= 2, ! ; true) ; true).
c6 :- mem(X,[a,b]), write(X), (fail ; !), fail.
c6 :- write(c6b).
t(G) :- ( catch(G, E, (write(ex(E)), fail)) -> true ; write(' no') ), nl.
main :- t(c1), t(c2), findall(X, c3(X), L3), write(L3), nl,
        findall(X, c4(X), L4), write(L4), nl,
        findall(X, c5(X), L5), write(L5), nl, t(c6).
