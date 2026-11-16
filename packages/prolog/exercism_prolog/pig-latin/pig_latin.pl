% pig_latin.pl -- the exercism Prolog exercise pig-latin, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/pig_latin.example.pl, then its tests pig_latin_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it; double_quotes set back to string before the tests, as the runner reads them in a file of their own.
:- use_module(library(dcg/basics)).
:- set_prolog_flag(double_quotes, chars).

vowel --> [C], { member(C, "aeiou") }.
consonant --> [C], { \+ member(C, "aeiou") }.

consonants(N) --> consonant, consonants(M), { N is M + 1 }.
consonants(0) --> [].

drop_first(0) --> (vowel | "xr" | "yt"), !, remainder(_).
drop_first(1) --> nonblank(_), "y", !.
drop_first(1) --> "y", ! , remainder(_).
drop_first(N) --> consonants(N), "y", ! , remainder(_).
drop_first(N) --> consonants(M), "qu", { N is M + 2 }, ! , remainder(_).
drop_first(N) --> consonants(N), !, remainder(_).

rotate(Chars, N, Rotated) :-
    length(Begin, N),
    append(Begin, End, Chars),
    append(End, Begin, Rotated).

pig_latinify(English, PigLatin) :-
    string_chars(English, Chars),
    phrase(drop_first(N), Chars),
    rotate(Chars, N, Rotated),
    append(Rotated, "ay", PigLatinChars),
    string_chars(PigLatin, PigLatinChars).

translate(English, PigLatin) :-
    split_string(English, " ", "", Words),
    maplist(pig_latinify, Words, PigLatinWords),
    atomics_to_string(PigLatinWords, ' ', PigLatin),
    !.

:- set_prolog_flag(double_quotes, string).
pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(pig_latin).

    test(word_beginning_with_a, condition(true)) :-
        translate("apple", PigLatin),
        PigLatin == "appleay".

    test(word_beginning_with_e, condition(pending)) :-
        translate("ear", PigLatin),
        PigLatin == "earay".

    test(word_beginning_with_i, condition(pending)) :-
        translate("igloo", PigLatin),
        PigLatin == "iglooay".

    test(word_beginning_with_o, condition(pending)) :-
        translate("object", PigLatin),
        PigLatin == "objectay".

    test(word_beginning_with_u, condition(pending)) :-
        translate("under", PigLatin),
        PigLatin == "underay".

    test(word_beginning_with_a_vowel_and_followed_by_a_qu, condition(pending)) :-
        translate("equal", PigLatin),
        PigLatin == "equalay".

    test(word_beginning_with_p, condition(pending)) :-
        translate("pig", PigLatin),
        PigLatin == "igpay".

    test(word_beginning_with_k, condition(pending)) :-
        translate("koala", PigLatin),
        PigLatin == "oalakay".

    test(word_beginning_with_x, condition(pending)) :-
        translate("xenon", PigLatin),
        PigLatin == "enonxay".

    test(word_beginning_with_q_without_a_following_u, condition(pending)) :-
        translate("qat", PigLatin),
        PigLatin == "atqay".

    test(word_beginning_with_consonant_and_vowel_containing_qu, condition(pending)) :-
        translate("liquid", PigLatin),
        PigLatin == "iquidlay".

    test(word_beginning_with_ch, condition(pending)) :-
        translate("chair", PigLatin),
        PigLatin == "airchay".

    test(word_beginning_with_qu, condition(pending)) :-
        translate("queen", PigLatin),
        PigLatin == "eenquay".

    test(word_beginning_with_qu_and_a_preceding_consonant, condition(pending)) :-
        translate("square", PigLatin),
        PigLatin == "aresquay".

    test(word_beginning_with_th, condition(pending)) :-
        translate("therapy", PigLatin),
        PigLatin == "erapythay".

    test(word_beginning_with_thr, condition(pending)) :-
        translate("thrush", PigLatin),
        PigLatin == "ushthray".

    test(word_beginning_with_sch, condition(pending)) :-
        translate("school", PigLatin),
        PigLatin == "oolschay".

    test(word_beginning_with_yt, condition(pending)) :-
        translate("yttria", PigLatin),
        PigLatin == "yttriaay".

    test(word_beginning_with_xr, condition(pending)) :-
        translate("xray", PigLatin),
        PigLatin == "xrayay".

    test(y_is_treated_like_a_consonant_at_the_beginning_of_a_word, condition(pending)) :-
        translate("yellow", PigLatin),
        PigLatin == "ellowyay".

    test(y_is_treated_like_a_vowel_at_the_end_of_a_consonant_cluster, condition(pending)) :-
        translate("rhythm", PigLatin),
        PigLatin == "ythmrhay".

    test(y_as_second_letter_in_two_letter_word, condition(pending)) :-
        translate("my", PigLatin),
        PigLatin == "ymay".

    test(a_whole_phrase, condition(pending)) :-
        translate("quick fast run", PigLatin),
        PigLatin == "ickquay astfay unray".

:- end_tests(pig_latin).
