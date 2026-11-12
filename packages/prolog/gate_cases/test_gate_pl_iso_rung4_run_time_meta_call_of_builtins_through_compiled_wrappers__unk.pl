:- initialization(main).
main :- set_prolog_flag(unknown, fail), G = nothere(1,2), ( call(G) -> write(bad) ; write(unknown_fail_ok) ), nl, ( call(G) -> write(bad) ; write(unknown_fail_ok) ), nl, halt.
