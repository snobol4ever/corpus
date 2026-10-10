power_set( [], [[]]).
power_set( [X|Xs], PS) :-
  power_set(Xs, PS1),
  maplist( append([X]), PS1, PS2 ), % i.e. prepend X to each PS1
  append(PS1, PS2, PS).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines power_set/2 and never calls it; the driver prints the power set of the task's {1,2,3,4}.
:- initialization((power_set([1, 2, 3, 4], P), format("~w~n", [P]))).
