% rung34_bridge_setof/02_findall_var_goal_arith
% findall/3 where the goal Var contains an arithmetic expression.
:- initialization(main).
val(1). val(2). val(3).
main :-
    G = (val(X), Y is X * 2),
    findall(Y, G, Ys),
    write(Ys), nl.
