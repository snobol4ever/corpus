% armstrong_numbers.pl -- the exercism Prolog exercise armstrong-numbers, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/armstrong_numbers.example.pl, then its tests armstrong_numbers_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
digit(Code, Digit) :- Digit is Code - 48.

digits(N, Digits) :-
    number_string(N, Str),
    string_codes(Str, Codes),
    maplist(digit, Codes, Digits).

armstrong_sum(_, [], 0).
armstrong_sum(NumberOfDigits, [Digit|Tail], Sum) :-
    armstrong_sum(NumberOfDigits, Tail, TailSum),
    pow(Digit, NumberOfDigits, Pow),
    Sum is TailSum + Pow, !.

armstrong_number(N) :-
    digits(N, Digits),
    length(Digits, NumberOfDigits),
    armstrong_sum(NumberOfDigits, Digits, N).

pending :-
    true.
pending :-
    write('\nA TEST_IS PENDING!\n'),
    fail.

:- begin_tests(armstrong_numbers).

    test(zero_is_an_armstrong_number, condition(true)) :-
        armstrong_number(0).

    test(single_digit_numbers_are_armstrong_numbers, condition(pending)) :-
        armstrong_number(5).

    test(there_are_no_two_digit_armstrong_numbers, [fail, condition(pending)]) :-
        armstrong_number(10).

    test(three_digit_number_that_is_an_armstrong_number, condition(pending)) :-
        armstrong_number(153).

    test(three_digit_number_that_is_not_an_armstrong_number, [fail, condition(pending)]) :-
        armstrong_number(100).

    test(four_digit_number_that_is_an_armstrong_number, condition(pending)) :-
        armstrong_number(9474).

    test(four_digit_number_that_is_not_an_armstrong_number, [fail, condition(pending)]) :-
        armstrong_number(9475).

    test(seven_digit_number_that_is_an_armstrong_number, condition(pending)) :-
        armstrong_number(9926315).

    test(seven_digit_number_that_is_not_an_armstrong_number, [fail, condition(pending)]) :-
        armstrong_number(9926314).

:- end_tests(armstrong_numbers).
