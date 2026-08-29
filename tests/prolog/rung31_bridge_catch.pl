%----------------------------------------------------------- 1 01_var_goal_fails
% rung31_bridge_catch/01_var_goal_fails — goal-as-var that fails should be caught as failure.
% Bridge requirement: catch(Var, _, _) must dispatch the deref'd Term as a goal,
% not silently succeed via the default switch arm.
:- initialization(main).
main :-
    G = fail,
    ( catch(G, _, write(caught)) -> write(succeeded) ; write(failed) ),
    nl.
%----------------------------------------------------------- 2 02_var_goal_unify
% rung31_bridge_catch/02_var_goal_unify — goal-as-var binds caller-visible vars.
% Bridge requirement: when synth-EXPR walks the Term, TT_VAR slots must map to
% the caller's env cells (pointer-identity dedup) so unification threads
% bindings end-to-end through TT_REF chains.
:- initialization(main).
main :-
    G = (X = 5),
    catch(G, _, fail),
    write(X), nl.
%----------------------------------------------------------- 3 03_var_goal_arith
% rung31_bridge_catch/03_var_goal_arith — goal-as-var with arithmetic compound.
% Bridge requirement: Term→EXPR walker must recurse through arithmetic operators
% (TT_COMPOUND "+" arity 2 → E_ADD with E_ILIT children) so is/2's arith eval
% sees a real expression tree, not a wrapped E_VAR holding a compound Term.
:- initialization(main).
main :-
    G = (A is 3 + 4),
    catch(G, _, fail),
    write(A), nl.
