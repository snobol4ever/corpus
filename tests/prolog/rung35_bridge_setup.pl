%---------------------------------------------------------------- 1 01_scc_basic
% rung35_bridge_setup/01_scc_basic — all three positions are concrete goals.
:- initialization(main).
main :-
    setup_call_cleanup(
        write(setup),
        (nl, write(goal), nl),
        (write(cleanup), nl)
    ).
%----------------------------------------------------------------- 2 02_call_var
% rung35_bridge_setup/02_call_var — Goal position is a Var.
:- initialization(main).
main :-
    G = (write(goal), nl),
    setup_call_cleanup(
        (write(setup), nl),
        G,
        (write(cleanup), nl)
    ).
%---------------------------------------------------------------- 3 03_setup_var
% rung35_bridge_setup/03_setup_var — Setup position is a Var.
:- initialization(main).
main :-
    S = (write(setup), nl),
    setup_call_cleanup(
        S,
        (write(goal), nl),
        (write(cleanup), nl)
    ).
%-------------------------------------------------------------- 4 04_cleanup_var
% rung35_bridge_setup/04_cleanup_var — Cleanup position is a Var.
:- initialization(main).
main :-
    C = (write(cleanup), nl),
    setup_call_cleanup(
        (write(setup), nl),
        (write(goal), nl),
        C
    ).
%---------------------------------------------------------- 5 05_cleanup_on_fail
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
