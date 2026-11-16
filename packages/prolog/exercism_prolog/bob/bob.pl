% bob.pl -- the exercism Prolog exercise bob, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/bob.example.pl, then its tests bob_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
:- use_module(library(dcg/basics)).

... --> [] | [_], ... .

non_lower --> [C], { nonvar(C), \+ code_type(C, 'lower') }.
non_lowers --> non_lower, non_lowers.
non_lowers --> [].

upper --> [C], { nonvar(C), code_type(C, 'upper') }.

silence --> blanks, eol.
question --> ..., "?", blanks, eol.
yell --> non_lowers, upper, non_lowers, eol.

matches(Sentence, Pattern) :-
    string_codes(Sentence, SentenceChars),
    phrase(Pattern, SentenceChars).

hey(Sentence, "Fine. Be that way!") :- matches(Sentence, silence), !.
hey(Sentence, "Calm down, I know what I'm doing!") :- matches(Sentence, yell), matches(Sentence, question), !.
hey(Sentence, "Sure.") :- matches(Sentence, question), !.
hey(Sentence, "Whoa, chill out!") :- matches(Sentence, yell), !.
hey(_, "Whatever.") :- !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(bob).

test(stating_something, condition(true)) :-
    hey("Tom-ay-to, tom-aaaah-to.", Response),
    Response == "Whatever.".

test(shouting, condition(pending)) :-
    hey("WATCH OUT!", Response),
    Response == "Whoa, chill out!".

test(shouting_gibberish, condition(pending)) :-
    hey("FCECDFCAAB", Response),
    Response == "Whoa, chill out!".

test(asking_a_question, condition(pending)) :-
    hey("Does this cryogenic chamber make me look fat?", Response),
    Response == "Sure.".

test(asking_a_numeric_question, condition(pending)) :-
    hey("You are, what, like 15?", Response),
    Response == "Sure.".

test(asking_gibberish, condition(pending)) :-
    hey("fffbbcbeab?", Response),
    Response == "Sure.".

test(talking_forcefully, condition(pending)) :-
    hey("Hi there!", Response),
    Response == "Whatever.".

test(using_acronyms_in_regular_speech, condition(pending)) :-
    hey("It's OK if you don't want to go work for NASA.", Response),
    Response == "Whatever.".

test(forceful_question, condition(pending)) :-
    hey("WHAT'S GOING ON?", Response),
    Response == "Calm down, I know what I'm doing!".

test(shouting_numbers, condition(pending)) :-
    hey("1, 2, 3 GO!", Response),
    Response == "Whoa, chill out!".

test(no_letters, condition(pending)) :-
    hey("1, 2, 3", Response),
    Response == "Whatever.".

test(question_with_no_letters, condition(pending)) :-
    hey("4?", Response),
    Response == "Sure.".

test(shouting_with_special_characters, condition(pending)) :-
    hey("ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!", Response),
    Response == "Whoa, chill out!".

test(shouting_with_no_exclamation_mark, condition(pending)) :-
    hey("I HATE THE DENTIST", Response),
    Response == "Whoa, chill out!".

test(statement_containing_question_mark, condition(pending)) :-
    hey("Ending with ? means a question.", Response),
    Response == "Whatever.".

test(non_letters_with_question, condition(pending)) :-
    hey(":) ?", Response),
    Response == "Sure.".

test(prattling_on, condition(pending)) :-
    hey("Wait! Hang on. Are you going to be OK?", Response),
    Response == "Sure.".

test(silence, condition(pending)) :-
    hey("", Response),
    Response == "Fine. Be that way!".

test(prolonged_silence, condition(pending)) :-
    hey("          ", Response),
    Response == "Fine. Be that way!".

test(alternate_silence, condition(pending)) :-
    hey("\t\t\t\t\t\t\t\t\t\t", Response),
    Response == "Fine. Be that way!".

test(multiple_line_question, condition(pending)) :-
    hey("\nDoes this cryogenic chamber make me look fat?\nNo.", Response),
    Response == "Whatever.".

test(starting_with_whitespace, condition(pending)) :-
    hey("         hmmmmmmm...", Response),
    Response == "Whatever.".

test(ending_with_whitespace, condition(pending)) :-
    hey("Okay if like my  spacebar  quite a bit?   ", Response),
    Response == "Sure.".

test(other_whitespace, condition(pending)) :-
    hey("\n\r \t", Response),
    Response == "Fine. Be that way!".

test(non_question_ending_with_whitespace, condition(pending)) :-
    hey("This is a statement ending with whitespace      ", Response),
    Response == "Whatever.".

:- end_tests(bob).
