% rung35_bridge_setup/03_setup_var — Setup position is a Var.
:- initialization(main).
main :-
    S = (write(setup), nl),
    setup_call_cleanup(
        S,
        (write(goal), nl),
        (write(cleanup), nl)
    ).
