% robot_simulator.pl -- the exercism Prolog exercise robot-simulator, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/robot_simulator.example.pl, then its tests robot_simulator_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

create(X, Y, Direction, Robot) :-
    Robot = robot(coordinate(x(X), y(Y)), direction(Direction)).

left(north, west).
left(east, north).
left(south, east).
left(west, south).

right(north, east).
right(east, south).
right(south, west).
right(west, north).

advance(north, X, Y,    X, NewY) :- NewY #= Y + 1.
advance(east,  X, Y, NewX,    Y) :- NewX #= X + 1.
advance(south, X, Y,    X, NewY) :- NewY #= Y - 1.
advance(west,  X, Y, NewX,    Y) :- NewX #= X - 1.

instruction('L', Robot, Updated) :-
    create(X, Y, Direction, Robot),
    left(Direction, NewDirection),
    create(X, Y, NewDirection, Updated).

instruction('R', Robot, Updated) :-
    create(X, Y, Direction, Robot),
    right(Direction, NewDirection),
    create(X, Y, NewDirection, Updated).

instruction('A', Robot, Updated) :-
    create(X, Y, Direction, Robot),
    advance(Direction, X, Y, NewX, NewY),
    create(NewX, NewY, Direction, Updated).

move(Robot, Instructions, Moved) :-
    string_chars(Instructions, Chars),
    foldl(instruction, Chars, Robot, Moved).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(robot_simulator).

    test(at_origin_facing_north, condition(true)) :-
        create(0, 0, north, Robot),
        Robot == robot(coordinate(x(0), y(0)), direction(north)).

    test(at_negative_position_facing_south, condition(pending)) :-
        create(-1, -1, south, Robot),
        Robot == robot(coordinate(x(-1), y(-1)), direction(south)).

    test(changes_north_to_east, condition(pending)) :-
        create(0, 0, north, Robot),
        move(Robot, "R", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(east)).
    
    test(changes_east_to_south, condition(pending)) :-
        create(0, 0, east, Robot),
        move(Robot, "R", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(south)).
    
    test(changes_south_to_west, condition(pending)) :-
        create(0, 0, south, Robot),
        move(Robot, "R", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(west)).
    
    test(changes_west_to_north, condition(pending)) :-
        create(0, 0, west, Robot),
        move(Robot, "R", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(north)).
    
    test(changes_north_to_west, condition(pending)) :-
        create(0, 0, north, Robot),
        move(Robot, "L", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(west)).
    
    test(changes_west_to_south, condition(pending)) :-
        create(0, 0, west, Robot),
        move(Robot, "L", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(south)).
    
    test(changes_south_to_east, condition(pending)) :-
        create(0, 0, south, Robot),
        move(Robot, "L", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(east)).
    
    test(changes_east_to_north, condition(pending)) :-
        create(0, 0, east, Robot),
        move(Robot, "L", Moved),
        Moved == robot(coordinate(x(0), y(0)), direction(north)).
    
    test(facing_north_increments_y, condition(pending)) :-
        create(0, 0, north, Robot),
        move(Robot, "A", Moved),
        Moved == robot(coordinate(x(0), y(1)), direction(north)).
    
    test(facing_south_decrements_y, condition(pending)) :-
        create(0, 0, south, Robot),
        move(Robot, "A", Moved),
        Moved == robot(coordinate(x(0), y(-1)), direction(south)).
    
    test(facing_east_increments_x, condition(pending)) :-
        create(0, 0, east, Robot),
        move(Robot, "A", Moved),
        Moved == robot(coordinate(x(1), y(0)), direction(east)).
    
    test(facing_west_decrements_x, condition(pending)) :-
        create(0, 0, west, Robot),
        move(Robot, "A", Moved),
        Moved == robot(coordinate(x(-1), y(0)), direction(west)).

    test(moving_east_and_north_from_readme, condition(pending)) :-
        create(7, 3, north, Robot),
        move(Robot, "RAALAL", Moved),
        Moved == robot(coordinate(x(9), y(4)), direction(west)).
    
    test(moving_west_and_north, condition(pending)) :-
        create(0, 0, north, Robot),
        move(Robot, "LAAARALA", Moved),
        Moved == robot(coordinate(x(-4), y(1)), direction(west)).
    
    test(moving_west_and_south, condition(pending)) :-
        create(2, -7, east, Robot),
        move(Robot, "RRAAAAALA", Moved),
        Moved == robot(coordinate(x(-3), y(-8)), direction(south)).
    
    test(moving_east_and_north, condition(pending)) :-
        create(8, 4, south, Robot),
        move(Robot, "LAAARRRALLLL", Moved),
        Moved == robot(coordinate(x(11), y(5)), direction(north)).

:- end_tests(robot_simulator).
