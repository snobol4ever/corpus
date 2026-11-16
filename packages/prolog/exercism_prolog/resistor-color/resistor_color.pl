% resistor_color.pl -- the exercism Prolog exercise resistor-color, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/resistor_color.example.pl, then its tests resistor_color_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
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

:- begin_tests(resistor_color).

    test(black, condition(true)) :-
        color_code("black", Code), 
        Code == 0.

    test(white, condition(pending)) :-
        color_code("white", Code), 
        Code == 9.

    test(orange, condition(pending)) :-
        color_code("orange", Code), 
        Code == 3.

    test(colors, condition(pending)) :-
        colors(Colors),
        Colors == [
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

:- end_tests(resistor_color).
