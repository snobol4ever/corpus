% food_chain.pl -- the exercism Prolog exercise food-chain, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/food_chain.example.pl, then its tests food_chain_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
animals(["fly", "spider", "bird", "cat", "dog", "goat", "cow", "horse"]).

animal_remark("fly", "I don't know why she swallowed the fly. Perhaps she'll die.").
animal_remark("spider", "It wriggled and jiggled and tickled inside her.").
animal_remark("bird", "How absurd to swallow a bird!").
animal_remark("cat", "Imagine that, to swallow a cat!").
animal_remark("dog", "What a hog, to swallow a dog!").
animal_remark("goat", "Just opened her throat and swallowed a goat!").
animal_remark("cow", "I don't know how she swallowed a cow!").
animal_remark("horse", "She's dead, of course!").

swallowed_animals(Count, SwallowedAnimals) :-
    animals(Animals),
    append(SwallowedAnimalsReversed, _, Animals),
    length(SwallowedAnimalsReversed, Count),
    reverse(SwallowedAnimalsReversed, SwallowedAnimals),
    !.

pairs([X,Y|Tail], [X-Y|Pairs]) :- pairs([Y|Tail], Pairs), !.
pairs(_, []) :- !.

verse_start(Animal, [Line,Remark]) :-
    format(string(Line), 'I know an old lady who swallowed a ~s.', [Animal]),
    animal_remark(Animal, Remark).

verse_end(Line) :- animal_remark("fly", Line).

verse_swallowed(Swalllowed-"spider", Line) :-
    string_concat("spider", " that wriggled and jiggled and tickled inside her", CaughtSpider),
    verse_swallowed(Swalllowed-CaughtSpider, Line).

verse_swallowed(Swalllowed-Caught, Line) :-
    format(string(Line), "She swallowed the ~w to catch the ~w.", [Swalllowed, Caught]).

verse(1, Lyrics) :- verse_start("fly", Lyrics), !.
verse(8, Lyrics) :- verse_start("horse", Lyrics), !.

verse(N, Lyrics) :-
    swallowed_animals(N, SwallowedAnimals),
    [FirstAnimal|_] = SwallowedAnimals,
    pairs(SwallowedAnimals, SwallowedAnimalsPair),
    maplist(verse_swallowed, SwallowedAnimalsPair, SwallowedLines),
    verse_start(FirstAnimal, Start),
    verse_end(End),
    append(Start, SwallowedLines, Lyrics1),
    append(Lyrics1, [End], Lyrics),
    !.

combine_verses([], []).
combine_verses([Verse], Verse).
combine_verses([Verse|Rest], Verses) :-
    combine_verses(Rest, RestVerses),
    append(Verse,[""|RestVerses], Verses).

recite(StartVerse, EndVerse, Lyrics) :-
  numlist(StartVerse, EndVerse, VerseNumbers),
  maplist(verse, VerseNumbers, Verses),
  combine_verses(Verses, Lyrics), !.

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(food_chain).

    test(fly, condition(true)) :-
        recite(1, 1, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(spider, condition(pending)) :-
        recite(2, 2, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a spider.",
            "It wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(bird, condition(pending)) :-
        recite(3, 3, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a bird.",
            "How absurd to swallow a bird!",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(cat, condition(pending)) :-
        recite(4, 4, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a cat.",
            "Imagine that, to swallow a cat!",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(dog, condition(pending)) :-
        recite(5, 5, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a dog.",
            "What a hog, to swallow a dog!",
            "She swallowed the dog to catch the cat.",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(goat, condition(pending)) :-
        recite(6, 6, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a goat.",
            "Just opened her throat and swallowed a goat!",
            "She swallowed the goat to catch the dog.",
            "She swallowed the dog to catch the cat.",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(cow, condition(pending)) :-
        recite(7, 7, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a cow.",
            "I don't know how she swallowed a cow!",
            "She swallowed the cow to catch the goat.",
            "She swallowed the goat to catch the dog.",
            "She swallowed the dog to catch the cat.",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(horse, condition(pending)) :-
        recite(8, 8, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a horse.",
            "She's dead, of course!"
        ].

    test(multiple_verses, condition(pending)) :-
        recite(1, 3, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a spider.",
            "It wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a bird.",
            "How absurd to swallow a bird!",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die."
        ].

    test(full_song, condition(pending)) :-
        recite(1, 8, Lyrics),
        Lyrics == [
            "I know an old lady who swallowed a fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a spider.",
            "It wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a bird.",
            "How absurd to swallow a bird!",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a cat.",
            "Imagine that, to swallow a cat!",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a dog.",
            "What a hog, to swallow a dog!",
            "She swallowed the dog to catch the cat.",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a goat.",
            "Just opened her throat and swallowed a goat!",
            "She swallowed the goat to catch the dog.",
            "She swallowed the dog to catch the cat.",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a cow.",
            "I don't know how she swallowed a cow!",
            "She swallowed the cow to catch the goat.",
            "She swallowed the goat to catch the dog.",
            "She swallowed the dog to catch the cat.",
            "She swallowed the cat to catch the bird.",
            "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.",
            "She swallowed the spider to catch the fly.",
            "I don't know why she swallowed the fly. Perhaps she'll die.",
            "",
            "I know an old lady who swallowed a horse.",
            "She's dead, of course!"
        ].

:- end_tests(food_chain).
