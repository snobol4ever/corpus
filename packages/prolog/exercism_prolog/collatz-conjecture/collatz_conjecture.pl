% collatz_conjecture.pl -- the exercism Prolog exercise collatz-conjecture, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/collatz_conjecture.example.pl, then its tests collatz_conjecture_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
collatz_steps(1, 0) :- !.

collatz_steps(N, Steps) :- 
    N > 1,
    (0 is mod(N, 2), M is (N / 2); M is (N * 3 + 1)),
    collatz_steps(M, MSteps),
    Steps is MSteps + 1,
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(collatz_conjecture).

    test(zero_steps_for_one, condition(true)) :-
        collatz_steps(1, Steps), Steps == 0.

    test(divide_if_even, condition(pending)) :-
        collatz_steps(16, Steps), Steps == 4.

    test(even_and_odd_steps, condition(pending)) :-
        collatz_steps(12, Steps), Steps == 9.

    test(large_number_of_even_and_odd_steps, condition(pending)) :-
        collatz_steps(1_000_000, Steps), Steps == 152.

    test(zero_is_an_error, [fail, condition(pending)]) :-
        collatz_steps(0, _).

    test(negative_value_is_an_error, [fail, condition(pending)]) :-
        collatz_steps(-1, _).

:- end_tests(collatz_conjecture).
