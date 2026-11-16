% flower_field.pl -- the exercism Prolog exercise flower-field, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/flower_field.example.pl, then its tests flower_field_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

cell(Rows, X, Y, Cell) :-
    nth0(Y, Rows, Row),
    nth0(X, Row, Cell).

adjacent_flower(Rows, X, Y) :-
    between(-1, 1, Dx),
    between(-1, 1, Dy),
    NeighborX #= X + Dx,
    NeighborY #= Y + Dy,
    cell(Rows, NeighborX, NeighborY, '*').

annotate_cell(_, '*', _, _, '*') :- !.
annotate_cell(Rows, _, X, Y, AnnotatedCell) :-
    findall(1, adjacent_flower(Rows, X, Y), Flowers),
    length(Flowers, Count),
    (Count #= 0 -> AnnotatedCell = ' '; atom_number(AnnotatedCell, Count)).    

annotate_row(_, [], _, _, []) :- !.
annotate_row(Rows, [Cell|Cells], X, Y, [AnnotatedCell|AnnotatedCells]) :-
    NextX #= X + 1,
    annotate_cell(Rows, Cell, X, Y, AnnotatedCell),
    annotate_row(Rows, Cells, NextX, Y, AnnotatedCells).

annotate_board(_, [], _, []) :- !.
annotate_board(Rows, [Row|Rest], Y, [AnnotatedRow|AnnotatedRows]) :-
    NextY #= Y + 1,
    annotate_row(Rows, Row, 0, Y, AnnotatedRowChars),
    string_chars(AnnotatedRow, AnnotatedRowChars),
    annotate_board(Rows, Rest, NextY, AnnotatedRows), !.

annotate(Board, AnnotatedBoard) :-
    maplist(string_chars, Board, Rows),
    annotate_board(Rows, Rows, 0, AnnotatedBoard).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(flower_field).

    test(no_rows, condition(true)) :-
        annotate([], Annotated),
        Annotated == [].

    test(no_columns, condition(pending)) :-
        annotate([""], Annotated),
        Annotated == [""].

    test(no_flowers, condition(pending)) :-
        Board = [
            "   ", 
            "   ",
            "   "
        ],
        annotate(Board, Annotated),
        Annotated == [
            "   ",
            "   ",
            "   "
        ].

    test(garden_full_of_flowers, condition(pending)) :-
        Board = [
            "***",
            "***",
            "***"
        ],
        annotate(Board, Annotated),
        Annotated == [
            "***",
            "***",
            "***"
        ].

    test(flower_surrounded_by_spaces, condition(pending)) :-
        Board = [
            "   ",
            " * ",
            "   "
        ],
        annotate(Board, Annotated),
        Annotated == [
            "111",
            "1*1",
            "111"
        ].

    test(space_surrounded_by_flowers, condition(pending)) :-
        Board = [
            "***",
            "* *",
            "***"
        ],
        annotate(Board, Annotated),
        Annotated == [
            "***", 
            "*8*", 
            "***"
        ].

    test(horizontal_line, condition(pending)) :-
        Board = [" * * "],
        annotate(Board, Annotated),
        Annotated == ["1*2*1"].

    test(horizontal_line_flowers_at_edges, condition(pending)) :-
        Board = ["*   *"],
        annotate(Board, Annotated),
        Annotated == ["*1 1*"].

    test(vertical_line, condition(pending)) :-
        Board = [
            " ",
            "*",
            " ",
            "*",
            " "
        ],
        annotate(Board, Annotated),
        Annotated == [
            "1",
            "*",
            "2",
            "*",
            "1"
        ].

    test(vertical_line_flowers_at_edges, condition(pending)) :-
        Board = [
            "*",
            " ",
            " ",
            " ",
            "*"
        ],
        annotate(Board, Annotated),
        Annotated == [
            "*",
            "1",
            " ",
            "1",
            "*"
        ].

    test(cross, condition(pending)) :-
        Board = [
            "  *  ",
            "  *  ", 
            "*****",
            "  *  ",
            "  *  "
        ],
        annotate(Board, Annotated),
        Annotated == [
            " 2*2 ",
            "25*52",
            "*****",
            "25*52",
            " 2*2 "
        ].

    test(large_garden, condition(pending)) :-
        Board = [
            " *  * ",
            "  *   ",
            "    * ",
            "   * *",
            " *  * ",
            "      "
        ],
        annotate(Board, Annotated),
        Annotated == [
            "1*22*1",
            "12*322",
            " 123*2",
            "112*4*",
            "1*22*2",
            "111111"
        ].

:- end_tests(flower_field).
