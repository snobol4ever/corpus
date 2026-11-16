% floored.pl -- the exercism Prolog exercise floored, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/floored.example.pl, then its tests floored_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

solve(Solution) :-
    Names = [amara, bjorn, cora, dale, emiko],
    Floors = [Amara, Bjorn, Cora, Dale, Emiko],
    Floors ins 1..5, % 1
    all_different(Floors), %2
    pairs_keys_values(Solution, Names, Floors),
    Amara #< 5, %3
    Bjorn #> 1, %4
    Cora #> 1, Cora #< 5, %5
    Dale #> Bjorn, %6
    abs(Emiko - Cora) #> 1, %7
    abs(Cora - Bjorn) #> 1, %8
    label(Floors),
    !.

floor(Name, Floor) :-
    solve(Solution),
    member(Name-Floor, Solution),
    !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(floored).

    test(floor_amara, condition(true)) :-
        floor(amara, Floor),
        Floor == 3.

    test(floor_bjorn, condition(pending)) :-
        floor(bjorn, Floor),
        Floor == 2.

    test(floor_cora, condition(pending)) :-
        floor(cora, Floor),
        Floor == 4.

    test(floor_dale, condition(pending)) :-
        floor(dale, Floor),
        Floor == 5.

    test(floor_emiko, condition(pending)) :-
        floor(emiko, Floor),
        Floor == 1.

:- end_tests(floored).
