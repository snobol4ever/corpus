% matching_brackets.pl -- the exercism Prolog exercise matching-brackets, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/matching_brackets.example.pl, then its tests matching_brackets_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it; double_quotes set back to string before the tests, as the runner reads them in a file of their own.
:- use_module(library(dcg/basics)).
:- set_prolog_flag(double_quotes, chars).

parentheses --> "(", balanced, ")".
brackets    --> "[", balanced, "]".
braces      --> "{", balanced, "}".

balanced --> (parentheses | brackets | braces), balanced.
balanced --> non_bracket, balanced.
balanced --> [].

non_bracket --> [C], { \+ member(C, "()[]{}") }.

paired(String) :-
    string_chars(String, Chars),
    phrase(balanced, Chars),
    !.

:- set_prolog_flag(double_quotes, string).
pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(matching_brackets).

    test(paired_square_brackets, condition(true)) :-
        paired("[]").

    test(empty_string, condition(pending)) :-
        paired("").

    test(unpaired_brackets, [fail, condition(pending)]) :-
        paired("[[").

    test(wrong_ordered_brackets, [fail, condition(pending)]) :-
        paired("}{").

    test(wrong_closing_bracket, [fail, condition(pending)]) :-
        paired("{]").

    test(paired_with_whitespace, condition(pending)) :-
        paired("{ }").

    test(partially_paired_brackets, [fail, condition(pending)]) :-
        paired("{[])").

    test(simple_nested_brackets, condition(pending)) :-
        paired("{[]}").

    test(several_paired_brackets, condition(pending)) :-
        paired("{}[]").

    test(paired_and_nested_brackets, condition(pending)) :-
        paired("([{}({}[])])").

    test(unopened_closing_brackets, [fail, condition(pending)]) :-
        paired("{[)][]}").

    test(unpaired_and_nested_brackets, [fail, condition(pending)]) :-
        paired("([{])").

    test(paired_and_wrong_nested_brackets, [fail, condition(pending)]) :-
        paired("[({]})").

    test(paired_and_wrong_nested_brackets_but_innermost_are_correct, [fail, condition(pending)]) :-
        paired("[({}])").

    test(paired_and_incomplete_brackets, [fail, condition(pending)]) :-
        paired("{}[").

    test(too_many_closing_brackets, [fail, condition(pending)]) :-
        paired("[]]").

    test(early_unexpected_brackets, [fail, condition(pending)]) :-
        paired(")()").

    test(early_mismatched_brackets, [fail, condition(pending)]) :-
        paired("{)()").

    test(math_expression, condition(pending)) :-
        paired("(((185 + 223.85) * 15) - 543)/2").

    test(complex_latex_expression, condition(pending)) :-
        paired("\\left(\\begin{array}{cc} \\frac{1}{3} & x\\\\ \\mathrm{e}^{x} &... x^2 \\end{array}\\right)").

:- end_tests(matching_brackets).
