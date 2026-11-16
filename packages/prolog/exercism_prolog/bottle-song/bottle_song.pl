% bottle_song.pl -- the exercism Prolog exercise bottle-song, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/bottle_song.example.pl, then its tests bottle_song_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
count(0, "No").
count(1, "One").
count(2, "Two").
count(3, "Three").
count(4, "Four").
count(5, "Five").
count(6, "Six").
count(7, "Seven").
count(8, "Eight").
count(9, "Nine").
count(10, "Ten").

lower_count(N, LowerCount) :-
    count(N, Count),
    string_lower(Count, LowerCount).

bottles(1, "bottle") :- !.
bottles(_, "bottles").

hanging_on_the_wall(N, Lyric) :-
    count(N, Count),
    bottles(N, Bottles),
    format(string(Lyric), "~s green ~s hanging on the wall,", [Count, Bottles]).

future_hanging_on_the_wall(N, Lyric) :-
    NextN is N - 1,
    lower_count(NextN, Count),
    bottles(NextN, Bottles),
    format(string(Lyric), "There'll be ~s green ~s hanging on the wall.", [Count, Bottles]).

accidentally_fall("And if one green bottle should accidentally fall,").

verse(N, Lyrics) :- 
    hanging_on_the_wall(N, HangingOnTheWall),
    accidentally_fall(AccidentallyFall),
    future_hanging_on_the_wall(N, FutureHangingOnTheWall),
    Lyrics = [HangingOnTheWall, HangingOnTheWall, AccidentallyFall, FutureHangingOnTheWall].

combine_verses([], []).
combine_verses([Verse], Verse).
combine_verses([Verse|Rest], Verses) :-
    combine_verses(Rest, RestVerses),
    append(Verse,[""|RestVerses], Verses).

recite(Start, Lyrics) :- recite(Start, 1, Lyrics).
recite(Start, Count, Lyrics) :-
    End is Start - (Count - 1),
    numlist(End, Start, VerseNumbers),
    reverse(VerseNumbers, VerseNumbersDescending),
    maplist(verse, VerseNumbersDescending, Verses),
    combine_verses(Verses, Lyrics), !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(bottle_song).

    test(first_generic_verse, condition(true)) :-
        recite(10, Lyrics),
        Lyrics == [
            "Ten green bottles hanging on the wall,",
            "Ten green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be nine green bottles hanging on the wall."
        ].

    test(last_generic_verse, condition(pending)) :-
        recite(3, Lyrics),
        Lyrics == [
            "Three green bottles hanging on the wall,",
            "Three green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be two green bottles hanging on the wall."
        ].

    test(verse_with_2_bottles, condition(pending)) :-
        recite(2, Lyrics),
        Lyrics == [
            "Two green bottles hanging on the wall,",
            "Two green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be one green bottle hanging on the wall."
        ].

    test(verse_with_1_bottle, condition(pending)) :-
        recite(1, Lyrics),
        Lyrics == [
            "One green bottle hanging on the wall,",
            "One green bottle hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be no green bottles hanging on the wall."
        ].

    test(first_two_verses, condition(pending)) :-
        recite(10, 2, Lyrics),
        Lyrics == [
            "Ten green bottles hanging on the wall,",
            "Ten green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be nine green bottles hanging on the wall.",
            "",
            "Nine green bottles hanging on the wall,",
            "Nine green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be eight green bottles hanging on the wall."
        ].

    test(last_three_verses, condition(pending)) :-
        recite(3, 3, Lyrics),
        Lyrics == [
            "Three green bottles hanging on the wall,",
            "Three green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be two green bottles hanging on the wall.",
            "",
            "Two green bottles hanging on the wall,",
            "Two green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be one green bottle hanging on the wall.",
            "",
            "One green bottle hanging on the wall,",
            "One green bottle hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be no green bottles hanging on the wall."
        ].

    test(all_verses, condition(pending)) :-
        recite(10, 10, Lyrics),
        Lyrics == [
            "Ten green bottles hanging on the wall,",
            "Ten green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be nine green bottles hanging on the wall.",
            "",
            "Nine green bottles hanging on the wall,",
            "Nine green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be eight green bottles hanging on the wall.",
            "",
            "Eight green bottles hanging on the wall,",
            "Eight green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be seven green bottles hanging on the wall.",
            "",
            "Seven green bottles hanging on the wall,",
            "Seven green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be six green bottles hanging on the wall.",
            "",
            "Six green bottles hanging on the wall,",
            "Six green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be five green bottles hanging on the wall.",
            "",
            "Five green bottles hanging on the wall,",
            "Five green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be four green bottles hanging on the wall.",
            "",
            "Four green bottles hanging on the wall,",
            "Four green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be three green bottles hanging on the wall.",
            "",
            "Three green bottles hanging on the wall,",
            "Three green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be two green bottles hanging on the wall.",
            "",
            "Two green bottles hanging on the wall,",
            "Two green bottles hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be one green bottle hanging on the wall.",
            "",
            "One green bottle hanging on the wall,",
            "One green bottle hanging on the wall,",
            "And if one green bottle should accidentally fall,",
            "There'll be no green bottles hanging on the wall."
        ].

:- end_tests(bottle_song).
