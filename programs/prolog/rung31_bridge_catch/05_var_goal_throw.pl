% rung31_bridge_catch/05_var_goal_throw — goal-as-var throws; catch recovers.
% Bridge requirement: when the dispatched goal throws via the synth-EXPR path,
% the throw must propagate to catch/3's setjmp boundary, not be swallowed by
% the synthetic EXPR's lifetime cleanup.
:- initialization(main).

risky(X) :- X > 10, throw(too_big(X)).
risky(X) :- write(small(X)), nl.

main :-
    G = risky(99),
    catch(G, too_big(N), (write(caught), write(' '), write(N))),
    nl.
