% secret_handshake.pl -- the exercism Prolog exercise secret-handshake, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/secret_handshake.example.pl, then its tests secret_handshake_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(clpfd)).

bit_set(Number, Index) :- Number /\ 1 << Index #\= 0.

encoded_command(Encoded, Index, Goal, Acc, Result) :- bit_set(Encoded, Index), call(Goal, Acc, Result), !.
encoded_command(_, _, _, Acc, Acc).

append_command(Command, Acc, Result) :- append(Acc, [Command], Result).

commands(Encoded, Commands) :-
    IndividualCommands = [
        encoded_command(Encoded, 0, append_command(wink)),
        encoded_command(Encoded, 1, append_command(double_blink)),
        encoded_command(Encoded, 2, append_command(close_your_eyes)),
        encoded_command(Encoded, 3, append_command(jump)),
        encoded_command(Encoded, 4, reverse)
    ],
    foldl(call, IndividualCommands, [], Commands).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(secret_handshake).

    test(wink_for_1, condition(true)) :-
        commands(1, Commands),
        Commands == [wink].

    test(double_blink_for_10, condition(pending)) :-
        commands(2, Commands),
        Commands == [double_blink].

    test(close_your_eyes_for_100, condition(pending)) :-
        commands(4, Commands),
        Commands == [close_your_eyes].

    test(jump_for_1000, condition(pending)) :-
        commands(8, Commands),
        Commands == [jump].

    test(combine_two_actions, condition(pending)) :-
        commands(3, Commands),
        Commands == [wink, double_blink].

    test(reverse_two_actions, condition(pending)) :-
        commands(19, Commands),
        Commands == [double_blink, wink].

    test(reversing_one_action_gives_the_same_action, condition(pending)) :-
        commands(24, Commands),
        Commands == [jump].

    test(reversing_no_actions_still_gives_no_actions, condition(pending)) :-
        commands(16, Commands),
        Commands == [].

    test(all_possible_actions, condition(pending)) :-
        commands(15, Commands),
        Commands == [wink, double_blink, close_your_eyes, jump].

    test(reverse_all_possible_actions, condition(pending)) :-
        commands(31, Commands),
        Commands == [jump, close_your_eyes, double_blink, wink].

    test(do_nothing_for_zero, condition(pending)) :-
        commands(0, Commands),
        Commands == [].

:- end_tests(secret_handshake).
