count_jewels(Stones, Jewels, N):-
    string_codes(Stones, Scodes),
    string_codes(Jewels, Jcodes),
    msort(Scodes, SScodes),
    sort(Jcodes, SJcodes),
    count_jewels(SScodes, SJcodes, N, 0).

count_jewels([], _, N, N):-!.
count_jewels(_, [], N, N):-!.
count_jewels([C|Stones], [C|Jewels], N, R):-
    !,
    R1 is R + 1,
    count_jewels(Stones, [C|Jewels], N, R1).
count_jewels([S|Stones], [J|Jewels], N, R):-
    J < S,
    !,
    count_jewels([S|Stones], Jewels, N, R).
count_jewels([_|Stones], Jewels, N, R):-
    count_jewels(Stones, Jewels, N, R).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines count_jewels/3 and never calls it; the driver counts the task's two examples.
:- initialization(forall(member(S-J, ["aAAbbbb"-"aA", "ZZ"-"z"]), (count_jewels(S, J, N), format("~w ~w: ~w~n", [S, J, N])))).
