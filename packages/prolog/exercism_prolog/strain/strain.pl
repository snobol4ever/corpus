% strain.pl -- the exercism Prolog exercise strain, OURS as a file (exercism_cut.py, the grader 2026-11-15): its model solution .meta/strain.example.pl, then its tests strain_tests.plt, as exercism's runner loads the two; the first pending clause reads true, as --all makes it.
keep(_, [], []) :- !.
keep(Goal, [X|Xs], Filtered) :-
    keep(Goal, Xs, FilteredXs),
    (call(Goal, X) -> Filtered = [X|FilteredXs]; Filtered = FilteredXs).

discard(_, [], []) :- !.
discard(Goal, [X|Xs], Filtered) :-
    discard(Goal, Xs, FilteredXs),
    (call(Goal, X) -> Filtered = FilteredXs; Filtered = [X|FilteredXs]).

pending :-
    true.
pending :-
    write('\nA TEST IS PENDING!\n'),
    fail.

:- begin_tests(strain).

    test(empty_sequence, condition(true)) :-
        Input = [],
        keep([X]>>(X mod 2 =:= 0), Input, Filtered),
        Filtered == [].

    test(empty_keep, condition(pending)) :-
        Input = [2, 4, 6, 8, 10],
        keep([X]>>(X mod 2 =:= 1), Input, Filtered),
        Filtered == [].

    test(empty_discard, condition(pending)) :-
        Input = [2, 4, 6, 8, 10],
        discard([X]>>(X mod 2 =:= 0), Input, Filtered),
        Filtered == [].

    test(keep_everything, condition(pending)) :-
        Input = [2, 4, 6, 8, 10],
        keep([X]>>(X mod 2 =:= 0), Input, Filtered),
        Filtered == Input.

    test(discard_endswith, condition(pending)) :-
        Input = ["dough", "cash", "plough", "though", "through", "enough"],
        discard([X]>>(string_concat(_, "ough", X)), Input, Filtered),
        Filtered == ["cash"].
    
    test(keep_z, condition(pending)) :-
        Input = ["zebra", "arizona", "apple", "google", "mozilla"],
        keep([X]>>(string_chars(X, Chars), member('z', Chars)), Input, Filtered),
        Filtered == ["zebra", "arizona", "mozilla"].
    
    test(keep_discard, condition(pending)) :-
        Input = ["1,2,3", "one", "almost!", "love"],
        keep([X]>>(string_length(X, Length), Length > 4), Input, Kept),
        discard([X]>>(string_length(X, Length), Length > 4), Kept, Filtered),
        Filtered == [].
    
    test(keep_plus_discard, condition(pending)) :-
        Input = ["1,2,3", "one", "almost!", "love"],
        keep([X]>>(string_length(X, Length), Length > 4), Input, Kept),
        discard([X]>>(string_length(X, Length), Length > 4), Input, Discarded),
        append(Kept, Discarded, ["1,2,3", "almost!", "one", "love"]).

:- end_tests(strain).
