% difference_of_squares.pl -- the exercism Prolog exercise difference-of-squares, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/difference_of_squares.example.pl, then its tests difference_of_squares_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

square_of_sum(N, Result) :-
    Sum is N * (N + 1) / 2,
    Result is Sum * Sum.

sum_of_squares(N, Result) :-
    Result is (N * (N + 1) * (2 * N + 1)) / 6.

difference(N, Result) :-
    square_of_sum(N, SquareOfSum),
    sum_of_squares(N, SumOfSquares),
    Result is SquareOfSum - SumOfSquares.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(difference_of_squares).

test(square_of_sum_1, condition(true)) :-
  square_of_sum(1, Result),
  Result == 1.

test(square_of_sum_5, condition(pending)) :-
  square_of_sum(5, Result),
  Result == 225.

test(square_of_sum_100, condition(pending)) :-
  square_of_sum(100, Result),
  Result == 25_502_500.

test(sum_of_squares_1, condition(pending)) :-
  sum_of_squares(1, Result),
  Result == 1.

test(sum_of_squares_5, condition(pending)) :-
  sum_of_squares(5, Result),
  Result == 55.

test(sum_of_squares_100, condition(pending)) :-
  sum_of_squares(100, Result),
  Result == 338_350.

test(difference_of_squares_1, condition(pending)) :-
  difference(1, Result),
  Result == 0.

test(difference_of_squares_5, condition(pending)) :-
  difference(5, Result),
  Result == 170.

test(difference_of_squares_100, condition(pending)) :-
  difference(100, Result),
  Result == 25_164_150.

:- end_tests(difference_of_squares).
