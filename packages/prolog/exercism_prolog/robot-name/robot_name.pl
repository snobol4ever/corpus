% robot_name.pl -- the exercism Prolog exercise robot-name, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/robot_name.example.pl, then its tests robot_name_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
letters(Letters) :- string_chars("ABCDEFGHIJKLMNOPQRSTUVWXZY", Letters).
digits(Digits) :- string_chars("0123456789", Digits).

generate_name(Name) :-
    letters(Letters),
    digits(Digits),
    random_member(L1, Letters), random_member(L2, Letters),
    random_member(D1, Digits), random_member(D2, Digits), random_member(D3, Digits),
    string_chars(Name, [L1,L2,D1,D2,D3]).

create_robot(Robot) :-
    generate_name(Name),
    Robot = robot(Name).

robot_name(robot(Name), Name).

reset_name(Robot) :-
    generate_name(Name),
    setarg(1, Robot, Name).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(robot_name).

    test(has_name, condition(true)) :-
        create_robot(Robot),
        robot_name(Robot, Name),
        string_concat(Letters, Digits, Name),
        string_length(Letters, 2),
        string_length(Digits, 3),
        string_chars(Letters, LettersChars),
        string_chars(Digits, DigitsChars),
        maplist([C]>>char_type(C, upper), LettersChars),
        maplist([C]>>char_type(C, digit), DigitsChars),
        !.

    test(name_sticks, condition(pending)) :-
        create_robot(Robot),
        robot_name(Robot, Name1),
        robot_name(Robot, Name2),
        Name1 == Name2.

    test(different_robots_have_different_names, condition(pending)) :-
        create_robot(Robot1),
        create_robot(Robot2),
        robot_name(Robot1, Name1),
        robot_name(Robot2, Name2),
        Name1 \== Name2.

    test(reset_name, condition(pending)) :-
        create_robot(Robot),
        robot_name(Robot, Name1),
        reset_name(Robot),
        robot_name(Robot, Name2),
        Name1 \== Name2.

:- end_tests(robot_name).
