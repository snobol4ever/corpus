%--------------------------------------------------------- 1 03_findall_var_fail
% rung34_bridge_setof/03_findall_var_fail
% findall/3 with goal-as-Var that always fails. Should produce empty list (not exception).
:- initialization(main).
main :-
    G = fail,
    findall(X, G, Xs),
    write(Xs), nl.
