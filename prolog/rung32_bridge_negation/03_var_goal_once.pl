% rung32_bridge_negation/03_var_goal_once — once(Var) where Var binds caller var.
% Bridge requirement: once/1 with goal_e->kind == E_VAR must dispatch the
% deref'd Term through the bridge, AND the bridge's env-share must propagate
% caller-visible bindings. This mirrors rung31 test 02 but for once/1.
:- initialization(main).
main :-
    G = (X = 7),
    once(G),
    write(X), nl.
