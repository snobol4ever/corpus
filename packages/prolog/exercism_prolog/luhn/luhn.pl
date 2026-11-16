% luhn.pl -- the exercism Prolog exercise luhn, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/luhn.example.pl, then its tests luhn_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).
:- use_module(library(dcg/basics)).

digits_blank([]) --> [].
digits_blank(Digits) --> blank, digits_blank(Digits).
digits_blank([D|Digits]) --> digit(C), { atom_number(C, D) }, digits_blank(Digits).

multiplier_even --> [1], multiplier_odd.
multiplier_even --> [].

multiplier_odd --> [2], multiplier_even.
multiplier_odd --> [].

multipliers(Digits, Multipliers) :-
    length(Digits, Length),
    length(Multipliers, Length),
    phrase(multiplier_even, Multipliers), !.

double(Digit, 1, Digit).
double(Digit, 2, Doubled) :- Digit #< 5 -> Doubled #= Digit * 2; Doubled #= Digit * 2 - 9.

double(Digits, Doubled) :-
    reverse(Digits, Reversed),
    multipliers(Reversed, Multipliers),
    maplist(double, Reversed, Multipliers, Doubled).

checksum(Digits, Checksum) :-
    double(Digits, Doubled),
    sum_list(Doubled, Checksum).

valid(String) :-
    string_chars(String, Chars),
    phrase(digits_blank(Digits), Chars),
    length(Digits, Length),
    Length #> 1,
    checksum(Digits, Checksum),
    Checksum mod 10 #= 0,
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(luhn).

    test(single_digit_strings_can_not_be_valid, [fail, condition(true)]) :-
        valid("1").

    test(a_single_zero_is_invalid, [fail, condition(pending)]) :-
        valid("0").

    test(a_simple_valid_sin_that_remains_valid_if_reversed, condition(pending)) :-
        valid("059").

    test(a_simple_valid_sin_that_becomes_invalid_if_reversed, condition(pending)) :-
        valid("59").

    test(a_valid_canadian_sin, condition(pending)) :-
        valid("055 444 285").

    test(invalid_canadian_sin, [fail, condition(pending)]) :-
        valid("055 444 286").

    test(invalid_credit_card, [fail, condition(pending)]) :-
        valid("8273 1232 7352 0569").

    test(invalid_long_number_with_an_even_remainder, [fail, condition(pending)]) :-
        valid("1 2345 6789 1234 5678 9012").

    test(invalid_long_number_with_a_remainder_divisible_by_5, [fail, condition(pending)]) :-
        valid("1 2345 6789 1234 5678 9013").

    test(valid_number_with_an_even_number_of_digits, condition(pending)) :-
        valid("095 245 88").

    test(valid_number_with_an_odd_number_of_spaces, condition(pending)) :-
        valid("234 567 891 234").

    test(valid_strings_with_a_non_digit_added_at_the_end_become_invalid, [fail, condition(pending)]) :-
        valid("059a").

    test(valid_strings_with_punctuation_included_become_invalid, [fail, condition(pending)]) :-
        valid("055-444-285").

    test(valid_strings_with_symbols_included_become_invalid, [fail, condition(pending)]) :-
        valid("055# 444$ 285").

    test(single_zero_with_space_is_invalid, [fail, condition(pending)]) :-
        valid(" 0").

    test(more_than_a_single_zero_is_valid, condition(pending)) :-
        valid("0000 0").

    test(input_digit_9_is_correctly_converted_to_output_digit_9, condition(pending)) :-
        valid("091").

    test(very_long_input_is_valid, condition(pending)) :-
        valid("9999999999 9999999999 9999999999 9999999999").

    test(valid_luhn_with_an_odd_number_of_digits_and_non_zero_first_digit, condition(pending)) :-
        valid("109").

    test(using_ascii_value_for_non_doubled_non_digit_isn_t_allowed, [fail, condition(pending)]) :-
        valid("055b 444 285").

    test(using_ascii_value_for_doubled_non_digit_isn_t_allowed, [fail, condition(pending)]) :-
        valid(":9").

    test(non_numeric_non_space_char_in_the_middle_with_a_sum_that_s_divisible_by_10_isn_t_allowed, [fail, condition(pending)]) :-
        valid("59%59").

:- end_tests(luhn).
