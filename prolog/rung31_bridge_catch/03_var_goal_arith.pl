% rung31_bridge_catch/03_var_goal_arith — goal-as-var with arithmetic compound.
% Bridge requirement: Term→EXPR walker must recurse through arithmetic operators
% (TT_COMPOUND "+" arity 2 → E_ADD with E_ILIT children) so is/2's arith eval
% sees a real expression tree, not a wrapped E_VAR holding a compound Term.
:- initialization(main).
main :-
    G = (A is 3 + 4),
    catch(G, _, fail),
    write(A), nl.
