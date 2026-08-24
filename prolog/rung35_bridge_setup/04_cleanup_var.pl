% rung35_bridge_setup/04_cleanup_var — Cleanup position is a Var.
:- initialization(main).
main :-
    C = (write(cleanup), nl),
    setup_call_cleanup(
        (write(setup), nl),
        (write(goal), nl),
        C
    ).
