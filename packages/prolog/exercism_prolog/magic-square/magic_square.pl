% magic_square.pl -- the exercism Prolog exercise magic-square, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/magic_square.example.pl, then its tests magic_square_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

diagonals(Rows, LeftRightDiagonal, RightLeftDiagonal) :-
    length(Rows, N),
    numlist(1, N, Indices),
    reverse(Indices, ReverseIndices),
    pairs_keys_values(LeftRightIndices, Indices, Indices),    
    pairs_keys_values(RightLeftIndices, ReverseIndices, Indices),
    maplist(diagonal_element(Rows), LeftRightIndices, LeftRightDiagonal),
    maplist(diagonal_element(Rows), RightLeftIndices, RightLeftDiagonal).

diagonal_element(Rows, X-Y, Value) :- nth1(Y, Rows, Row), nth1(X, Row, Value).

magic_square(Rows) :-
    maplist(sumlist, Rows, RowSums),
    transpose(Rows, Cols),
    maplist(sumlist, Cols, ColSums),
    diagonals(Rows, LeftRightDiagonal, RightLeftDiagonal),
    sumlist(LeftRightDiagonal, LeftRightDiagonalSum),
    sumlist(RightLeftDiagonal, RightLeftDiagonalSum),
    append([RowSums, ColSums, [LeftRightDiagonalSum, RightLeftDiagonalSum]], Sums),
    sort(Sums, SortedSums),
    length(SortedSums, 1).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(magic_square).

    test(magic_square_order_3, condition(true)) :-
        Square = 
            [
                [2, 7, 6],
                [9, 5, 1],
                [4, 3, 8]
            ],
        magic_square(Square).

    test(magic_square_order_4, condition(pending)) :-
        Square = 
            [
                [ 2, 16, 13,  3],
                [11,  5,  8, 10],
                [ 7,  9, 12,  6],
                [14,  4,  1, 15]
            ],
        magic_square(Square).

    test(magic_square_order_9, condition(pending)) :-
        Square = 
            [
                [31, 76, 13, 36, 81, 18, 29, 74, 11],
                [22, 40, 58, 27, 45, 63, 20, 38, 56],
                [67,  4, 49, 72,  9, 54, 65,  2, 47],
                [30, 75, 12, 32, 77, 14, 34, 79, 16],
                [21, 39, 57, 23, 41, 59, 25, 43, 61],
                [66,  3, 48, 68,  5, 50, 70,  7, 52],
                [35, 80, 17, 28, 73, 10, 33, 78, 15],
                [26, 44, 62, 19, 37, 55, 24, 42, 60],
                [71,  8, 53, 64,  1, 46, 69,  6, 51]
            ],
        magic_square(Square).

    test(invalid_magic_square, [fail, condition(pending)]) :-
        Square = 
            [
                [1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]
            ],
        magic_square(Square).

:- end_tests(magic_square).
