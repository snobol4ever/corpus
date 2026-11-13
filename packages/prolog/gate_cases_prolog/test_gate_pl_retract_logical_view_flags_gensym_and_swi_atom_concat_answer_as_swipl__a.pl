:- dynamic foo/1, insect/1, icopy/1.
:- initialization(main).
t(N, G) :- catch((G -> R = yes ; R = no), error(E, _), R = E), writeq(N-R), nl.
main :- t(retract_fact, (assert(foo(1)), retract(foo(X0)), X0 == 1)), retractall(foo(_)),
    G1 = retract((foo(X1) :- true)), t(retract_fact_as_rule, (assert(foo(1)), call(G1), X1 == 1)), retractall(foo(_)),
    G2 = retract((foo(1) :- B2)), t(retract_open_body, (assert((foo(A2) :- bar(A2))), call(G2), B2 == bar(1))), retractall(foo(_)),
    G3 = retract((foo(1) :- bar(2))), t(retract_body_mismatch, (assert((foo(A3) :- bar(A3))), \+ call(G3))), retractall(foo(_)),
    t(retract_var_module_head, (assert((foo(1) :- bar(a))), context_module(M), G4 = retract((M:foo(X4) :- bar(A4))), call(G4), X4-A4 == 1-a)), retractall(foo(_)),
    t(retract_qualified_clause, (assert((foo(1) :- bar(a))), M5 = user, G5 = retract(M5:(foo(X5) :- bar(_))), call(G5), X5 == 1)), retractall(foo(_)),
    t(update_view_inner_retract, (assertz(insect(ant)), assertz(insect(bee)), ( retract(insect(I)), assertz(icopy(I)), retract(insect(bee)), fail ; findall(J, retract(icopy(J)), L) ), L == [ant,bee])),
    t(update_view_retract_ahead, (assertz(insect(a)), assertz(insect(b)), assertz(insect(c)), findall(X, (retract(insect(X)), (X == a -> retract(insect(c)) ; true)), L2), L2 == [a,b,c])),
    t(retract_var, retract(_)),
    t(flag_count, (flag(k, O, O+1), flag(k, O1, O1*10), get_flag(k, V), [O, O1, V] == [0, 1, 10])),
    t(flag_atom_value, (flag(j, _, foo), get_flag(j, J1), J1 == foo)), t(flag_compound_key, (flag(f(1), A, 5), get_flag(f(1), B), A-B == 0-5)),
    t(set_flag, (set_flag(k, 3), get_flag(k, K), K == 3)), t(flag_old_mismatch_keeps, (\+ flag(k, 99, 1), get_flag(k, K2), K2 == 3)),
    t(get_flag_unset, (get_flag(nosuch, U), U == 0)), t(with_mutex_once, findall(Y, with_mutex(m, member(Y, [1,2])), [1])),
    t(gensym, (gensym(a, S1), gensym(a, S2), gensym(b, S3), [S1,S2,S3] == [a1,a2,b1])), t(reset_gensym_1, (reset_gensym(a), gensym(a, S4), S4 == a1)),
    t(reset_gensym_0, (reset_gensym, gensym(b, S5), S5 == b1)).
