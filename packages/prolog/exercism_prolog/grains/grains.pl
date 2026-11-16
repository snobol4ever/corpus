% grains.pl -- the exercism Prolog exercise grains, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/grains.example.pl, then its tests grains_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
square(1, 1) :- !.
square(SquareNumber, Value) :-
    SquareNumber > 1, not(SquareNumber > 64),
    NextSquare is SquareNumber - 1,
    square(NextSquare, NewValue),
    Value is 2 * NewValue,
    !.

total(Total) :- total(Total, 64).

total(0, 0) :- !.
total(Total, Square) :-
    NextSquare is Square - 1,
    total(NextTotal, NextSquare),
    square(Square, SquareValue),
    Total is NextTotal + SquareValue.
    

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(grains).

    test(first, condition(true)) :-
        square(1, Result), Result == 1.

    test(second, condition(pending)) :-
        square(2, Result), Result == 2.

    test(third, condition(pending)) :-
        square(3, Result), Result == 4.

    test(sixteen, condition(pending)) :-
        square(16, Result), Result == 32768.

    test(twenty_three, condition(pending)) :-
        square(23, Result), Result == 4194304.

    test(thirty_two, condition(pending)) :-
        square(32, Result), Result == 2147483648.

    test(fifty_five, condition(pending)) :-
        square(55, Result), Result == 18014398509481984.

    test(sixty_four, condition(pending)) :-
        square(64, Result), Result == 9223372036854775808.

    test(total, condition(pending)) :-
        total(Result), Result == 18446744073709551615.

    test(zero, [fail, condition(pending)]) :-
        square(0, _).

    test(negative, [fail, condition(pending)]) :-
        square(-1, _).

    test(off_board, [fail, condition(pending)]) :-
        square(65, _).

:- end_tests(grains).
