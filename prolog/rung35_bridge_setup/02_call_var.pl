% rung35_bridge_setup/02_call_var — Goal position is a Var.
:- initialization(main).
main :-
    G = (write(goal), nl),
    setup_call_cleanup(
        (write(setup), nl),
        G,
        (write(cleanup), nl)
    ).
