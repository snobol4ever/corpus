:- initialization(main).
t(N, G) :- ( catch(G, error(E, _), (writeq(N-E), nl)) -> true ; writeq(N-failed), nl ).
p(Y) :- X = Y, X = 2.
main :-
    t(direct, (X1 = 2, between(X1, 5, Z1), writeq(Z1), nl)),
    t(link_low, (X2 = Y2, Y2 = 2, between(X2, 5, Z2), writeq(Z2), nl)),
    t(link_high, (X3 = Y3, Y3 = 5, between(1, X3, Z3), writeq(Z3), nl)),
    t(link_both, (A4 = B4, B4 = 2, C4 = D4, D4 = 3, findall(Z4, between(A4, C4, Z4), L4), writeq(L4), nl)),
    t(link_call, (X5 = Y5, Y5 = 2, call(between, X5, 3, Z5), writeq(Z5), nl)),
    t(link_head, (p(X6), between(X6, 3, Z6), writeq(Z6), nl)),
    t(link_atom, (X7 = Y7, Y7 = a, between(X7, 5, _))),
    t(link_unbound, (X8 = _Y8, between(X8, 5, _))),
    t(link_float, (X9 = Y9, Y9 = 1.5, between(X9, 5, _))),
    t(link_check, (X10 = Y10, Y10 = 3, between(1, 5, X10), writeq(in), nl)),
    t(ttyflush, (ttyflush, writeq(flushed), nl)),
    t(time_all, (findall(M, time(member(M, [a,b,c])), Ms), writeq(Ms), nl)),
    t(time_fail, ((time(fail) -> writeq(no) ; writeq(failed_through)), nl)),
    t(time_bind, (time(X11 = 7), writeq(X11), nl)),
    t(time_cut, (once(time(member(Q, [x,y]))), writeq(Q), nl)),
    writeq(done), nl, halt.
