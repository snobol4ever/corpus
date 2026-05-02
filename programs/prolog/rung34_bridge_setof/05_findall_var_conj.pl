% rung34_bridge_setof/05_findall_var_conj
% findall/3 where goal Var is bound to a conjunction with a filter.
:- initialization(main).
num(10). num(20). num(30).
main :-
    G = (num(X), X > 15),
    findall(X, G, Xs),
    write(Xs), nl.
