longestHailstoneSequence(M, Seq, Len) :- longesthailstone(M, 1, 1, Seq, Len).
longesthailstone(1, Cn, Cl, Mn, Ml):- Mn = Cn,
	                               Ml = Cl.
longesthailstone(N, _, Cl, Mn, Ml) :- hailstone(N, X),
                                       length(X, L),
                                       Cl < L,
                                       N1 is N-1,
                                       longesthailstone(N1, N, L, Mn, Ml).
longesthailstone(N, Cn, Cl, Mn, Ml) :- N1 is N-1,
                                       longesthailstone(N1, Cn, Cl, Mn, Ml).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): one Rosetta page split in blocks: this block's longestHailstoneSequence/3 is the entry and calls hailstone/2 of hailstone-sequence-1, and hailstone-sequence-4 is the page's query of it written as a fact (for 100000, which no smaller call reaches), so the driver takes -1 over (CEO-1613), includes -4, prints the task's 27 sequence and the longest start below 10000 (the task's 100000 takes 5.2 s under swipl).
:- include('hailstone-sequence-1.pl').
:- include('hailstone-sequence-4.pl').
:- initialization((hailstone(27, L), length(L, N), L = [A, B, C, D|_], append(_, [E, F, G, H], L), format("hailstone(27): ~w elements, ~w, ~w, ~w, ~w ... ~w, ~w, ~w, ~w~n", [N, A, B, C, D, E, F, G, H]), longestHailstoneSequence(10000, S, Len), format("longest below 10000: ~w (~w elements)~n", [S, Len]))).
