% rung35_bridge_setup/01_scc_basic — all three positions are concrete goals.
:- initialization(main).
main :-
    setup_call_cleanup(
        write(setup),
        (nl, write(goal), nl),
        (write(cleanup), nl)
    ).
