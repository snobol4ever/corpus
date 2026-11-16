% resistor_color_trio.pl -- the exercism Prolog exercise resistor-color-trio, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/resistor_color_trio.example.pl, then its tests resistor_color_trio_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

unit_quantity(Value, Quantity, "gigaohms") :-
    Value #> 1000000000, Quantity #= Value // 1000000000, !.

unit_quantity(Value, Quantity, "megaohms") :-
    Value #> 1000000, Quantity #= Value // 1000000, !.

unit_quantity(Value, Quantity, "kiloohms") :-
    Value #> 1000, Quantity #= Value // 1000, !.

unit_quantity(Value, Value, "ohms").

label(Colors, Label) :-
    value(Colors, Value),
    unit_quantity(Value, Quantity, Unit),
    format(string(Label), "~d ~w", [Quantity, Unit]).

value([Color1, Color2, Color3|_], Value) :-
    color_code(Color1, Tens),
    color_code(Color2, Digit),
    color_code(Color3, Zeros),
    Value #= (Tens * 10 + Digit) * (10 ^ Zeros).

color_code(Color, Code) :-
    colors(Colors),
    nth0(Code, Colors, Color), !.

colors(Colors) :-
    Colors = ["black", "brown", "red", "orange", "yellow", "green", "blue", "violet", "grey", "white"].

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(resistor_color_trio).

    test(orange_and_orange_and_black, condition(true)) :-
        label(["orange", "orange", "black"], Label),
        Label == "33 ohms".

    test(blue_and_grey_and_brown, condition(pending)) :-
        label(["blue", "grey", "brown"], Label),
        Label == "680 ohms".

    test(red_and_black_and_red, condition(pending)) :-
        label(["red", "black", "red"], Label),
        Label == "2 kiloohms".

    test(green_and_brown_and_orange, condition(pending)) :-
        label(["green", "brown", "orange"], Label),
        Label == "51 kiloohms".

    test(yellow_and_violet_and_yellow, condition(pending)) :-
        label(["yellow", "violet", "yellow"], Label),
        Label == "470 kiloohms".

    test(blue_and_violet_and_blue, condition(pending)) :-
        label(["blue", "violet", "blue"], Label),
        Label == "67 megaohms".

    test(minimum_possible_value, condition(pending)) :-
        label(["black", "black", "black"], Label),
        Label == "0 ohms".

    test(maximum_possible_value, condition(pending)) :-
        label(["white", "white", "white"], Label),
        Label == "99 gigaohms".

    test(first_two_colors_make_an_invalid_octal_number, condition(pending)) :-
        label(["black", "grey", "black"], Label),
        Label == "8 ohms".

    test(ignore_extra_colors, condition(pending)) :-
        label(["blue", "green", "yellow", "orange"], Label),
        Label == "650 kiloohms".

:- end_tests(resistor_color_trio).
