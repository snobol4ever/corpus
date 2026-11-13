:- initialization(main).
main :-
    b_setval(v, f(X)), X = 1, b_getval(v, Y), writeq(a(Y)), nl,
    b_setval(u, Z), b_getval(u, Z2), Z = 5, writeq(b(Z2)), nl,
    nb_setval(q, 0), ( b_setval(q, g(A)), A = 3, b_getval(q, Q1), writeq(c(Q1)), nl, fail ; true ), b_getval(q, Q2), writeq(d(Q2)), nl,
    nb_setval(r, 1), ( b_setval(r, 2), b_getval(r, R1), writeq(e(R1)), nl, fail ; true ), b_getval(r, R2), writeq(f(R2)), nl,
    W = W, b_setval(w, W), b_getval(w, W2), W = 6, writeq(g(W2)), nl,
    b_setval(x, V), b_getval(x, V2), V2 = 7, writeq(h(V)), nl,
    K = k, b_setval(K, T), T = 8, b_getval(K, T2), writeq(i(T2)), nl,
    halt.
