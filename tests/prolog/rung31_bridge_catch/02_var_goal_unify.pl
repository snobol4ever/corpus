% rung31_bridge_catch/02_var_goal_unify — goal-as-var binds caller-visible vars.
% Bridge requirement: when synth-EXPR walks the Term, TT_VAR slots must map to
% the caller's env cells (pointer-identity dedup) so unification threads
% bindings end-to-end through TT_REF chains.
:- initialization(main).
main :-
    G = (X = 5),
    catch(G, _, fail),
    write(X), nl.
