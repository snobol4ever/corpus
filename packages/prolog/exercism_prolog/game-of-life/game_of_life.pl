% game_of_life.pl -- the exercism Prolog exercise game-of-life, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/game_of_life.example.pl, then its tests game_of_life_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

cell(Rows, X, Y, Cell) :- nth1(Y, Rows, Row), nth1(X, Row, Cell).

live_neighbor(Rows, X, Y) :-
    between(-1, 1, Dx),
    between(-1, 1, Dy),
    NeighborX #= X + Dx,
    NeighborY #= Y + Dy,
    (NeighborX #\= X #\/ NeighborY #\= Y),
    cell(Rows, NeighborX, NeighborY, 1).

next_cell(Rows, Y, Cell, X, NextCell) :-
    findall(1, live_neighbor(Rows, X, Y), LiveNeighbors),
    length(LiveNeighbors, Count),
    (Count #= 3; Count #= 2, Cell = 1) -> NextCell = 1; NextCell = 0.

next_row(Rows, Y, Row, NextRow) :-
    length(Row, Length),
    numlist(1, Length, Xs),
    maplist(next_cell(Rows, Y), Row, Xs, NextRow).

tick([], []) :- !.
tick(Current, Next) :-
    length(Current, Height),
    numlist(1, Height, Ys),
    maplist(next_row(Current), Ys, Current, Next).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(game_of_life).

    test(empty_matrix, condition(true)) :-
        Current = [],
        tick(Current, Next),
        Next == [].

    test(live_cells_with_zero_live_neighbors_die, condition(pending)) :-
        Current = [
            [0, 0, 0],
            [0, 1, 0],
            [0, 0, 0]
        ],
        tick(Current, Next),
        Next == [
            [0, 0, 0],
            [0, 0, 0],
            [0, 0, 0]
        ].

    test(live_cells_with_only_one_live_neighbor_die, condition(pending)) :-
        Current = [
            [0, 0, 0],
            [0, 1, 0],
            [0, 1, 0]
        ],
        tick(Current, Next),
        Next == [
            [0, 0, 0],
            [0, 0, 0],
            [0, 0, 0]
        ].

    test(live_cells_with_two_live_neighbors_stay_alive, condition(pending)) :-
        Current = [
            [1, 0, 1],
            [1, 0, 1],
            [1, 0, 1]
        ],
        tick(Current, Next),
        Next == [
            [0, 0, 0],
            [1, 0, 1],
            [0, 0, 0]
        ].

    test(live_cells_with_three_live_neighbors_stay_alive, condition(pending)) :-
        Current = [
            [0, 1, 0],
            [1, 0, 0],
            [1, 1, 0]
        ],
        tick(Current, Next),
        Next == [
            [0, 0, 0],
            [1, 0, 0],
            [1, 1, 0]
        ].

    test(dead_cells_with_three_live_neighbors_become_alive, condition(pending)) :-
        Current = [
            [1, 1, 0],
            [0, 0, 0],
            [1, 0, 0]
        ],
        tick(Current, Next),
        Next == [
            [0, 0, 0],
            [1, 1, 0],
            [0, 0, 0]
        ].

    test(live_cells_with_four_or_more_neighbors_die, condition(pending)) :-
        Current = [
            [1, 1, 1],
            [1, 1, 1],
            [1, 1, 1]
        ],
        tick(Current, Next),
        Next == [
            [1, 0, 1],
            [0, 0, 0],
            [1, 0, 1]
        ].

    test(bigger_matrix, condition(pending)) :-
        Current = [
            [1, 1, 0, 1, 1, 0, 0, 0],
            [1, 0, 1, 1, 0, 0, 0, 0],
            [1, 1, 1, 0, 0, 1, 1, 1],
            [0, 0, 0, 0, 0, 1, 1, 0],
            [1, 0, 0, 0, 1, 1, 0, 0],
            [1, 1, 0, 0, 0, 1, 1, 1],
            [0, 0, 1, 0, 1, 0, 0, 1],
            [1, 0, 0, 0, 0, 0, 1, 1]
        ],
        tick(Current, Next),
        Next == [
            [1, 1, 0, 1, 1, 0, 0, 0],
            [0, 0, 0, 0, 0, 1, 1, 0],
            [1, 0, 1, 1, 1, 1, 0, 1],
            [1, 0, 0, 0, 0, 0, 0, 1],
            [1, 1, 0, 0, 1, 0, 0, 1],
            [1, 1, 0, 1, 0, 0, 0, 1],
            [1, 0, 0, 0, 0, 0, 0, 0],
            [0, 0, 0, 0, 0, 0, 1, 1]
        ].

:- end_tests(game_of_life).
