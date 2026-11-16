% resistor_color_duo.pl -- the exercism Prolog exercise resistor-color-duo, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/resistor_color_duo.example.pl, then its tests resistor_color_duo_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

value([Color1, Color2|_], Value) :-
    color_code(Color1, Tens),
    color_code(Color2, Digit),
    Value #= Tens * 10 + Digit.

color_code(Color, Code) :-
    colors(Colors),
    nth0(Code, Colors, Color), !.

colors(Colors) :-
    Colors = [
        "black",
        "brown",
        "red",
        "orange",
        "yellow",
        "green",
        "blue",
        "violet",
        "grey",
        "white"
    ].

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(resistor_color_duo).

    test(brown_and_black, condition(true)) :-
        value(["brown", "black"], Value),
        Value == 10.

    test(blue_and_grey, condition(pending)) :-
        value(["blue", "grey"], Value),
        Value == 68.

    test(yellow_and_violet, condition(pending)) :-
        value(["yellow", "violet"], Value),
        Value == 47.

    test(white_and_red, condition(pending)) :-
        value(["white", "red"], Value),
        Value == 92.

    test(orange_and_orange, condition(pending)) :-
        value(["orange", "orange"], Value),
        Value == 33.

    test(ignore_additional_colors, condition(pending)) :-
        value(["green", "brown", "orange"], Value),
        Value == 51.

    test(black_and_brown_one_digit, condition(pending)) :-
        value(["black", "brown"], Value),
        Value == 1.

:- end_tests(resistor_color_duo).
