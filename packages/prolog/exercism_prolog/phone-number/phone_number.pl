% phone_number.pl -- the exercism Prolog exercise phone-number, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/phone_number.example.pl, then its tests phone_number_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it; double_quotes set back to string before the tests, as the runner reads them in a file of their own.
:- use_module(library(dcg/basics)).
:- set_prolog_flag(double_quotes, chars).

non_digit --> [C], { \+ char_type(C, digit) }.
non_digits --> non_digit, non_digits.
non_digits --> [].

leading_digit(C) --> digit(C), { \+ member(C, "01") }.
country_code --> non_digits, "1", non_digits.
area_code([C1,C2,C3]) --> non_digits, leading_digit(C1), digit(C2), digit(C3), non_digits, !.
exchange_code([C1,C2,C3]) --> non_digits, leading_digit(C1), digit(C2), digit(C3), non_digits, !.
subscriber_number([C1,C2,C3,C4]) --> non_digits, digit(C1), digit(C2), digit(C3), digit(C4), non_digits, !.

international_phone_number(Number) --> country_code, national_phone_number(Number).
national_phone_number(Number) -->
    area_code(Area),
    exchange_code(Exchange),
    subscriber_number(Subscriber),
    { append(Area, Exchange, Temp), append(Temp, Subscriber, Number) }.
phone_number(Number) --> international_phone_number(Number) | national_phone_number(Number).

cleanup(Input, Cleaned) :-
    string_chars(Input, Chars),
    phrase(phone_number(NumberChars), Chars),
    length(NumberChars, 10),
    string_chars(Cleaned, NumberChars), !.

:- set_prolog_flag(double_quotes, string).
pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(phone_number).

    test(cleans_the_number, condition(true)) :-
        cleanup("(223) 456-7890", Cleaned),
        Cleaned == "2234567890".

    test(cleans_numbers_with_dots, condition(pending)) :-
        cleanup("223.456.7890", Cleaned),
        Cleaned == "2234567890".

    test(cleans_numbers_with_multiple_spaces, condition(pending)) :-
        cleanup("223 456   7890   ", Cleaned),
        Cleaned == "2234567890".

    test(invalid_when_9_digits, [fail, condition(pending)]) :-
        cleanup("123456789", _).

    test(invalid_when_11_digits_does_not_start_with_a_1, [fail, condition(pending)]) :-
        cleanup("22234567890", _).

    test(valid_when_11_digits_and_starting_with_1, condition(pending)) :-
        cleanup("12234567890", Cleaned),
        Cleaned == "2234567890".

    test(valid_when_11_digits_and_starting_with_1_even_with_punctuation, condition(pending)) :-
        cleanup("+1 (223) 456-7890", Cleaned),
        Cleaned == "2234567890".

    test(invalid_when_more_than_11_digits, [fail, condition(pending)]) :-
        cleanup("321234567890", _).

    test(invalid_with_letters, [fail, condition(pending)]) :-
        cleanup("523-abc-7890", _).

    test(invalid_with_punctuations, [fail, condition(pending)]) :-
        cleanup("523-@:!-7890", _).

    test(invalid_if_area_code_starts_with_0, [fail, condition(pending)]) :-
        cleanup("(023) 456-7890", _).

    test(invalid_if_area_code_starts_with_1, [fail, condition(pending)]) :-
        cleanup("(123) 456-7890", _).

    test(invalid_if_exchange_code_starts_with_0, [fail, condition(pending)]) :-
        cleanup("(223) 056-7890", _).

    test(invalid_if_exchange_code_starts_with_1, [fail, condition(pending)]) :-
        cleanup("(223) 156-7890", _).

    test(invalid_if_area_code_starts_with_0_on_valid_11_digit_number, [fail, condition(pending)]) :-
        cleanup("1 (023) 456-7890", _).

    test(invalid_if_area_code_starts_with_1_on_valid_11_digit_number, [fail, condition(pending)]) :-
        cleanup("1 (123) 456-7890", _).

    test(invalid_if_exchange_code_starts_with_0_on_valid_11_digit_number, [fail, condition(pending)]) :-
        cleanup("1 (223) 056-7890", _).

    test(invalid_if_exchange_code_starts_with_1_on_valid_11_digit_number, [fail, condition(pending)]) :-
        cleanup("1 (223) 156-7890", _).

:- end_tests(phone_number).
