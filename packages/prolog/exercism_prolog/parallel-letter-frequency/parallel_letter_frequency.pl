% parallel_letter_frequency.pl -- the exercism Prolog exercise parallel-letter-frequency, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/parallel_letter_frequency.example.pl, then its tests parallel_letter_frequency_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
tally([], []) :- !.
tally(List, Counts) :- aggregate(set(Element-Count), aggregate(count, member(Element, List), Count), Counts).

merge([], Y, Y) :- !.
merge([Letter-Count|Xs], Y, Z) :-
    (select(Letter-ExistingCount, Y, Ys) ->
        NewCount is Count + ExistingCount,
        merge(Xs, [Letter-NewCount|Ys], Z);
        merge(Xs, [Letter-Count|Y], Z)).

letters(Text, Letters) :-
    string_lower(Text, LowerText),
    string_chars(LowerText, Chars),
    include([Char]>>char_type(Char, alpha), Chars, Letters).

frequencies_in_text(Text, Frequencies) :-
    letters(Text, Letters),
    tally(Letters, Frequencies).

frequencies(Texts, Frequencies) :-
    concurrent_maplist(frequencies_in_text, Texts, TextFrequencies),
    foldl(merge, TextFrequencies, [], Frequencies).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

% Poem by Friedrich Schiller. The corresponding music is the European Anthem.
odeAnDieFreude(Text) :-
    Text = "Freude schöner Götterfunken\nTochter aus Elysium,\nWir betreten feuertrunken,\nHimmlische, dein Heiligtum!\nDeine Zauber binden wieder\nWas die Mode streng geteilt;\nAlle Menschen werden Brüder,\nWo dein sanfter Flügel weilt.".

% Dutch national anthem
wilhelmus(Text) :-
    Text = "Wilhelmus van Nassouwe\nben ik, van Duitsen bloed,\nden vaderland getrouwe\nblijf ik tot in den dood.\nEen Prinse van Oranje\nben ik, vrij, onverveerd,\nden Koning van Hispanje\nheb ik altijd geëerd.".

% American national anthem
starSpangledBanner(Text) :-
    Text = "O say can you see by the dawn's early light,\nWhat so proudly we hailed at the twilight's last gleaming,\nWhose broad stripes and bright stars through the perilous fight,\nO'er the ramparts we watched, were so gallantly streaming?\nAnd the rockets' red glare, the bombs bursting in air,\nGave proof through the night that our flag was still there;\nO say does that star-spangled banner yet wave,\nO'er the land of the free and the home of the brave?\n".

:- begin_tests(parallel_letter_frequency).

    test(no_texts_mean_no_letters, condition(true)) :-
        frequencies([], Frequencies),
        Frequencies == [].

    test(one_letter, condition(pending)) :-
        frequencies(["a"], Frequencies),
        Frequencies == ['a'-1].

    test(case_insensitivity, condition(pending)) :-
        frequencies(["aA"], Frequencies),
        Frequencies == ['a'-2].

    test(many_empty_texts_still_mean_no_letters, condition(pending)) :-
        length(Texts, 1000),
        maplist(=("   "), Texts),
        frequencies(Texts, Frequencies),
        Frequencies == [].

    test(many_times_the_same_text_gives_a_predictable_result, condition(pending)) :-
        length(Texts, 1000),
        maplist(=("abbccc"), Texts),
        frequencies(Texts, Frequencies),
        keysort(Frequencies, SortedFrequencies),
        SortedFrequencies == ['a'-1000,'b'-2000,'c'-3000].

    test(punctuation_doesnt_count, condition(pending)) :-
        frequencies(["Testing, 1, 2, 3"], Frequencies),
        \+ member(','-_, Frequencies).

    test(numbers_dont_count, condition(pending)) :-
        frequencies(["Testing, 1, 2, 3"], Frequencies),
        \+ member('1'-_, Frequencies).

    test(all_three_anthems_together, condition(pending)) :-
        odeAnDieFreude(OdeAnDieFreude),
        wilhelmus(Wilhelmus),
        starSpangledBanner(StarSpangledBanner),
        Texts = [OdeAnDieFreude, Wilhelmus, StarSpangledBanner],
        frequencies(Texts, Frequencies),
        member('a'-49, Frequencies),
        member('t'-56, Frequencies),
        member('ü'-2, Frequencies),
        !.

:- end_tests(parallel_letter_frequency).
