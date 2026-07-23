:- initialization(main).
main :-
    open('/tmp/rung78_d.txt', write, W),
    write(W, 'tree(node(A,leaf,B), C, A).'), nl(W),
    write(W, 'q(X, Y, X).'), nl(W),
    close(W),
    open('/tmp/rung78_d.txt', read, R),
    read_term(R, T, [variables(Vs), variable_names(VN), singletons(S)]),
    length(Vs, NVs), write(nvars=NVs), nl,
    length(VN, NVN), write(nnames=NVN), nl,
    length(S, NS), write(nsingletons=NS), nl,
    ( T = tree(node(X,leaf,_),_,X2), X==X2 -> write(a_shared_ok) ; write(a_bad) ), nl,
    set_input(R),
    read_term(T2, [singletons(S2)]),
    length(S2, NS2), write(rt2_singletons=NS2), nl,
    ( T2 = q(P,_,P2), P==P2 -> write(rt2_shared_ok) ; write(rt2_bad) ), nl,
    close(R),
    write(done), nl,
    halt.
