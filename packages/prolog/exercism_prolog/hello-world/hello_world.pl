% hello_world.pl -- the exercism Prolog exercise hello-world, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/hello_world.example.pl, then its tests hello_world_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
hello_world('Hello, World!').

% Please visit https://exercism.org/docs/tracks/prolog/installation
% for instructions on setting up prolog.
% Visit https://exercism.org/docs/tracks/prolog/tests
% for help running the tests for prolog exercises.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(hello_world).

    test(hello_world, condition(true)) :-
        hello_world('Hello, World!').

:- end_tests(hello_world).
