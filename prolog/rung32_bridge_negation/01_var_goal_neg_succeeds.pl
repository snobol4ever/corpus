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
