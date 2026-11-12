:- initialization(main).
k(L, G) :- catch(( call(G) -> R = true ; R = false ), error(E, _), ( E = domain_error(K, _) -> R = domain_error(K) ; R = E )), format("~w => ~w~n", [L, R]).
det_freeze_loop(N, T) :- ( succ(N2, N) -> freeze(X, true), X = a, det_freeze_loop(N2, T) ; garbage_collect, statistics(trailused, T) ).
main :-
    k(globalused_int, ( statistics(globalused, G), integer(G), G > 0 )),
    k(localused_int, ( statistics(localused, L), integer(L), L >= 0 )),
    k(trailused_int, ( statistics(trailused, T), integer(T), T >= 0 )),
    k(stack_shifts_three, ( statistics(stack_shifts, [A, B, C]), integer(A), integer(B), integer(C) )),
    k(globalused_grows, ( garbage_collect, statistics(globalused, G0), length(Big, 5000), statistics(globalused, G1), G1 > G0, Big = [] )),
    k(globalused_after_gc_shrinks, ( length(Big2, 20000), Big2 = [_|_], garbage_collect, statistics(globalused, G2), garbage_collect, statistics(globalused, G3), G3 =< G2 )),
    k(unbound_key, statistics(_, _)),
    k(unknown_key, statistics(nokey_zz, _)),
    k(det_freeze_no_space, ( garbage_collect, statistics(trailused, T0), det_freeze_loop(1000, T1), TD is T1 - T0, TD < 100 )),
    k(throw_gc, ( statistics(stack_shifts, [S0, _, _]), ( between(1, 10000, _), catch(throw(foo), _, true), fail ; true ), statistics(stack_shifts, [S1, _, _]), S0 == S1 )),
    k(runtime_still_pair, ( statistics(runtime, [R1, R2]), integer(R1), integer(R2) )),
    k(global_stack_still_pair, ( statistics(global_stack, [U, F]), integer(U), integer(F) )),
    k(cputime_still_number, ( statistics(cputime, CT), number(CT) )).
