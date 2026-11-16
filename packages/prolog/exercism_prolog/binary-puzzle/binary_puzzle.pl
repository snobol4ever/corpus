% binary_puzzle.pl -- the exercism Prolog exercise binary-puzzle, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/binary_puzzle.example.pl, then its tests binary_puzzle_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

binary_puzzle(Rows) :-
    length(Rows, Dimension),
    transpose(Rows, Cols),
    maplist(same_length(Rows), Rows),
    maplist(max_two_identical_consecutive_numbers, Rows),
    maplist(max_two_identical_consecutive_numbers, Cols),    
    maplist(binary_digits, Cols, ColsAsIntegers),
    maplist(binary_digits, Rows, RowsAsIntegers),
    all_different(RowsAsIntegers),
    all_different(ColsAsIntegers),
    Half #= Dimension // 2,
    maplist(zeros_and_ones_have_same_count(Half), Rows),
    maplist(zeros_and_ones_have_same_count(Half), Cols).

binary_digits(Digits, Decimal) :- 
    Digits ins 0..1,
    foldl([Digit,Acc,NewAcc]>>(NewAcc #= Acc << 1 + Digit), Digits, 0, Decimal).

zeros_and_ones_have_same_count(Count, Digits) :-
    global_cardinality(Digits, [0-Count, 1-Count]).

max_two_identical_consecutive_numbers([_, _]).
max_two_identical_consecutive_numbers([X, Y, Z | Rest]) :-
    X #= Y #==> Y #\= Z,
    Y #= Z #==> X #\= Z,
    max_two_identical_consecutive_numbers([Y, Z | Rest]).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(binary_puzzle).

    test(puzzle_4x4, condition(true)) :-
        Rows = 
            [
                [_, 1, _, 0],
                [_, _, 0, 1],
                [_, 0, _, _],
                [1, 1, _, 0]
            ],
        binary_puzzle(Rows),
        maplist(label, Rows),
        Rows == 
            [
                [0, 1, 1, 0],
                [1, 0, 0, 1],
                [0, 0, 1, 1],
                [1, 1, 0, 0]
            ].

    test(puzzle_6x6, condition(pending)) :-
        Rows = 
            [
                [1, _, _, 0, _, _],
                [_, _, 0, 0, _, 1],
                [_, 0, 0, _, _, 1],
                [_, _, _, _, _, _],
                [0, 0, _, 1, _, _],
                [_, 1, _, _, 0, 0]
            ],
        binary_puzzle(Rows),
        maplist(label, Rows),
        Rows == 
            [
                [1, 0, 1, 0, 1, 0],
                [0, 1, 0, 0, 1, 1],
                [1, 0, 0, 1, 0, 1],
                [0, 1, 1, 0, 1, 0],
                [0, 0, 1, 1, 0, 1],
                [1, 1, 0, 1, 0, 0]
            ].

    test(puzzle_12x12, condition(pending)) :-
        Rows = 
            [
                [_, _, 1, _, _, _, _, 0, _, _, 0, _],
                [_, _, _, 1, _, 0, _, _, 1, _, _, 1],
                [_, _, 0, _, 0, _, _, _, _, 0, _, 1],
                [1, _, 0, _, _, _, 0, 0, _, _, _, _],
                [_, 1, _, _, _, _, _, _, _, _, _, 1],
                [_, _, _, _, 1, _, _, _, _, 0, _, _],
                [_, _, _, _, _, _, 1, _, 0, 0, _, _],
                [_, _, 0, _, _, _, _, 1, _, _, 1, _],
                [1, _, 0, 0, _, _, _, _, _, 0, _, _],
                [_, _, _, _, _, 1, _, _, _, 0, _, 0],
                [_, 0, _, _, _, _, 0, _, _, _, 1, _],
                [0, 0, _, 1, _, 1, _, 1, _, 1, _, _]
            ],
        binary_puzzle(Rows),
        maplist(label, Rows),
        Rows == 
            [
                [0, 1, 1, 0, 1, 1, 0, 0, 1, 1, 0, 0],
                [0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0, 1],
                [1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1, 1],
                [1, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0],
                [0, 1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 1],
                [1, 0, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1],
                [0, 1, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0],
                [1, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0],
                [1, 1, 0, 0, 1, 0, 1, 0, 1, 0, 0, 1],
                [0, 1, 1, 0, 0, 1, 1, 0, 1, 0, 1, 0],
                [1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 1, 0],
                [0, 0, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1]
            ].

:- end_tests(binary_puzzle).
