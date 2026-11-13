:- initialization(main).
t(N, G) :- open('wb.bin', write, S, [type(binary)]), current_output(O), set_output(S),
    catch((call(G, S), R = ok), E, R = E), set_output(O), close(S),
    ( R = error(permission_error(A, B, _), _) -> write(N-perm(A, B)) ; write(N-R) ), nl.
w1(_) :- write(a).         w2(S) :- write(S, a).        q1(_) :- writeq(a).          p1(_) :- print(a).
c1(_) :- write_canonical(a). t2(_) :- write_term(a, []). t3(S) :- write_term(S, a, []). n1(S) :- nl(S).
f1(_) :- format("x", []).  f2(S) :- format(S, "x", []).
m(G, _) :- call(G).
main :- t(w1, w1), t(w2, w2), t(q1, q1), t(p1, p1), t(c1, c1), t(t2, t2), t(t3, t3), t(n1, n1), t(f1, f1), t(f2, f2),
        t(mw1, m(write(a))), t(mq1, m(writeq(a))), t(mn0, m(nl)), t(mf1, m(format("x", []))).
