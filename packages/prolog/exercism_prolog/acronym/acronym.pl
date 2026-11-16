% acronym.pl -- the exercism Prolog exercise acronym, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/acronym.example.pl, then its tests acronym_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
words(Sentence, Words) :-
    split_string(Sentence, " ", "", W0),
    maplist([Word,Acc]>>(split_string(Word,"-", "",Acc)), W0, W1),
    flatten(W1, W2),
    maplist(string_upper, W2, W3),
    delete(W3, "", Words).

abbreviate_word(Word, Letter) :-
    string_chars(Word, Letters),
    delete(Letters, '_', [Letter|_]).

abbreviate(Sentence, Acromym) :-
    words(Sentence, Words),
    maplist(abbreviate_word, Words, Letters),
    string_chars(Acromym, Letters).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(acronym).

    test(basic, condition(true)) :-
        abbreviate("Portable Network Graphics", Acronym),
        Acronym == "PNG".

    test(lowercase_words, condition(pending)) :-
        abbreviate("Ruby on Rails", Acronym),
        Acronym == "ROR".

    test(punctuation, condition(pending)) :-
        abbreviate("First In, First Out", Acronym),
        Acronym == "FIFO".

    test(all_caps_word, condition(pending)) :-
        abbreviate("GNU Image Manipulation Program", Acronym),
        Acronym == "GIMP".

    test(punctuation_without_whitespace, condition(pending)) :-
        abbreviate("Complementary metal-oxide semiconductor", Acronym),
        Acronym == "CMOS".

    test(very_long_abbreviation, condition(pending)) :-
        abbreviate("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me", Acronym),
        Acronym == "ROTFLSHTMDCOALM".

    test(consecutive_delimiters, condition(pending)) :-
        abbreviate("Something - I made up from thin air", Acronym),
        Acronym == "SIMUFTA".

    test(apostrophes, condition(pending)) :-
        abbreviate("Halley's Comet", Acronym),
        Acronym == "HC".

    test(underscore_emphasis, condition(pending)) :-
        abbreviate("The Road _Not_ Taken", Acronym),
        Acronym == "TRNT".

:- end_tests(acronym).
