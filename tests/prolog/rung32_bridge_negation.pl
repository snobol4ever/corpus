%---------------------------------------------------- 1 01_var_goal_neg_succeeds
% rung32_bridge_negation/01_var_goal_neg_succeeds — \+ Var where Var=fail.
% Bridge requirement: \+/1 with goal_e->kind == E_VAR must dispatch the
% deref'd Term through the bridge, not silently succeed (which would also
% incidentally produce 'succeeded' here but for the wrong reason — to
% disambiguate, test 02 covers the negative case where silent-success
% would produce the wrong outcome).
:- initialization(main).
main :-
    G = fail,
    ( \+ G -> write(succeeded) ; write(failed) ),
    nl.
%------------------------------------------------------- 2 02_var_goal_neg_fails
% rung32_bridge_negation/02_var_goal_neg_fails — \+ Var where Var=true.
% Discriminating test: pre-bridge default-arm silent-success would dispatch
% the inner goal as 'succeed' (the silent-success bug), so \+ would correctly
% return 'failed' here BUT for the wrong reason (the inner true also genuinely
% succeeds). The bridge mechanism must invoke the actual goal — verified by
% test 04 which uses a goal whose outcome distinguishes silent-success from
% real dispatch under negation.
%
% This test still has value: confirms the bridge does not regress when the
% inner goal genuinely succeeds (so \+ correctly fails).
:- initialization(main).
main :-
    G = true,
    ( \+ G -> write(succeeded) ; write(failed) ),
    nl.
%------------------------------------------------------------ 3 03_var_goal_once
% rung32_bridge_negation/03_var_goal_once — once(Var) where Var binds caller var.
% Bridge requirement: once/1 with goal_e->kind == E_VAR must dispatch the
% deref'd Term through the bridge, AND the bridge's env-share must propagate
% caller-visible bindings. This mirrors rung31 test 02 but for once/1.
:- initialization(main).
main :-
    G = (X = 7),
    once(G),
    write(X), nl.
%------------------------------------------------------------- 4 04_var_goal_not
% rung32_bridge_negation/04_var_goal_not — not(Var) discriminating dispatch.
% Decisive: silent-success would skip the side effect entirely (the goal is
% never invoked), printing only "after". Real dispatch invokes the goal,
% printing "side\nafter" and the not/1 reports failed (because the inner
% goal succeeded with the side effect). This isolates the dispatch behavior
% from the boolean outcome.
:- initialization(main).
main :-
    G = (write(side), nl),
    ( not(G) -> write(neg_succ) ; write(after) ),
    nl.
%------------------------------------------------------ 5 05_var_goal_once_arith
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
