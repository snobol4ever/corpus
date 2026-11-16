% pythagorean_triplet.pl -- the exercism Prolog exercise pythagorean-triplet, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/pythagorean_triplet.example.pl, then its tests pythagorean_triplet_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
triplet(Sum, (A, B, C)) :-
    MaxA is Sum//3,
    between(1, MaxA, A),
    MaxB is Sum//2,
    between(A, MaxB, B),
    C is Sum - A - B,
    A*A + B*B =:= C*C.

triplets(Sum, Triplets) :- 
    findall(Triplet, triplet(Sum, Triplet), Triplets).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(pythagorean_triplet).

    test(triplets_whose_sum_is_12, condition(true)) :-
        triplets(12, Triplets),
        Triplets == [(3, 4, 5)].

    test(triplets_whose_sum_is_108, condition(pending)) :-
        triplets(108, Triplets),
        Triplets == [(27, 36, 45)].

    test(triplets_whose_sum_is_1000, condition(pending)) :-
        triplets(1000, Triplets),
        Triplets == [(200, 375, 425)].

    test(no_matching_triplets_for_1001, condition(pending)) :-
        triplets(1001, Triplets),
        Triplets == [].

    test(returns_all_matching_triplets, condition(pending)) :-
        triplets(90, Triplets),
        Triplets == [(9, 40, 41), (15, 36, 39)].

    test(several_matching_triplets, condition(pending)) :-    
        triplets(840, Triplets),
        Triplets == [
            (40, 399, 401),
            (56, 390, 394),
            (105, 360, 375),
            (120, 350, 370),
            (140, 336, 364),
            (168, 315, 357),
            (210, 280, 350),
            (240, 252, 348)
        ].

:- end_tests(pythagorean_triplet).

% BONUS TESTS
bonus :-
    current_prolog_flag(argv, ['--bonus'|_]).

:- begin_tests(pythagorean_triplet_bonus, [condition(bonus)]).

    test(triplets_for_large_number, condition(pending)) :-
        triplets(30000, Triplets),
        Triplets == [
            (1200, 14375, 14425),
            (1875, 14000, 14125),
            (5000, 12000, 13000),
            (6000, 11250, 12750),
            (7500, 10000, 12500)
        ].

:- end_tests(pythagorean_triplet_bonus).
