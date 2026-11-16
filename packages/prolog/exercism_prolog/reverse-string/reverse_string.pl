% reverse_string.pl -- the exercism Prolog exercise reverse-string, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/reverse_string.example.pl, then its tests reverse_string_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
string_reverse(S, Reversed) :-
    string_chars(S, Chars),
    reverse(Chars, ReversedChars),
    string_chars(Reversed, ReversedChars).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(reverse_string).

    test(an_empty_string, condition(true)) :-
        string_reverse("", Reversed),
        Reversed == "".

    test(a_word, condition(pending)) :-
        string_reverse("robot", Reversed),
        Reversed == "tobor".

    test(a_capitalized_word, condition(pending)) :-
        string_reverse("Ramen", Reversed),
        Reversed == "nemaR".

    test(a_sentence_with_punctuation, condition(pending)) :-
        string_reverse("I'm hungry!", Reversed),
        Reversed == "!yrgnuh m'I".

    test(a_palindrome, condition(pending)) :-
        string_reverse("racecar", Reversed),
        Reversed == "racecar".

    test(an_even_sized_word, condition(pending)) :-
        string_reverse("drawer", Reversed),
        Reversed == "reward".

    test(wide_character, condition(pending)) :-
        string_reverse("子猫", Reversed),
        Reversed == "猫子".

:- end_tests(reverse_string).
