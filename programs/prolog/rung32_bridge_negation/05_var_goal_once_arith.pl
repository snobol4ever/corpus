% rung32_bridge_negation/05_var_goal_once_arith — once(Var) with arith compound.
% Bridge requirement: once/1's bridge dispatch must recurse the Term→EXPR
% walker through arithmetic compounds (TT_COMPOUND "+" arity 2 → E_ADD)
% so is/2 inside the goal sees a real expression tree. Mirrors rung31
% test 03 but under once/1 instead of catch/3.
:- initialization(main).
main :-
    G = (A is 6 * 7),
    once(G),
    write(A), nl.
