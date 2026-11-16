% all_your_base.pl -- the exercism Prolog exercise all-your-base, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/all_your_base.example.pl, then its tests all_your_base_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

decimal_base(_, [], Decimal, Decimal) :- !.
decimal_base(Base, [Digit|Digits], Acc, Decimal) :-
    MaxDigit #= Base - 1,
    Digit in 0..MaxDigit,
    NewAcc #= Acc * Base + Digit,
    decimal_base(Base, Digits, NewAcc, Decimal).

decimal_base(_, [0], 0) :- !.
decimal_base(Base, Digits, Decimal) :- decimal_base(Base, Digits, 0, Decimal).

rebase(InputBase, InputDigits, OutputBase, OutputDigits) :-
    InputBase #>= 2, OutputBase #>= 2,
    decimal_base(InputBase, InputDigits, Decimal),
    decimal_base(OutputBase, OutputDigits, Decimal).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(all_your_base).

    test(single_bit_one_to_decimal, condition(true)) :-
        rebase(2, [1], 10, Rebased),
        Rebased == [1].

    test(binary_to_single_decimal, condition(pending)) :-
        rebase(2, [1, 0, 1], 10, Rebased),
        Rebased == [5].

    test(single_decimal_to_binary, condition(pending)) :-
        rebase(10, [5], 2, Rebased),
        Rebased == [1, 0, 1].

    test(binary_to_multiple_decimal, condition(pending)) :-
        rebase(2, [1, 0, 1, 0, 1, 0], 10, Rebased),
        Rebased == [4, 2].

    test(decimal_to_binary, condition(pending)) :-
        rebase(10, [4, 2], 2, Rebased),
        Rebased == [1, 0, 1, 0, 1, 0].

    test(trinary_to_hexadecimal, condition(pending)) :-
        rebase(3, [1, 1, 2, 0], 16, Rebased),
        Rebased == [2, 10].

    test(hexadecimal_to_trinary, condition(pending)) :-
        rebase(16, [2, 10], 3, Rebased),
        Rebased == [1, 1, 2, 0].

    test(fifteen_bit_integer, condition(pending)) :-
        rebase(97, [3, 46, 60], 73, Rebased),
        Rebased == [6, 10, 45].

    test(empty_list, condition(pending)) :-
        rebase(2, [], 10, Rebased),
        Rebased == [0].

    test(single_zero, condition(pending)) :-
        rebase(10, [0], 2, Rebased),
        Rebased == [0].

    test(multiple_zeros, condition(pending)) :-
        rebase(10, [0, 0, 0], 2, Rebased),
        Rebased == [0].

    test(leading_zeros, condition(pending)) :-
        rebase(7, [0, 6, 0], 10, Rebased),
        Rebased == [4, 2].

    test(input_base_is_one, [fail, condition(pending)]) :-
        rebase(1, [0], 10, _).

    test(input_base_is_zero, [fail, condition(pending)]) :-
        rebase(0, [], 10, _).

    test(input_base_is_negative, [fail, condition(pending)]) :-
        rebase(-2, [1], 10, _).

    test(negative_digit, [fail, condition(pending)]) :-
        rebase(2, [1, -1, 1, 0, 1, 0], 10, _).

    test(invalid_positive_digit, [fail, condition(pending)]) :-
        rebase(2, [1, 2, 1, 0, 1, 0], 10, _).

    test(output_base_is_one, [fail, condition(pending)]) :-
        rebase(2, [1, 0, 1, 0, 1, 0], 1, _).

    test(output_base_is_zero, [fail, condition(pending)]) :-
        rebase(10, [7], 0, _).

    test(output_base_is_negative, [fail, condition(pending)]) :-
        rebase(2, [1], -7, _).

    test(both_bases_are_negative, [fail, condition(pending)]) :-
        rebase(-2, [1], -7, _).

:- end_tests(all_your_base).
