:- use_module(library(nb_set)).
t(G) :- catch((G -> true ; write(no)), error(E, _), writeq(E)), nl.
dpc(K, C) :- G =.. [duplicate_term, K, C], call(G).
main :-
    t((findall(Y, reverse(Y, [a,b]), L1), writeq(L1))),
    t((findall(Z-W, limit(3, reverse(Z, W)), L2), numbervars(L2, 0, _), writeq(L2))),
    t((findall(R, reverse([1,2,3], R), L3), writeq(L3))),
    t((X4 = [a|T4], findall(X4-T4, reverse(X4, [p,q,r]), L4), numbervars(L4, 0, _), writeq(L4))),
    t((findall(P, reverse([1,2|P], [z,y,x]), L5), writeq(L5))),
    t((findall(Q, reverse(Q, []), L6), writeq(L6))),
    t((reverse([a,b|_], [c]) -> write(yes) ; write(no))),
    t((H = h(none), K = v(E), ( member(E, [9, 10]), duplicate_term(K, C), nb_linkarg(1, H, C), fail ; arg(1, H, R8), writeq(direct(R8)) ))),
    t((H9 = h(none), K9 = v(E9), ( member(E9, [9, 10]), dpc(K9, C9), nb_linkarg(1, H9, C9), fail ; arg(1, H9, R9), writeq(call_n(R9)) ))),
    t((K1 = v(E1), empty_nb_set(S1), findall(E1, (between(0, 60, E1), add_nb_set(K1, S1, true)), L10), length(L10, N10), writeq(prebuilt_key_set(N10)))),
    t((findall(E2, limit(40, distinct(E2, (between(0, 200, N2), E2 is N2 // 3))), L11), length(L11, N11), last(L11, La), writeq(distinct(N11, La)))),
    t((findall(E3, distinct(v(E3), (between(0, 60, E3))), L12), length(L12, N12), writeq(distinct_compound(N12)))).
:- initialization((main, halt)).
