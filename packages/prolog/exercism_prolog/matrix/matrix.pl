% matrix.pl -- the exercism Prolog exercise matrix, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/matrix.example.pl, then its tests matrix_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(dcg/basics)).
:- use_module(library(clpfd)).

columns([Value|Values]) --> integer(Value), " ", columns(Values).
columns([Value]) --> integer(Value).

rows([Row|Rows]) --> columns(Row), "\n", rows(Rows).
rows([Row]) --> columns(Row).

parse(Matrix, Rows) :-
    string_codes(Matrix, Codes),
    phrase(rows(Rows), Codes),
    !.

row(Matrix, Y, Row) :-
    parse(Matrix, Rows),
    nth1(Y, Rows, Row).

column(Matrix, X, Column) :-
    parse(Matrix, Rows),
    transpose(Rows, Columns),
    nth1(X, Columns, Column).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(matrix).

    test(extract_row_from_one_number_matrix, condition(true)) :-
        row("1", 1, Row),
        Row == [1].

    test(can_extract_row, condition(pending)) :-
        row("1 2\n3 4", 2, Row),
        Row == [3, 4].

    test(extract_row_where_numbers_have_different_widths, condition(pending)) :-
        row("1 2\n10 20", 2, Row),
        Row == [10, 20].

    test(can_extract_row_from_non_square_matrix_with_no_corresponding_column, condition(pending)) :-
        row("1 2 3\n4 5 6\n7 8 9\n8 7 6", 4, Row),
        Row == [8, 7, 6].

    test(extract_column_from_one_number_matrix, condition(pending)) :-
        column("1", 1, Column),
        Column == [1].

    test(can_extract_column, condition(pending)) :-
        column("1 2 3\n4 5 6\n7 8 9", 3, Column),
        Column == [3, 6, 9].

    test(can_extract_column_from_non_square_matrix_with_no_corresponding_Column, condition(pending)) :-
        column("1 2 3 4\n5 6 7 8\n9 8 7 6", 4, Column),
        Column == [4, 8, 6].

    test(extract_column_where_numbers_have_different_widths, condition(pending)) :-
        column("89 1903 3\n18 3 1\n9 4 800", 2, Column),
        Column == [1903, 3, 4].

:- end_tests(matrix).
