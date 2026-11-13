p1. p2. p3(_).
:- dynamic(dq/1).
:- multifile(mf/2).
q :- \+ current_predicate(nope/7), \+ current_predicate(assertz/1), \+ current_predicate(current_predicate/1).
:- initialization(main).
main :-
    findall(N, current_op(_, _, N), Ops), length(Ops, LO), ( LO > 20 -> write(ops_ok) ; write(ops_short(LO)) ), nl,
    findall(N/A, current_predicate(N/A), Ps),
    ( memberchk(p1/0, Ps), memberchk(p2/0, Ps), memberchk(p3/1, Ps), memberchk(q/0, Ps), memberchk(dq/1, Ps), memberchk(mf/2, Ps) -> write(statics_ok) ; write(statics_missing(Ps)) ), nl,
    ( current_predicate(p3/X), X == 1 -> write(arity_ok) ; write(arity_bad) ), nl,
    ( q -> write(builtins_hidden) ; write(builtins_leak) ), nl,
    assertz(rt_new(1)), ( current_predicate(rt_new/1) -> write(runtime_ok) ; write(runtime_missing) ), nl,
    retractall(rt_new(_)), ( current_predicate(rt_new/1) -> write(retracted_still_current) ; write(retracted_gone) ), nl,
    abolish(rt_new/1), ( current_predicate(rt_new/1) -> write(abolished_still_current) ; write(abolished_gone) ), nl,
    catch(current_predicate(4), error(E1, _), (write(E1), nl)),
    catch(current_predicate(0/dog), error(E2, _), (write(E2), nl)),
    catch(current_predicate(f/ -1), error(E3, _), (write(E3), nl)),
    S = zz/2, ( current_predicate(S) -> write(var_spec_bad) ; write(var_spec_ok) ), nl,
    catch(halt(a), error(E4, _), (write(E4), nl)),
    catch(halt(_), error(E5, _), (write(E5), nl)).
memberchk(X, [Y|T]) :- ( X == Y -> true ; memberchk(X, T) ).
