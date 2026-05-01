% rung31_bridge_catch/01_var_goal_fails — goal-as-var that fails should be caught as failure.
% Bridge requirement: catch(Var, _, _) must dispatch the deref'd Term as a goal,
% not silently succeed via the default switch arm.
:- initialization(main).
main :-
    G = fail,
    ( catch(G, _, write(caught)) -> write(succeeded) ; write(failed) ),
    nl.
