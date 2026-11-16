% two_fer.pl -- the exercism Prolog exercise two-fer, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/two_fer.example.pl, then its tests two_fer_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
two_fer(Name, Dialogue) :-
    string_concat("One for ", Name, Recipient),
    string_concat(Recipient, ", one for me.", Dialogue).

two_fer(Dialogue) :-
    two_fer("you", Dialogue).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(two_fer).

test(no_name_given, condition(true)) :-
    two_fer(Dialogue),
    Dialogue == "One for you, one for me.".

test(a_name_given, condition(pending)) :-
    two_fer("Alice", Dialogue),
    Dialogue == "One for Alice, one for me.".

test(another_name_given, condition(pending)) :-
    two_fer("Bob", Dialogue),
    Dialogue == "One for Bob, one for me.".

:- end_tests(two_fer).
