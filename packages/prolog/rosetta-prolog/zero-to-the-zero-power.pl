:- X is 0 ^ 0.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution evaluates X is 0 ^ 0 in a directive and never prints X; the driver evaluates the same expression and prints it.
:- initialization((X is 0 ^ 0, format("0 ^ 0 = ~w~n", [X]))).
