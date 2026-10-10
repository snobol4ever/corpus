point(10, 20).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines the compound point(10, 20) and never queries it; the driver runs compound-data-type-2's query point(X, Y) and prints its fields.
:- initialization((point(X, Y), format("X = ~w, Y = ~w~n", [X, Y]))).
