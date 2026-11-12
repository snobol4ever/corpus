:- use_module(library(assoc)).
:- initialization(main).
s(N, G) :- ( catch(G, error(E, _), (writeq(N-E), nl, fail)) -> writeq(N-ok) ; writeq(N-failed) ), nl.
m(t(K,V,B,L,R), Out) => Out = t(K,V,B,L,R).
m2(X, Out) => Out = X.
m3(t(_,V,_,_,_), O) => O = V.
m4(f(X, X), O) => O = X.
m5(A, B), A == B => true.
m5(_, _) => fail.
main :- put_attr(Y, value, 1), T = t(1,Y,<,t,t),
    s(uwoc_fresh_left, (unify_with_occurs_check(V1, Y), V1 == Y)), s(uwoc_fresh_right, (unify_with_occurs_check(Y, V2), V2 == Y)),
    s(uwoc_in_compound, (unify_with_occurs_check(f(V3), f(Y)), V3 == Y)), s(uwoc_compound_right, (unify_with_occurs_check(f(Y), f(V4)), V4 == Y)),
    s(subsumes_compound, subsumes_term(t(_,_,_,_,_), T)), s(subsumes_arg, subsumes_term(f(_), f(Y))), s(subsumes_bare, subsumes_term(_, Y)),
    s(ssu_compound, m(T, _)), s(ssu_bare, m2(T, _)), s(ssu_value, (m3(T, O3), O3 == Y)), s(ssu_repeated, (put_attr(Y2, value, 2), m4(f(Y2, Y2), _))), s(ssu_guard, m5(Y, Y)),
    s(assoc_put_get, (empty_assoc(E0), put_assoc(1, E0, Y, A1), put_assoc(2, A1, Y3, A2), get_assoc(1, A2, Z), Z == Y, get_assoc(2, A2, Z3), Z3 == Y3)),
    s(two_attributed, (put_attr(P, value, 3), put_attr(Q, other, 4), P = Q)),
    s(plain_eq, (f(V5) = f(Y), V5 == Y)), halt.
