% eliuds_eggs.pl -- the exercism Prolog exercise eliuds-eggs, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/eliuds_eggs.example.pl, then its tests eliuds_eggs_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

egg_count(0, 0) :- !.
egg_count(EncodedCount, Count) :-
    NewEncodedCount #= EncodedCount >> 1,
    egg_count(NewEncodedCount, NewCount),
    Count #= NewCount + (EncodedCount /\ 1).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(eliuds_eggs).

    test(zero_eggs, condition(true)) :-
        egg_count(0, Count), Count == 0.

    test(one_egg, condition(pending)) :-
        egg_count(16, Count), Count == 1.

    test(four_eggs, condition(pending)) :-
        egg_count(89, Count), Count == 4.

    test(thirteen_eggs, condition(pending)) :-
        egg_count(2000000000, Count), Count == 13.

:- end_tests(eliuds_eggs).
