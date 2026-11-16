% house.pl -- the exercism Prolog exercise house, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/house.example.pl, then its tests house_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
subject(1, "the house that Jack built").
subject(2, "the malt that lay in").
subject(3, "the rat that ate").
subject(4, "the cat that killed").
subject(5, "the dog that worried").
subject(6, "the cow with the crumpled horn that tossed").
subject(7, "the maiden all forlorn that milked").
subject(8, "the man all tattered and torn that kissed").
subject(9, "the priest all shaven and shorn that married").
subject(10, "the rooster that crowed in the morn that woke").
subject(11, "the farmer sowing his corn that kept").
subject(12, "the horse and the hound and the horn that belonged to").

combine(Part, "", Part) :- !.
combine(Part, Acc, Result) :- format(string(Result), "~s ~s", [Part, Acc]).

verse(N, Lyric) :-
    numlist(1, N, Ns),
    maplist(subject, Ns, Parts),
    foldl(combine, Parts, "", Subjects),
    format(string(Lyric), "This is ~s.", [Subjects]).

recite(Verse, Lyrics) :- recite(Verse, Verse, Lyrics).
recite(From, To, Lyrics) :-
    numlist(From, To, Ns),
    maplist(verse, Ns, Lyrics).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(house).

    test(verse_one_the_house_that_jack_built, condition(true)) :-
        recite(1, Lyrics),
        Lyrics == [
            "This is the house that Jack built."
        ].

    test(verse_two_the_malt_that_lay, condition(pending)) :-
        recite(2, Lyrics),
        Lyrics == [
            "This is the malt that lay in the house that Jack built."
        ].

    test(verse_three_the_rat_that_ate, condition(pending)) :-
        recite(3, Lyrics),
        Lyrics == [
            "This is the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_four_the_cat_that_killed, condition(pending)) :-
        recite(4, Lyrics),
        Lyrics == [
            "This is the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_five_the_dog_that_worried, condition(pending)) :-
        recite(5, Lyrics),
        Lyrics == [
            "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_six_the_cow_with_the_crumpled_horn, condition(pending)) :-
        recite(6, Lyrics),
        Lyrics == [
            "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_seven_the_maiden_all_forlorn, condition(pending)) :-
        recite(7, Lyrics),
        Lyrics == [
            "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_eight_the_man_all_tattered_and_torn, condition(pending)) :-
        recite(8, Lyrics),
        Lyrics == [
            "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_nine_the_priest_all_shaven_and_shorn, condition(pending)) :-
        recite(9, Lyrics),
        Lyrics == [
            "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_10_the_rooster_that_crowed_in_the_morn, condition(pending)) :-
        recite(10, Lyrics),
        Lyrics == [
            "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_11_the_farmer_sowing_his_corn, condition(pending)) :-
        recite(11, Lyrics),
        Lyrics == [
            "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(verse_12_the_horse_and_the_hound_and_the_horn, condition(pending)) :-
        recite(12, Lyrics),
        Lyrics == [
            "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(multiple_verses, condition(pending)) :-
        recite(4, 8, Lyrics),
        Lyrics == [
            "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

    test(full_rhyme, condition(pending)) :-
        recite(1, 12, Lyrics),
        Lyrics == [
            "This is the house that Jack built.",
            "This is the malt that lay in the house that Jack built.",
            "This is the rat that ate the malt that lay in the house that Jack built.",
            "This is the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built.",
            "This is the horse and the hound and the horn that belonged to the farmer sowing his corn that kept the rooster that crowed in the morn that woke the priest all shaven and shorn that married the man all tattered and torn that kissed the maiden all forlorn that milked the cow with the crumpled horn that tossed the dog that worried the cat that killed the rat that ate the malt that lay in the house that Jack built."
        ].

:- end_tests(house).
