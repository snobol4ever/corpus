main :-
    thread_create(say("Enjoy"),A,[]),
    thread_create(say("Rosetta"),B,[]),
    thread_create(say("Code"),C,[]),
    thread_join(A,_),
    thread_join(B,_),
    thread_join(C,_).

say(Message) :-
    Delay is random_float,
    sleep(Delay),
    writeln(Message).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines main/0 and never calls it; the driver calls it once at load.
:- initialization(main).
