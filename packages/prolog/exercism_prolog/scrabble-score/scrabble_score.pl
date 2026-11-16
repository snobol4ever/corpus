% scrabble_score.pl -- the exercism Prolog exercise scrabble-score, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/scrabble_score.example.pl, then its tests scrabble_score_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
score(Word, Score) :-
    string_upper(Word, UpperWord),
    string_chars(UpperWord, Letters),
    maplist(letter_score, Letters, LetterScores),
    sum_list(LetterScores, Score).
 
 letter_score('A', 1).
 letter_score('E', 1).
 letter_score('I', 1).
 letter_score('O', 1).
 letter_score('U', 1).
 letter_score('L', 1).
 letter_score('N', 1).
 letter_score('R', 1).
 letter_score('S', 1).
 letter_score('T', 1).
 letter_score('D', 2).
 letter_score('G', 2).
 letter_score('B', 3).
 letter_score('C', 3).
 letter_score('M', 3).
 letter_score('P', 3).
 letter_score('F', 4).
 letter_score('H', 4).
 letter_score('V', 4).
 letter_score('W', 4).
 letter_score('Y', 4).
 letter_score('K', 5).
 letter_score('J', 8).
 letter_score('X', 8).
 letter_score('Q', 10).
 letter_score('Z', 10 ).
 

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(scrabble_score).

    test(lowercase_letter, condition(true)) :-
        score("a", Score), Score == 1.

    test(uppercase_letter, condition(pending)) :-
        score("A", Score), Score == 1.

    test(valuable_letter, condition(pending)) :-
        score("f", Score), Score == 4.

    test(short_word, condition(pending)) :-
        score("at", Score), Score == 2.

    test(short_valuable_word, condition(pending)) :-
        score("zoo", Score), Score == 12.

    test(medium_word, condition(pending)) :-
        score("street", Score), Score == 6.

    test(medium_valuable_word, condition(pending)) :-
        score("quirky", Score), Score == 22.

    test(long_mixed_case_word, condition(pending)) :-
        score("OxyphenButazone", Score), Score == 41.

    test(english_like_word, condition(pending)) :-
        score("pinata", Score), Score == 8.

    test(empty_input, condition(pending)) :-
        score("", Score), Score == 0.

    test(entire_alphabet_available, condition(pending)) :-
        score("abcdefghijklmnopqrstuvwxyz", Score), Score == 87.

:- end_tests(scrabble_score).
