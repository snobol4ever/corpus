hailstone(1,[1]) :- !.
hailstone(N,[N|S]) :- 0 is N mod 2, N1 is N / 2, hailstone(N1,S).
hailstone(N,[N|S]) :- 1 is N mod 2, N1 is (3 * N) + 1, hailstone(N1, S).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines hailstone/2 and never calls it; the driver shows the task's 27 sequence and the longest start below 10000 (below the task's 100000 it takes 6 s under swipl).
:- initialization((hailstone(27, L), length(L, N), L = [A, B, C, D|_], append(_, [E, F, G, H], L), format("hailstone(27): ~w elements, ~w, ~w, ~w, ~w ... ~w, ~w, ~w, ~w~n", [N, A, B, C, D, E, F, G, H]), aggregate_all(max(Len, K), (between(1, 9999, K), hailstone(K, S), length(S, Len)), max(ML, MK)), format("longest below 10000: ~w (~w elements)~n", [MK, ML]))).
