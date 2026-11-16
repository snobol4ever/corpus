% yacht.pl -- the exercism Prolog exercise yacht, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/yacht.example.pl, then its tests yacht_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

score([X, X, X, X, X], yacht, 50) :- !.

score(Dice, little_straight, 30) :- sort(Dice, [1, 2, 3, 4, 5]), !.
score(Dice, big_straight, 30) :- sort(Dice, [2, 3, 4, 5, 6]), !.

score(Dice, ones, Score)   :- singles_score(Dice, 1, Score), !.
score(Dice, twos, Score)   :- singles_score(Dice, 2, Score), !.
score(Dice, threes, Score) :- singles_score(Dice, 3, Score), !.
score(Dice, fours, Score)  :- singles_score(Dice, 4, Score), !.
score(Dice, fives, Score)  :- singles_score(Dice, 5, Score), !.
score(Dice, sixes, Score)  :- singles_score(Dice, 6, Score), !.

score(Dice, full_house, Score) :-
    (sort(0, @=<, Dice, [X, X, Y, Y, Y]);
     sort(0, @=<, Dice, [X, X, X, Y, Y])),
    X \= Y,
    sum_list(Dice, Score), !.

score(Dice, four_of_a_kind, Score) :-
    (sort(0, @=<, Dice, [_, X, X, X, X]);
     sort(0, @=<, Dice, [X, X, X, X, _])),
    Score #= X * 4, !.

score(Dice, choice, Score) :- sum_list(Dice, Score), !.

score(_, _, 0).

singles_score(Dice, Die, Score) :-
    include(=(Die), Dice, Ones),
    sum_list(Ones, Score).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(yacht).

    test(yacht, condition(true)) :-
        score([5, 5, 5, 5, 5], yacht, Score),
        Score == 50.

    test(not_yacht, condition(pending)) :-
        score([1, 3, 3, 2, 5], yacht, Score),
        Score == 0.

    test(ones, condition(pending)) :-
        score([1, 1, 1, 3, 5], ones, Score),
        Score == 3.

    test(ones_out_of_order, condition(pending)) :-
        score([3, 1, 1, 5, 1], ones, Score),
        Score == 3.

    test(no_ones, condition(pending)) :-
        score([4, 3, 6, 5, 5], ones, Score),
        Score == 0.

    test(twos, condition(pending)) :-
        score([2, 3, 4, 5, 6], twos, Score),
        Score == 2.

    test(fours, condition(pending)) :-
        score([1, 4, 1, 4, 1], fours, Score),
        Score == 8.

    test(yacht_counted_as_threes, condition(pending)) :-
        score([3, 3, 3, 3, 3], threes, Score),
        Score == 15.

    test(yacht_of_3s_counted_as_fives, condition(pending)) :-
        score([3, 3, 3, 3, 3], fives, Score),
        Score == 0.

    test(fives, condition(pending)) :-
        score([1, 5, 3, 5, 3], fives, Score),
        Score == 10.

    test(sixes, condition(pending)) :-
        score([2, 3, 4, 5, 6], sixes, Score),
        Score == 6.

    test(full_house_two_small_three_big, condition(pending)) :-
        score([2, 2, 4, 4, 4], full_house, Score),
        Score == 16.

    test(full_house_three_small_two_big, condition(pending)) :-
        score([5, 3, 3, 5, 3], full_house, Score),
        Score == 19.

    test(two_pair_is_not_a_full_house, condition(pending)) :-
        score([2, 2, 4, 4, 5], full_house, Score),
        Score == 0.

    test(four_of_a_kind_is_not_a_full_house, condition(pending)) :-
        score([1, 4, 4, 4, 4], full_house, Score),
        Score == 0.

    test(yacht_is_not_a_full_house, condition(pending)) :-
        score([2, 2, 2, 2, 2], full_house, Score),
        Score == 0.

    test(four_of_a_kind, condition(pending)) :-
        score([6, 6, 4, 6, 6], four_of_a_kind, Score),
        Score == 24.

    test(yacht_can_be_scored_as_four_of_a_kind, condition(pending)) :-
        score([3, 3, 3, 3, 3], four_of_a_kind, Score),
        Score == 12.

    test(full_house_is_not_four_of_a_kind, condition(pending)) :-
        score([3, 3, 3, 5, 5], four_of_a_kind, Score),
        Score == 0.

    test(little_straight, condition(pending)) :-
        score([3, 5, 4, 1, 2], little_straight, Score),
        Score == 30.

    test(little_straight_as_big_straight, condition(pending)) :-
        score([1, 2, 3, 4, 5], big_straight, Score),
        Score == 0.

    test(four_in_order_but_not_a_little_straight, condition(pending)) :-
        score([1, 1, 2, 3, 4], little_straight, Score),
        Score == 0.

    test(no_pairs_but_not_a_little_straight, condition(pending)) :-
        score([1, 2, 3, 4, 6], little_straight, Score),
        Score == 0.

    test(minimum_is_1_maximum_is_5_but_not_a_little_straight, condition(pending)) :-
        score([1, 1, 3, 4, 5], little_straight, Score),
        Score == 0.

    test(big_straight, condition(pending)) :-
        score([4, 6, 2, 5, 3], big_straight, Score),
        Score == 30.

    test(big_straight_as_little_straight, condition(pending)) :-
        score([6, 5, 4, 3, 2], little_straight, Score),
        Score == 0.

    test(no_pairs_but_not_a_big_straight, condition(pending)) :-
        score([6, 5, 4, 3, 1], big_straight, Score),
        Score == 0.

    test(choice, condition(pending)) :-
        score([3, 3, 5, 6, 6], choice, Score),
        Score == 23.

    test(yacht_as_choice, condition(pending)) :-
        score([2, 2, 2, 2, 2], choice, Score),
        Score == 10.

:- end_tests(yacht).
