% binary.pl -- the exercism Prolog exercise binary, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/binary.example.pl, then its tests binary_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
binary(Str, Dec) :-
    string_chars(Str, RevLst),
    reverse(RevLst, Lst),
    convert(Lst, Dec).

convert([], 0).
convert([Head|List], Dec) :-
    atom_number(Head, Val),
    (Val is 0, !; Val is 1),
    convert(List, NextDec),
    Dec is NextDec*2 + Val.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(binary).

    test(binary_0_is_decimal_0, condition(true)) :-
        binary("0", Result), Result == 0.

    test(binary_1_is_decimal_1, condition(pending)) :-
        binary("1", Result), Result == 1.

    test(binary_10_is_decimal_2, condition(pending)) :-
        binary("10", Result), Result == 2.

    test(binary_11_is_decimal_3, condition(pending)) :-
        binary("11", Result), Result == 3.

    test(binary_100_is_decimal_4, condition(pending)) :-
        binary("100", Result), Result == 4.

    test(binary_1001_is_decimal_9, condition(pending)) :-
        binary("1001", Result), Result == 9.

    test(binary_11010_is_decimal_26, condition(pending)) :-
        binary("11010", Result), Result == 26.

    test(binary_10001101000_is_decimal_1128, condition(pending)) :-
        binary("10001101000", Result), Result == 1128.

    test(binary_ignores_leading_zeros, condition(pending)) :-
        binary("000011111", Result), Result == 31.

    test(two_is_not_a_valid_binary_digit, [fail, condition(pending)]) :-
        binary("2", _).

    test(nonbinary_digit_is_invalid, [fail, condition(pending)]) :-
        binary("01201", _).

    test(trailing_nonbinary_characters_is_invalid, [fail, condition(pending)]) :-
        binary("10nope", _).

    test(nonbinary_characters_is_invalid, [fail, condition(pending)]) :-
        binary("nope10", _).

    test(internal_nonbinary_characters_is_invalid, [fail, condition(pending)]) :-
        binary("10nope10", _).

    test(whitespace_separated_is_invalid, [fail, condition(pending)]) :-
        binary("001 nope", _).

:- end_tests(binary).
