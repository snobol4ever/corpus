color(red). color(green). color(blue).
cl(G) :- functor(G, N, A), functor(H, N, A), clause(H, _), H = G.
a1(G, R) :- ( cl(G), R = 1 ; fail ).
a2(G, R) :- cl(G), ( R = 1 ; fail ).
a3(G, R) :- cl(G), ( R = 1 ; nb_setval(k, 1), fail ).
a4(G, R) :- catch(( cl(G), R = 1 ), E, throw(E)).
a5(G, R) :- catch(( cl(G), ( R = 1 ; nb_setval(k, 1), fail ) ; nb_getval(k, 1), R = x ), E, throw(E)).
a6(G, R) :- nb_setval(k, 0), catch(( cl(G), ( R = 1 ; nb_setval(k, 1), fail ) ; nb_getval(k, K), K == 1, R = x ), E, throw(E)).
a7(G, R) :- nb_setval(k, 0), catch(( cl(G), R = 1 ), E, ( nb_setval(k, 1), throw(E) )).
a8(G, R) :- ( var(R) -> true ; true ), catch(( cl(G), R = 1 ), E, throw(E)).
t1 :- findall(R, a1(color(_), R), L), print(a1(L)), nl.
t2 :- findall(R, a2(color(_), R), L), print(a2(L)), nl.
t3 :- findall(R, a3(color(_), R), L), print(a3(L)), nl.
t4 :- findall(R, a4(color(_), R), L), print(a4(L)), nl.
t5 :- findall(R, a5(color(_), R), L), print(a5(L)), nl.
t6 :- findall(R, a6(color(_), R), L), print(a6(L)), nl.
t7 :- findall(R, a7(color(_), R), L), print(a7(L)), nl.
t8 :- findall(R, a8(color(_), R), L), print(a8(L)), nl.
:- t1, t2, t3, t4, t5, t6, t7, t8.
