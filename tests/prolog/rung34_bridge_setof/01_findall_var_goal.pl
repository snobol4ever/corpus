% rung34_bridge_setof/01_findall_var_goal
% findall/3 where the goal argument is a Var bound to a callable term.
% Bridge requirement: findall(X, G, Xs) must dispatch G as a goal when G is a Var.
:- initialization(main).
item(a). item(b). item(c).
main :-
    G = item(X),
    findall(X, G, Xs),
    write(Xs), nl.
