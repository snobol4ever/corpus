% queen_attack.pl -- the exercism Prolog exercise queen-attack, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/queen_attack.example.pl, then its tests queen_attack_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
create((X,Y)) :- X >= 0, Y >= 0, 7 >= X, 7 >= Y.

column((_, Y), (_, V)) :- Y =:= V.

row((X, _), (U, _)):- X =:= U.

diagonal((X, Y), (U, V)) :-  (X-Y) =:= (U-V), !; (X+Y) =:= (U+V).

attack((X, Y), (U, V)) :-
  column((X, Y), (U, V)), !;
  row((X, Y), (U, V)), !;
  diagonal((X, Y), (U, V)).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(create_tests).

    test(create_in_center, condition(true)) :-
      create((3,3)).

    test(valid_position, condition(pending)) :-
      create((2,2)).

    test(must_have_positive_row, [fail, condition(pending)]) :-
      create((-2,2)).

    test(row_smaller_than_board_size, [fail, condition(pending)]) :-
      create((8,4)).

    test(must_have_positive_column, [fail, condition(pending)]) :-
      create((2,-2)).

    test(column_smaller_than_board_size, [fail, condition(pending)]) :-
      create((4,8)).

:- end_tests(create_tests).


:- begin_tests(attack_tests).

    test(cant_attack, [fail, condition(pending)]) :-
      attack((2,4), (6,6)).

    test(attack_on_same_row, condition(pending)) :-
      attack((2,4), (2,6)).

    test(attack_same_column, condition(pending)) :-
      attack((4,5), (2,5)).

    test(attack_first_diagonal, condition(pending)) :-
      attack((2,2), (0,4)).

    test(attack_second_diagonal, condition(pending)) :-
      attack((2,2), (3,1)).

    test(attack_third_diagonal, condition(pending)) :-
      attack((2,2), (1,1)).

    test(attack_fourth_diagonal, condition(pending)) :-
      attack((2,2), (5,5)).

    test(cannot_attack_reflected_diagonals, [fail, condition(pending)]) :-
      attack((4,1), (2,5)).

:- end_tests(attack_tests).
