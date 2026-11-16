% series.pl -- the exercism Prolog exercise series, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/series.example.pl, then its tests series_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

slices(Input, Size, After, [Slice|Slices]) :-
    sub_string(Input, After, Size, _, Slice),
    NewAfter #= After + 1,
    slices(Input, Size, NewAfter, Slices), !.

slices(_, _, _, []).

slices(Input, Size, Slices) :-
    string_length(Input, Length),
    Size in 1..Length,
    slices(Input, Size, 0, Slices).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(series).

    test(slices_of_one_from_one, condition(true)) :-
        slices("1", 1, Slices),
        Slices == ["1"].

    test(slices_of_one_from_two, condition(pending)) :-
        slices("12", 1, Slices),
        Slices == ["1", "2"].

    test(slices_of_two, condition(pending)) :-
        slices("35", 2, Slices),
        Slices == ["35"].

    test(slices_of_two_overlap, condition(pending)) :-
        slices("9142", 2, Slices),
        Slices == ["91", "14", "42"].

    test(slices_can_include_duplicates, condition(pending)) :-
        slices("777777", 3, Slices),
        Slices == ["777", "777", "777", "777"].

    test(slices_of_a_long_series, condition(pending)) :-
        slices("918493904243", 5, Slices),
        Slices == ["91849", "18493", "84939", "49390", "93904", "39042", "90424", "04243"].

    test(slice_length_is_too_large, [fail, condition(pending)]) :-
        slices("12345", 6, _).

    test(slice_length_is_way_too_large, [fail, condition(pending)]) :-
        slices("12345", 42, _).

    test(slice_length_cannot_be_zero, [fail, condition(pending)]) :-
        slices("12345", 0, _).

    test(slice_length_cannot_be_negative, [fail, condition(pending)]) :-
        slices("123", -1, _).

    test(empty_series_is_invalid, [fail, condition(pending)]) :-
        slices("", 1, _).

:- end_tests(series).
