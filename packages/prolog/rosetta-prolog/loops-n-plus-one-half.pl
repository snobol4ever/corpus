example :-
  between(1,10,Val), write(Val), Val<10, write(', '), fail.
example.

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines example/0 and never calls it; the driver calls it once at load.
:- initialization(example).
