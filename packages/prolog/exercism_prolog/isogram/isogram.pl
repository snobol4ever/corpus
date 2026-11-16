% isogram.pl -- the exercism Prolog exercise isogram, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/isogram.example.pl, then its tests isogram_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
% returns true if X is at most, 1 time in L.
atMost1(X, XS) :-
 findall(E, (member(E, XS), X = E), O), length(O, LO), LO =< 1.

% returns true if every letter of the engilsh alphabet is at most 1 time in S.
isogram(S) :-
  atom_codes("abcdefghijklmnopqrstuvwxyz", ABC),
  string_lower(S, LowerS),
  atom_codes(LowerS, NormalizedS),
  forall(member(L, ABC), atMost1(L, NormalizedS)).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(isogram).

    test(empty_string, condition(true)) :-
      isogram("").

    test(only_lower_case_characters, condition(pending)) :-
      isogram("isogram").

    test(one_duplicated_character, [fail, condition(pending)]) :-
      isogram("eleven").

    test(longest_reported_english_isogram, condition(pending)) :-
      isogram("subdermatoglyphic").

    test(duplicated_character_in_mixed_case, [fail, condition(pending)]) :-
      isogram("Alphabet").

    test(hypothetical_isogrammic_word_with_hyphen, condition(pending)) :-
      isogram("thumbscrew-japingly").

    test(duplicated_non_letter_character, condition(pending)) :-
      isogram("Hjelmqvist-Gryb-Zock-Pfund-Wax").

    test(name_that_is_an_isogram, condition(pending)) :-
      isogram("Emily Jung Schwartzkopf").

    test(duplicated_character_in_the_middle, [fail, condition(pending)]) :-
      isogram("accentor").

    test(largest_pure_letter_characters_isogram, condition(pending)) :-
      isogram("AbcdEfghIjkLMNopQrStUvWxyZ.").

:- end_tests(isogram).
