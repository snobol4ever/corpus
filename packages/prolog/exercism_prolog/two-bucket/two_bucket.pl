% two_bucket.pl -- the exercism Prolog exercise two-bucket, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/two_bucket.example.pl, then its tests two_bucket_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

action((_,MaxB), (A, B), (A1, B1)) :- 
    A #> 0, B #< MaxB,
    Fill #= min(A, MaxB - B),
    A1 #= A - Fill,
    B1 #= B + Fill.
action((_,_), (A, B), (A, 0)) :- B #> 0.
action((MaxA,_), (A, B), (MaxA, B)) :- A #< MaxA.

measurement(Visited, GoalBucket, OtherBucket, Measurement) :-
    length(Visited, Moves),
    Measurement = measurement(moves(Moves), goalBucket(GoalBucket), otherBucket(OtherBucket)).

solve(Goal, (MaxA, Goal), (0, 0), _, Measurement) :- measurement([(MaxA, Goal), (MaxA, 0)], two, MaxA, Measurement).
solve(Goal, _, (Goal, Other), Visited, Measurement) :- measurement(Visited, one, Other, Measurement).
solve(Goal, _, (Other, Goal), Visited, Measurement) :- measurement(Visited, two, Other, Measurement).
solve(Goal, Capacity, State, Visited, Measurement) :-
    action(Capacity, State, Next),
    \+ member(Next, Visited),
    solve(Goal, Capacity, Next, [State|Visited], Measurement).

flip_measurement(measurement(Moves, goalBucket(one), Other), measurement(Moves, goalBucket(two), Other)).
flip_measurement(measurement(Moves, goalBucket(two), Other), measurement(Moves, goalBucket(one), Other)).

measure(MaxA, MaxB, Goal, one, Measurement) :-
    solve(Goal, (MaxA, MaxB), (MaxA, 0), [(MaxA, 0)], Measurement), !.

measure(MaxA, MaxB, Goal, two, Measurement) :-
    solve(Goal, (MaxB, MaxA), (MaxB, 0), [(MaxB, 0)], FlippedMeasurement),
    flip_measurement(FlippedMeasurement, Measurement), !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(two_bucket).

    test(measure_using_bucket_one_of_size_3_and_bucket_two_of_size_5_start_with_bucket_one, condition(true)) :-
        measure(3, 5, 1, one, Measurement),
        Measurement == measurement(moves(4), goalBucket(one), otherBucket(5)).

    test(measure_using_bucket_one_of_size_3_and_bucket_two_of_size_5_start_with_bucket_two, condition(pending)) :-
        measure(3, 5, 1, two, Measurement),
        Measurement == measurement(moves(8), goalBucket(two), otherBucket(3)).

    test(measure_using_bucket_one_of_size_7_and_bucket_two_of_size_11_start_with_bucket_one, condition(pending)) :-
        measure(7, 11, 2, one, Measurement),
        Measurement == measurement(moves(14), goalBucket(one), otherBucket(11)).

    test(measure_using_bucket_one_of_size_7_and_bucket_two_of_size_11_start_with_bucket_two, condition(pending)) :-
        measure(7, 11, 2, two, Measurement),
        Measurement == measurement(moves(18), goalBucket(two), otherBucket(7)).

    test(measure_one_step_using_bucket_one_of_size_1_and_bucket_two_of_size_3_start_with_bucket_two, condition(pending)) :-
        measure(1, 3, 3, two, Measurement),
        Measurement == measurement(moves(1), goalBucket(two), otherBucket(0)).

    test(measure_using_bucket_one_of_size_2_and_bucket_two_of_size_3_start_with_bucket_one_and_end_with_bucket_two, condition(pending)) :-
        measure(2, 3, 3, one, Measurement),
        Measurement == measurement(moves(2), goalBucket(two), otherBucket(2)).

    test(measure_using_bucket_one_much_bigger_than_bucket_two, condition(pending)) :-
        measure(5, 1, 2, one, Measurement),
        Measurement == measurement(moves(6), goalBucket(one), otherBucket(1)).

    test(measure_using_bucket_one_much_smaller_than_bucket_two, condition(pending)) :-
        measure(3, 15, 9, one, Measurement),
        Measurement == measurement(moves(6), goalBucket(two), otherBucket(0)).

    test(not_possible_to_reach_the_goal, [fail, condition(pending)]) :-
        measure(6, 15, 5, one, _).

    test(with_the_same_buckets_but_a_different_goal_then_it_is_possible, condition(pending)) :-
        measure(6, 15, 9, one, Measurement),
        Measurement == measurement(moves(10), goalBucket(two), otherBucket(0)).

    test(goal_larger_than_both_buckets_is_impossible, [fail, condition(pending)]) :-
        measure(5, 7, 8, one, _).

:- end_tests(two_bucket).
