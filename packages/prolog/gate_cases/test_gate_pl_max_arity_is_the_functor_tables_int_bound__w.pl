:- initialization(main).
t(N, G) :- write(N), write(': '), catch((G -> true ; write(failed)), error(E, _), (write(caught(E)))), nl.
main :-
    t(flag, (current_prolog_flag(max_arity, A), write(A))),
    t(enum, (current_prolog_flag(F, V), F == max_arity, write(F-V))),
    t(functor2000, (functor(T, f, 2000), arg(2000, T, X), (var(X) -> write(ok) ; write(no)))),
    t(univ3000, (numlist(1, 3000, L), T3 =.. [g|L], functor(T3, _, N3), arg(3000, T3, Y), write(N3/Y))),
    t(functor5000_univ, (functor(T5, h, 5000), T5 =.. [_|As], length(As, N5), write(N5))),
    t(copy_term4000, (functor(T6, k, 4000), copy_term(T6, T7), functor(T7, _, N7), write(N7))),
    t(functor_max_plus_1, (current_prolog_flag(max_arity, M), M1 is M + 1, functor(_, foo, M1))),
    t(functor_bignum, functor(_, f, 100000000000000000000)),
    t(abolish_max_plus_1, (current_prolog_flag(max_arity, M2), M3 is M2 + 1, abolish(foo/M3))),
    t(set_flag, set_prolog_flag(max_arity, 40)),
    t(abolish2000, (abolish(foo/2000), write(ok))),
    halt.
