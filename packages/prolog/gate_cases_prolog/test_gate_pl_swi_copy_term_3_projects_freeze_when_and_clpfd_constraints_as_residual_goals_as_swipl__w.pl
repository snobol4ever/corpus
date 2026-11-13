:- use_module(library(lists)).
:- use_module(library(when)).
:- use_module(library(clpfd)).
:- initialization(main).
t(L, G) :- catch(( call(G) -> R = ok ; R = failed ), E, ( E = error(F, _) -> R = raised(F) ; R = threw(E) )), write(L), write(': '), write(R), nl.
show(Gs) :- \+ \+ ( numbervars(Gs, 0, _), write_term(Gs, [numbervars(true), quoted(true), ignore_ops(true)]), nl ).
cp(Term) :- copy_term(Term, Copy, Gs), show(Copy-Gs).
main :-
    t(no_attvars, cp(f(_, a, _))),
    t(freeze_one, ( freeze(A, true), cp(A) )),
    t(freeze_two, ( freeze(B, write(x)), freeze(B, write(y)), cp(B) )),
    t(freeze_two_vars, ( freeze(C1, true), freeze(C2, true), cp(f(C1, C2)) )),
    t(freeze_bound, ( freeze(D, true), D = 1, cp(D) )),
    t(when_ground, ( when(ground(E), true), cp(E) )),
    t(when_nonvar, ( when(nonvar(F), true), cp(F) )),
    t(when_determined, ( when(?=(G1, G2), true), cp(f(G1, G2)) )),
    t(when_conj, ( when((nonvar(H1), ground(H2)), true), cp(f(H1, H2)) )),
    t(when_disj, ( when((nonvar(I1) ; ground(I2)), true), cp(f(I1, I2)) )),
    t(when_nested1, ( when(ground(J1) ; (ground(J2), ground(J3)), true), cp(f(J1, J2, J3)) )),
    t(when_nested2, ( when(ground(K1) ; ((ground(K2), ground(K3)), ground(K4)), true), cp(f(K1, K2, K3, K4)) )),
    t(when_nested3, ( when(ground(L1) ; (((ground(L2), ground(L3)), ground(L4)), ground(L5)), true), cp(f(L1, L2, L3, L4, L5)) )),
    t(when_partly_bound, ( when((ground(M1), ground(M2)), true), M1 = 1, cp(f(M1, M2)) )),
    t(when_fired, ( when(ground(N), true), N = 1, cp(N) )),
    t(when_twice, ( when(nonvar(O), true), when(ground(O), true), cp(O) )),
    t(when_with_goal_var, ( when(ground(P), q(P, Z)), cp(f(P, Z)) )),
    t(freeze_and_when, ( freeze(Q, true), when(ground(Q), true), cp(Q) )),
    t(clpfd_dom, ( R #> 3, R #< 8, cp(R) )),
    t(clpfd_two, ( S #= T + U, T in 0..5, U in 0..5, cp(f(S, T, U)) )),
    t(clpfd_neq, ( V #\= W, V in 1..3, cp(f(V, W)) )),
    t(put_attr_plain, ( put_attr(X1, foo, bar), cp(X1) )),
    t(two_attr_modules, ( put_attr(X3, foo, 1), put_attr(X3, bar, 2), freeze(X3, true), cp(X3) )),
    t(var_only_in_goal, ( freeze(Y1, true), cp(g(Y1, Y1)) )),
    halt.
