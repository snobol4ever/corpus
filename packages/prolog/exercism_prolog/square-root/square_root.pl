% square_root.pl -- the exercism Prolog exercise square-root, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/square_root.example.pl, then its tests square_root_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

square_root(Number, Current, SquareRoot) :-
    Current ^ 2 #\= Number,
    Next #= Current + 1,
    square_root(Number, Next, SquareRoot), !.

square_root(_, Current, Current).

square_root(Number, SquareRoot) :- square_root(Number, 0, SquareRoot).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(square_root).

    test(root_of_1, condition(true)) :-
        square_root(1, SquareRoot),
        SquareRoot == 1.

    test(root_of_4, condition(pending)) :-
        square_root(4, SquareRoot),
        SquareRoot == 2.

    test(root_of_25, condition(pending)) :-
        square_root(25, SquareRoot),
        SquareRoot == 5.

    test(root_of_81, condition(pending)) :-
        square_root(81, SquareRoot),
        SquareRoot == 9.

    test(root_of_196, condition(pending)) :-
        square_root(196, SquareRoot),
        SquareRoot == 14.

    test(root_of_65025, condition(pending)) :-
        square_root(65025, SquareRoot),
        SquareRoot == 255.

:- end_tests(square_root).
