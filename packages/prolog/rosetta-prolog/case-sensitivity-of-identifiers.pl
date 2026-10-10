three_dogs :-
	DoG = 'Benjamin',
	Dog = 'Samba',
	DOG = 'Bernie',
	format('The three dogs are named ~w, ~w and ~w.~n', [DoG, Dog, DOG]).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines three_dogs/0 and never calls it; the driver calls it once at load.
:- initialization(three_dogs).
