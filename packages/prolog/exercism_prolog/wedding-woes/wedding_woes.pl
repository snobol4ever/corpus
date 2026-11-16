% wedding_woes.pl -- the exercism Prolog exercise wedding-woes, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/wedding_woes.example.pl, then its tests wedding_woes_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
chatty(gustavo).
chatty(valeria).

likes(esteban, malena).
likes(malena, esteban).
likes(gustavo, valeria).

pairing(First, Second) :- likes(First, Second), likes(Second, First), !.
pairing(First, Second) :- chatty(First), !; chatty(Second), !.
seating(A, B, C, D, E) :- pairing(A, B), pairing(B, C), pairing(C, D), pairing(D, E), pairing(E, A), !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(wedding_woes).

    test(gustavo_is_chatty, condition(true)) :-
        chatty(gustavo).

    test(valeria_is_chatty, condition(pending)) :-
        chatty(valeria).

    test(jaime_is_not_chatty, [fail, condition(pending)]) :-
        chatty(jaime).

    test(esteban_likes_malena, condition(pending)) :-
        likes(esteban, malena).

    test(malena_likes_esteban, condition(pending)) :-
        likes(malena, esteban).

    test(gustavo_likes_valeria, condition(pending)) :-
        likes(gustavo, valeria).

    test(valeria_does_not_like_gustavo, [fail, condition(pending)]) :-
        likes(valeria, gustavo).

    test(people_who_like_each_other_make_a_good_pairing, condition(pending)) :-
        pairing(malena, esteban).

    test(two_chatty_people_make_a_good_pairing, condition(pending)) :-
        pairing(gustavo, valeria).

    test(one_chatty_person_make_a_good_pairing_with_anyone, condition(pending)) :-
        pairing(valeria, jaime).

    test(people_who_dont_like_each_other_and_are_not_chatty_dont_make_a_good_pairing, [fail, condition(pending)]) :-
        pairing(rico, naran).

    test(valid_seating, condition(pending)) :-
        seating(esteban, malena, gustavo, jaime, valeria).

    test(invalid_seating, [fail, condition(pending)]) :-
        seating(esteban, jaime, gustavo, malena, valeria).

:- end_tests(wedding_woes).
