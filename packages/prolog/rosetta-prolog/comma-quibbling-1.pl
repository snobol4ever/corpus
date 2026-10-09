words_series(Words, Bracketed) :-
    words_serialized(Words, Serialized),
    atomics_to_string(["{",Serialized,"}"], Bracketed).

words_serialized([], "").
words_serialized([Word], Word) :- !.
words_serialized(Words, Serialized) :-
    append(Rest, [Last], Words),                                  %% Splits the list of *Words* into the *Last* word and the *Rest*
    atomics_to_string(Rest, ", ", WithCommas),
    atomics_to_string([WithCommas, " and ", Last], Serialized).



test :-
    forall( member(Words, [[], ["ABC"], ["ABC", "DEF"], ["ABC", "DEF", "G", "H"]]),
            ( words_series(Words, Series),
              format('~w ~15|=> ~w~n', [Words, Series]))
          ).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines test/0 and never calls it; the driver calls it once at load.
:- initialization(test).
