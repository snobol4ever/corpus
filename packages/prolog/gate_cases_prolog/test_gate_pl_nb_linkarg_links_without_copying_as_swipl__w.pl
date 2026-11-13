:- initialization(main).
main :- T = f(_), V = g(X), nb_linkarg(1, T, V), X = 1, arg(1, T, A), writeq(linked(A)), nl,
  T2 = f(_), V2 = g(Y), nb_setarg(1, T2, V2), Y = 1, arg(1, T2, A2), ( A2 = g(Z), var(Z) -> writeq(setarg_copied) ; writeq(setarg_shared(A2)) ), nl,
  T3 = f(a), ( nb_linkarg(1, T3, v), fail ; true ), arg(1, T3, A3), writeq(survives(A3)), nl,
  T4 = f(a), ( setarg(1, T4, v), fail ; true ), arg(1, T4, A4), writeq(setarg_undone(A4)), nl,
  ( nb_linkarg(0, f(a), x) -> writeq(zero_yes) ; writeq(zero_no) ), nl, catch(nb_linkarg(x, f(a), y), error(E2, _), true), writeq(bad(E2)), nl.
