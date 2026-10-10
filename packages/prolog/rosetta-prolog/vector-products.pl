dot_product([A1, A2, A3], [B1, B2, B3], Ans) :-
    Ans is A1 * B1 + A2 * B2 + A3 * B3.

cross_product([A1, A2, A3], [B1, B2, B3], Ans) :-
    T1 is A2 * B3 - A3 * B2,
    T2 is A3 * B1 - A1 * B3,
    T3 is A1 * B2 - A2 * B1,
    Ans = [T1, T2, T3].

scala_triple(A, B, C, Ans) :-
    cross_product(B, C, Temp),
    dot_product(A, Temp, Ans).

vector_triple(A, B, C, Ans) :-
    cross_product(B, C, Temp),
    cross_product(A, Temp, Ans).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the four products and never calls them; the driver prints them for the task's a = (3,4,5), b = (4,3,5), c = (-5,-12,-13).
:- initialization((A = [3, 4, 5], B = [4, 3, 5], C = [-5, -12, -13], dot_product(A, B, D), cross_product(A, B, X), scala_triple(A, B, C, S), vector_triple(A, B, C, V), format("a . b = ~w~na x b = ~w~na . (b x c) = ~w~na x (b x c) = ~w~n", [D, X, S, V]))).
