% rung35_bridge_setup/05_cleanup_on_fail — Cleanup runs even when Goal fails.
:- initialization(main).
main :-
    G = fail,
    ( setup_call_cleanup(
        (write(setup), nl),
        G,
        (write(cleanup), nl)
      ) -> write(goal_ok) ; write(goal_failed) ),
    nl.
