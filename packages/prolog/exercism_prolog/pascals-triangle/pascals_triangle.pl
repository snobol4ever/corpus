% pascals_triangle.pl -- the exercism Prolog exercise pascals-triangle, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/pascals_triangle.example.pl, then its tests pascals_triangle_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
pascal(0, []) :- !.
pascal(X, P)  :-
  numlist(1, X, NL),
  maplist(pascalH, NL, P).

pascalH(1, [1])   :- !.
pascalH(N, [X|L]) :-
  succ(N1, N),
  pascalH(N1, [X|L1]),
  build([X|L1], L), !.

build([X],     [X]).
build([X,Y|Z], [H|R]) :-
  H is X+Y,
  build([Y|Z], R).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(pascal).

    test(zero_rows, condition(true)) :-
        pascal(0, Rows),
        Rows == [].

    test(single_row, condition(pending)) :-
        pascal(1, Rows),
        Rows == [[1]].

    test(two_rows, condition(pending)) :-
        pascal(2, Rows),
        Rows == [[1], [1,1]].

    test(three_rows, condition(pending)) :-
        pascal(3, Rows),
        Rows == [[1], [1,1], [1,2,1]].

    test(four_rows, condition(pending)) :-
        pascal(4, Rows),
        Rows == [[1], [1,1], [1,2,1], [1,3,3,1]].

    test(five_rows, condition(pending)) :-
        pascal(5, Rows),
        Rows == [[1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1]].

    test(six_rows, condition(pending)) :-
        pascal(6, Rows),
        Rows == [[1], [1,1], [1,2,1], [1,3,3,1], [1,4,6,4,1], [1,5,10,10,5,1]].

    test(ten_rows, condition(pending)) :-
        pascal(10, Rows),
        Rows == [[1],
                 [1,1],
                 [1,2,1],
                 [1,3,3,1],
                 [1,4,6,4,1],
                 [1,5,10,10,5,1],
                 [1,6,15,20,15,6,1],
                 [1,7,21,35,35,21,7,1],
                 [1,8,28,56,70,56,28,8,1],
                 [1,9,36,84,126,126,84,36,9,1]
                ].

:- end_tests(pascal).
