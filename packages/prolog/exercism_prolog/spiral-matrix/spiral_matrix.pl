% spiral_matrix.pl -- the exercism Prolog exercise spiral-matrix, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/spiral_matrix.example.pl, then its tests spiral_matrix_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
rest([_|X], X).

transpose(XS, [])   :- member([], XS), !.
transpose(M, [X|T]) :- maplist(nth0(0), M, X), maplist(rest, M, M1), transpose(M1, T).

spiral_H(M, N, S, Rows) :-
  succ(M1, M),
  numlist(0, M1, Ms),
  maplist(plus(S), Ms, Row),
  (1 =:= N -> Rows = [Row]
            ; succ(N1, N),
              plus(S, M, SM),
              spiral_H(N1, M, SM, Rows1),
              transpose(Rows1, Transposed),
              maplist(reverse, Transposed, Reversed),
              Rows = [Row|Reversed]).

spiral(0, []) :- !.
spiral(N, XS) :- spiral_H(N, N, 1, XS).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(spiral).
    test(empty_spiral, condition(true)) :-
        spiral(0, Matrix),
        Matrix == [].

    test(trivial_spiral, condition(pending)) :-
        spiral(1, Matrix),
        Matrix == [[1]].

    test(spiral_of_size_2, condition(pending)) :-
        spiral(2, Matrix),
        Matrix == [[1,2],
                   [4,3]].

    test(spiral_of_size_3, condition(pending)) :-
        spiral(3, Matrix),
        Matrix == [[1,2,3],
                   [8,9,4],
                   [7,6,5]].

    test(spiral_of_size_4, condition(pending)) :-
        spiral(4, Matrix),
        Matrix == [[ 1, 2, 3, 4],
                   [12,13,14, 5],
                   [11,16,15, 6],
                   [10, 9, 8, 7]].

    test(spiral_of_size_5, condition(pending)) :-
        spiral(5, Matrix),
        Matrix == [[ 1, 2, 3, 4, 5],
                   [16,17,18,19, 6],
                   [15,24,25,20, 7],
                   [14,23,22,21, 8],
                   [13,12,11,10, 9]].

:- end_tests(spiral).
