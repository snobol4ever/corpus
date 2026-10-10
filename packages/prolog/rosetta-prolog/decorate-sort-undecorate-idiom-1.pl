:- use_module(library(pairs)).

:- meta_predicate schwartzian_transform(2, +, -).
schwartzian_transform(KeyGoal, List, SortedList) :-
    map_list_to_pairs(KeyGoal, List, Pairs),
    keysort(Pairs, SortedPairs),
    pairs_values(SortedPairs, SortedList).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines schwartzian_transform/3 and never calls it; the driver sorts the task's seven words by length.
:- initialization((schwartzian_transform(string_length, ["Rosetta", "Code", "is", "a", "programming", "chrestomathy", "site"], S), format("~q~n", [S]))).
