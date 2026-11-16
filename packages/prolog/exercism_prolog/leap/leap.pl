% leap.pl -- the exercism Prolog exercise leap, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/leap.example.pl, then its tests leap_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
leap(Year) :-
    0 is mod(Year, 4), not(0 is mod(Year, 100)), !;
    0 is mod(Year, 400).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(leap_tests).

    test(leap_year, condition(true)) :-
        leap(1996).

    test(standard_and_odd_year, condition(pending)) :-
        not(leap(1997)).

    test(standard_even_year, condition(pending)) :-
        not(leap(1998)).

    test(standard_nineteeth_century, condition(pending)) :-
        not(leap(1900)).

    test(standard_eighteenth_century, condition(pending)) :-
        not(leap(1800)).

    test(leap_twenty_fourth_century, condition(pending)) :-
        leap(2400).

    test(leap_y2k, condition(pending)) :-
        leap(2000).

:- end_tests(leap_tests).
