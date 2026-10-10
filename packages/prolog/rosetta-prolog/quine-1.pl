quine :-
	listing(quine).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines quine/0 (it lists its own clause) and never calls it; the driver calls it once at load.
:- initialization(quine).
