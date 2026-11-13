t1 :- catch(( catch(throw(f(1)), f(Z), true), throw(done) ), done, true), ( var(Z) -> write(t1_unbound) ; write(t1_bound(Z)) ), nl.
t2 :- ( member(A, [1,2,3]), catch(throw(f(A)), f(Z), true), Z == 2 -> write(t2(Z)) ; write(t2_none) ), nl.
t3 :- ( catch(throw(f(1)), f(Z), true), fail ; var(Z), write(t3_unbound_after_fail) ), nl.
t4 :- catch(( catch(( catch(throw(g(1)), g(W), true), throw(h(W)) ), h(V), ( V == 1 -> throw(i(V)) ; true ) ) ), i(U), true ), ( var(W) -> write(t4_w_unbound) ; write(t4_w(W)) ), write(u(U)), nl.
t5 :- X = f(_), catch(throw(k(2)), k(A), true), X = f(A), write(t5(X)), nl.
t6 :- ( catch(throw(f(1)), f(Z), true), Z == 1, throw(again) ; true ), write(t6_reached), nl.
t7 :- catch(( member(A, [1,2]), catch(throw(f(A)), f(Z), true), Z >= 2, throw(found(Z)) ), found(R), true), write(t7(R)), nl.
t8 :- ( catch(( catch(throw(f(1)), f(Z), true), Z == 2 ), _, true) -> write(t8_yes) ; write(t8_no) ), nl.
:- forall(member(G, [t1,t2,t3,t4,t5,t6,t7,t8]), ( catch(G, E, (write(G-E), nl)) -> true ; write(G-failed), nl )).
