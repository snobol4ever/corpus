:- initialization(main).
run(G) :- call(G).
runc(G) :- catch(G,_,true).
main :- findall(X,(X=1;X=2),[A,B,3],T), write(unbound_tail(A,B,T)), nl,
        U = [9], findall(Y,(Y=1;Y=2),S,U), write(bound_tail(S)), nl,
        findall(Z,(Z=1;Z=2),S2,[3]), write(literal_tail(S2)), nl,
        findall(_,fail,S3,[7]), write(no_solutions(S3)), nl,
        findall(V,(V=1;V=2),S4,T4), write(open_tail(S4,T4)), nl,
        call((findall(W,(W=1;W=2),S5,[3]), write(static_meta(S5)), nl)),
        U2 = [9], run((findall(P,(P=1;P=2),S6,U2), write(dyn_call(S6)), nl)),
        U3 = [9], runc((findall(Q,(Q=1;Q=2),S7,U3), write(dyn_catch(S7)), nl)),
        U4 = [9], G4 = (findall(R,(R=1;R=2),S8,U4), write(dyn_var(S8)), nl), call(G4),
        U5 = [9], run((findall(N,(N=1;N=2),[1,2|U5],T5), write(dyn_unbound(T5)), nl)).
