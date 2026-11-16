% flatten_array.pl -- the exercism Prolog exercise flatten-array, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/flatten_array.example.pl, then its tests flatten_array_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
flatten_list([], []) :- !.

flatten_list([X|Xs], Flattened) :-
    X = nil,
    flatten_list(Xs, Flattened),
    !.

flatten_list([X|Xs], Flattened) :-
    is_list(X),
    flatten_list(X, XFlattened),
    flatten_list(Xs, XsFlattened),
    append(XFlattened, XsFlattened, Flattened),
    !.

flatten_list([X|Xs], [X|Flattened]) :-
    flatten_list(Xs, Flattened),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(flatten_array).

    test(empty, condition(true)) :-
        flatten_list([], Flattened),
        Flattened == [].

    test(no_nesting, condition(pending)) :-
        flatten_list([0, 1, 2], Flattened),
        Flattened == [0, 1, 2].

    test(flattens_a_nested_array, condition(pending)) :-
        flatten_list([[[]]], Flattened),
        Flattened == [].

    test(flattens_array_with_just_integers_present, condition(pending)) :-
        flatten_list([
            1,
            [2, 3, 4, 5, 6, 7],
            8
        ], Flattened),
        Flattened == [1, 2, 3, 4, 5, 6, 7, 8].

    test(five_level_nesting, condition(pending)) :-
        flatten_list([
            0,
            2,
            [
                [2, 3],
                8,
                100,
                4,
                [[[50]]]
            ],
            -2
        ], Flattened),
        Flattened == [0, 2, 2, 3, 8, 100, 4, 50, -2].

    test(six_level_nesting, condition(pending)) :-
        flatten_list([
            1,
            [
                2,
                [[3]],
                [4, [[5]]],
                6,
                7
            ],
            8
        ], Flattened),
        Flattened == [1, 2, 3, 4, 5, 6, 7, 8].

    test(nil_values_are_omitted_from_the_final_result, condition(pending)) :-
        flatten_list([1, 2, nil], Flattened),
        Flattened == [1, 2].

    test(consecutive_nil_values_at_the_front_of_the_list_are_omitted_from_the_final_result, condition(pending)) :-
        flatten_list([nil, nil, 3], Flattened),
        Flattened == [3].

    test(consecutive_nil_values_in_the_middle_of_the_list_are_omitted_from_the_final_result, condition(pending)) :-
        flatten_list([1, nil, nil, 4], Flattened),
        Flattened == [1, 4].

    test(six_level_nest_list_with_nil_values, condition(pending)) :-
        flatten_list([
            0,
            2,
            [
                [2, 3],
                8,
                [[100]],
                nil,
                [[nil]]
            ],
            -2
        ], Flattened),
        Flattened == [0, 2, 2, 3, 8, 100, -2].

    test(all_values_in_nested_list_are_nil, condition(pending)) :-
        flatten_list([
            nil,
            [[[nil]]],
            nil,
            nil,
            [[nil, nil], nil],
            nil
        ], Flattened),
        Flattened == [].

:- end_tests(flatten_array).
