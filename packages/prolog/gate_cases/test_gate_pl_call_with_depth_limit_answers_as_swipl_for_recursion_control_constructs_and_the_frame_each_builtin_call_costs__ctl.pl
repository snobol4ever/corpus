:- initialization(main).
p(0) :- !.
p(N) :- N1 is N - 1, p(N1).
r(G) :- call(G).
w(T, G) :- w(T, G, 20).
w(T, G, L) :- ( call_with_depth_limit(G, L, R) -> true ; R = failed ), write(T/L-R), nl.
main :-
    w(conj, (true, true)), w(conj3, (true, true, true)), w(disj, (fail ; true)), w(disj_t, (true ; true)), w(ite, (true -> true ; true)), w(ite_nc, (true -> true)), w(soft, (true *-> true ; true)), w(notnot, \+ \+ true),
    w(conj_p0, (true, p(0))), w(conj_p1, (p(1), true)), w(conj_p1b, (true, p(1))), w(disj_p1, (fail ; p(1))), w(ite_p1, (p(1) -> true ; true)), w(notnot_p1, \+ \+ p(1)), w(conj_atom, (true, atom(a))),
    w(conj_cut, (true, !)), w(cut_conj, (!, true)), w(ite_cut, (true -> ! ; true)), w(disj_cut, (fail ; !)), w(conj_cut_mid, (true, !, true)), w(cut_only, !),
    w(nested, ((true, true) ; true)), w(nested2, ((true ; fail), (true -> true ; true))), w(nested_p0, ((true, true), p(0))), w(nested_p1, ((true ; fail), (true, p(1)))),
    w(r_conj, r((true, true))), w(r_disj, r((fail ; true))), w(r_ite, r((true -> true ; fail))), w(r_soft, r((true *-> true ; fail))), w(r_notnot, r(\+ \+ true)), w(r_conj_p0, r((true, p(0)))), w(r_conj_atom, r((true, atom(a)))),
    forall(member(L, [0, 1, 2, 3]), (w(true, true, L), w(conj, (true, true), L), w(conj_atom, (true, atom(a)), L), w(r_conj, r((true, true)), L), w(r_conj_atom, r((true, atom(a))), L), w(notnot, \+ \+ true, L), w(ite, (true -> true ; fail), L), w(conj_fail, (true, fail), L))),
    halt.
