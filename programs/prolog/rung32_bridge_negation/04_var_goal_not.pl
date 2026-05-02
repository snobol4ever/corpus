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
