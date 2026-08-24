% rung31_bridge_catch/05_var_goal_throw — goal-as-var throws; catch recovers.
% Bridge requirement: when the dispatched goal throws via the synth-EXPR path,
% the throw must propagate to catch/3's setjmp boundary, not be swallowed by
% the synthetic EXPR's lifetime cleanup.
%
% Note: catcher uses _ (anonymous) to test only that the throw propagates and
% recovery fires. Throw-payload unification (catcher = compound binding throw
% payload's args) is a separate capability — tested in PR-24 (rung_exception_iso).
:- initialization(main).

risky(X) :- X > 10, throw(too_big(X)).
risky(X) :- write(small(X)), nl.

main :-
    G = risky(99),
    catch(G, _, write(caught)),
    nl.
