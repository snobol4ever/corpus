% wordy.pl -- the exercism Prolog exercise wordy, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/wordy.example.pl, then its tests wordy_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
% Wordy Module -- Built for SWI-PL v8.0.3

:- use_module(library(dcg/basics)).

% wordy(+Question, -Answer)
% predicate with takes an instantiated string `Question` representing a simple mathematical word problem.
% uses phrase and a DCG to unify a list of terms with a character list.  The list of terms is then reduced
% to the integer answer, which is returned.
wordy(Question, Answer) :-
  string_codes(Question, QuestionChars),
  phrase(parse(Ts), QuestionChars),
  !,
  compute(Ts, Answer).

% compute(+InfixOperationList, -Answer)
compute([T | Ts], Answer) :- compute(Ts, T, Answer).

compute([], Answer, Answer).

compute(["+", T | Ts], Acc, Answer) :-
  Next is Acc + T,
  compute(Ts, Next, Answer).

compute(["-", T | Ts], Acc, Answer) :-
  Next is Acc - T,
  compute(Ts, Next, Answer).

compute(["*", T | Ts], Acc, Answer) :-
  Next is Acc * T,
  compute(Ts, Next, Answer).

compute(["/", T | Ts], Acc, Answer) :-
  Next is div(Acc, T),
  compute(Ts, Next, Answer).

% Wordy DCG
% DCG describing a simple mathematical word problem
% phrase --> What is <integer> [<operator> <integer> [...]]?
parse(E) -->
  `What is`,
  math_expr(E, number),
  `?`.

parse(_) -->
  { throw(error(unknown_operation_error, wrong_form)) }.

math_expr(E, T) --> blank, math_expr(E, T).

math_expr([I | Es], number) -->
  integer(I),
  math_expr(Es, operator).

math_expr(_, number) -->
  { throw(error(syntax_error, integer_expected)) }.

math_expr([], operator) --> [].

math_expr([O | Es], operator) -->
  operator(O),
  math_expr(Es, number).

math_expr(_, operator) -->
  { throw(error(unknown_operation_error, operator_not_implemented)) }.

operator("+") --> `plus`.
operator("-") --> `minus`.
operator("*") --> `multiplied by`.
operator("/") --> `divided by`.
operator(I)   -->
  integer(I),
  { throw(error(syntax_error, integer_found_rather_than_operator)) }.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(simple).

    test(just_a_number, condition(true)) :-
        wordy("What is 5?", 5).

    test(just_a_zero, condition(pending)) :-
        wordy("What is 0?", 0).

    test(just_a_negative_number, condition(pending)) :-
        wordy("What is -123?", -123).

:- end_tests(simple).

:- begin_tests(plus).

    test(addition, condition(pending)) :-
        wordy("What is 1 plus 1?", 2).

    test(more_addition, condition(pending)) :-
        wordy("What is 53 plus 2?", 55).

    test(addition_with_negative_numbers, condition(pending)) :-
        wordy("What is -1 plus -10?", -11).

    test(large_addition, condition(pending)) :-
        wordy("What is 123 plus 45678?", 45801).

    test(addition_with_zero_left_hand, condition(pending)) :-
        wordy("What is 0 plus 2?", 2).
    
    test(addition_with_zero_right_hand, condition(pending)) :-
        wordy("What is 3 plus 0?", 3).

:- end_tests(plus).
:- begin_tests(minus).

    test(subtraction, condition(pending)) :-
        wordy("What is 4 minus -12?", 16).

:- end_tests(minus).
:- begin_tests(multiplication).

    test(multiplication, condition(pending)) :-
        wordy("What is -3 multiplied by 25?", -75).

:- end_tests(multiplication).
:- begin_tests(division).

    test(division, condition(pending)) :-
        wordy("What is 33 divided by -3?", -11).

:- end_tests(division).
:- begin_tests(combination).

    test(multiple_additions, condition(pending)) :-
        wordy("What is 1 plus 1 plus 1?", 3).

    test(addition_and_subtraction, condition(pending)) :-
        wordy("What is 1 plus 5 minus -2?", 8).

    test(multiple_subtraction, condition(pending)) :-
        wordy("What is 20 minus 4 minus 13?", 3).

    test(subtraction_then_addition, condition(pending)) :-
        wordy("What is 17 minus 6 plus 3?", 14).

    test(multiple_multiplication, condition(pending)) :-
        wordy("What is 2 multiplied by -2 multiplied by 3?", -12).

    test(addition_and_multiplication, condition(pending)) :-
        wordy("What is -3 plus 7 multiplied by -2?", -8).

    test(multiple_division, condition(pending)) :-
        wordy("What is -12 divided by 2 divided by -3?", 2).

:- end_tests(combination).
:- begin_tests(errors).

    test(unknown_operation, [error(unknown_operation_error), condition(pending)]) :-
        wordy("What is 52 cubed?", 140608).

    test(non_math_question, [error(unknown_operation_error), condition(pending)]) :-
        wordy("Who is the President of the United States?", "Abraham Lincoln").

    test(reject_problem_missing_an_operand, [error(syntax_error), condition(pending)]) :-
        wordy("What is 1 plus?", _).

    test(reject_problem_with_no_operands_or_operators, [error(syntax_error), condition(pending)]) :-
        wordy("What is?", _).

    test(reject_two_operations_in_a_row, [error(syntax_error), condition(pending)]) :-
        wordy("What is 1 plus plus 2?", _).

    test(reject_two_numbers_in_a_row, [error(syntax_error), condition(pending)]) :-
        wordy("What is 1 plus 2 1?", _).

    test(reject_postfix_notation, [error(syntax_error), condition(pending)]) :-
        wordy("What is 1 2 plus?", _).

    test(reject_prefix_notation, [error(syntax_error), condition(pending)]) :-
        wordy("What is plus 1 2?", _).

:- end_tests(errors).
