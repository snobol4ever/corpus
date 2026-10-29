% zl06 -- balls thrown through nested calls that allocate, and type errors raised from the arithmetic runtime caught at every depth (DESIGN-PLAN zeta-layout, the cto 2026-10-29)
:- initialization(main).
deep(0, Acc, _) :- throw(bottom(Acc)).
deep(N, Acc, L) :- number_codes(N, Cs), atom_codes(NA, Cs), atom_concat(x, NA, A), M is N - 1, deep(M, [A|Acc], [N|L]).
arith(X, R) :- catch(R is X + 1, error(type_error(T, Culprit), _), R = caught(T, Culprit)).
run(0, Acc, Acc) :- !.
run(N, Acc0, Acc) :-
    catch(deep(25, [], []), bottom(L), (length(L, Len), Acc1 is Acc0 + Len)),
    arith(N, R1), arith(foo, R2),
    ( R1 =:= N + 1, R2 = caught(evaluable, _) -> Acc2 is Acc1 + 1 ; Acc2 = Acc1 ),
    M is N - 1, run(M, Acc2, Acc).
main :-
    run(80, 0, Acc), write(Acc), nl,
    arith(foo, R), write(R), nl,
    catch(deep(3, [], []), bottom(L), true), write(L), nl.
