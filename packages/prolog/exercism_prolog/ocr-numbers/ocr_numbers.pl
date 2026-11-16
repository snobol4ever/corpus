% ocr_numbers.pl -- the exercism Prolog exercise ocr-numbers, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/ocr_numbers.example.pl, then its tests ocr_numbers_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
digit([" _ ", "| |", "|_|", "   "], '0') :- !.
digit(["   ", "  |", "  |", "   "], '1') :- !.
digit([" _ ", " _|", "|_ ", "   "], '2') :- !.
digit([" _ ", " _|", " _|", "   "], '3') :- !.
digit(["   ", "|_|", "  |", "   "], '4') :- !.
digit([" _ ", "|_ ", " _|", "   "], '5') :- !.
digit([" _ ", "|_ ", "|_|", "   "], '6') :- !.
digit([" _ ", "  |", "  |", "   "], '7') :- !.
digit([" _ ", "|_|", "|_|", "   "], '8') :- !.
digit([" _ ", "|_|", " _|", "   "], '9') :- !.
digit(_, '?').

parse_row(Row, Cols-Next) :-
    sub_string(Row, 0, 3, After, Cols),
    sub_string(Row, 3, After, _, Next).

digits(["","","",""], []) :- !.
digits(Rows, [Digit|Digits]) :-
    maplist(parse_row, Rows, ParsedRows),
    pairs_keys_values(ParsedRows, Cols, NextRows),
    digit(Cols, Digit),
    digits(NextRows, Digits).

parse_line(Line, Parsed) :-
    digits(Line, Digits),
    string_chars(Parsed, Digits).

combine(Part, "", Part) :- !.
combine(Part, Acc, Result) :- format(string(Result), "~s,~s", [Acc, Part]).

parse_lines(Lines, Parsed) :-
    maplist(parse_line, Lines, ParsedLines),
    foldl(combine, ParsedLines, "", Parsed).

lines([], []) :- !.
lines(Input, [Line|Lines]) :-
    append(Line, Rest, Input),
    length(Line, 4),
    lines(Rest, Lines).

valid([X|Xs]) :-
    length([X|Xs], Rows),
    string_length(X, Cols),
    Rows mod 4 =:= 0,
    Cols mod 3 =:= 0.

convert(Input, Output) :-
    valid(Input),
    lines(Input, Lines),
    parse_lines(Lines, Output), !.
 

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(ocr_numbers).

    test(recognizes_0, condition(true)) :-
        Input = [
            " _ ",
            "| |",
            "|_|",
            "   "
        ],
        convert(Input, Output),
        Output == "0".

    test(recognizes_1, condition(pending)) :-
        Input = [
            "   ",
            "  |",
            "  |",
            "   "
        ],
        convert(Input, Output),
        Output == "1".

    test(recognizes_2, condition(pending)) :-
        Input = [
            " _ ",
            " _|",
            "|_ ",
            "   "
        ],
        convert(Input, Output),
        Output == "2".

    test(recognizes_3, condition(pending)) :-
        Input = [
            " _ ",
            " _|",
            " _|",
            "   "
        ],
        convert(Input, Output),
        Output == "3".

    test(recognizes_4, condition(pending)) :-
        Input = [
            "   ",
            "|_|",
            "  |",
            "   "
        ],
        convert(Input, Output),
        Output == "4".

    test(recognizes_5, condition(pending)) :-
        Input = [
            " _ ",
            "|_ ",
            " _|",
            "   "
        ],
        convert(Input, Output),
        Output == "5".

    test(recognizes_6, condition(pending)) :-
        Input = [
            " _ ",
            "|_ ",
            "|_|",
            "   "
        ],
        convert(Input, Output),
        Output == "6".

    test(recognizes_7, condition(pending)) :-
        Input = [
            " _ ",
            "  |",
            "  |",
            "   "
        ],
        convert(Input, Output),
        Output == "7".

    test(recognizes_8, condition(pending)) :-
        Input = [
            " _ ",
            "|_|",
            "|_|",
            "   "
        ],
        convert(Input, Output),
        Output == "8".

    test(recognizes_9, condition(pending)) :-
        Input = [
            " _ ",
            "|_|",
            " _|",
            "   "
        ],
        convert(Input, Output),
        Output == "9".
        
    test(unreadable_but_correctly_sized_inputs_return, condition(pending)) :-
        Input = [
            "   ",
            "  _",
            "  |",
            "   "
        ],
        convert(Input, Output),
        Output == "?".

    test(input_with_a_number_of_lines_that_is_not_a_multiple_of_four_raises_an_error, [fail, condition(pending)]) :-
        Input = [
            " _ ",
            "| |",
            "   "
        ],
        convert(Input, _).

    test(input_with_a_number_of_columns_that_is_not_a_multiple_of_three_raises_an_error, [fail, condition(pending)]) :-
        Input = [
            "    ",
            "   |",
            "   |",
            "    "
        ],
        convert(Input, _).

    test(recognizes_110101100, condition(pending)) :-
        Input = [
            "       _     _        _  _ ",
            "  |  || |  || |  |  || || |",
            "  |  ||_|  ||_|  |  ||_||_|",
            "                           "
        ],
        convert(Input, Output),
        Output == "110101100".

    test(recognizes_string_of_decimal_numbers, condition(pending)) :-
        Input = [
            "    _  _     _  _  _  _  _  _ ",
            "  | _| _||_||_ |_   ||_||_|| |",
            "  ||_  _|  | _||_|  ||_| _||_|",
            "                              "
        ],
        convert(Input, Output),
        Output == "1234567890".

    test(garbled_numbers_in_a_string_are_replaced_with, condition(pending)) :-
        Input = [
            "       _     _           _ ",
            "  |  || |  || |     || || |",
            "  |  | _|  ||_|  |  ||_||_|",
            "                           "
        ],
        convert(Input, Output),
        Output == "11?10?1?0".

    test(numbers_separated_by_empty_lines_are_recognized_lines_are_joined_by_commas, condition(pending)) :-
        Input = [
            "    _  _ ",
            "  | _| _|",
            "  ||_  _|",
            "         ",
            "    _  _ ",
            "|_||_ |_ ",
            "  | _||_|",
            "         ",
            " _  _  _ ",
            "  ||_||_|",
            "  ||_| _|",
            "         "
        ],
        convert(Input, Output),
        Output == "123,456,789".

:- end_tests(ocr_numbers).
