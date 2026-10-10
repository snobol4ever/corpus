% initial condition
do(0):- write(0),nl,do(1).

% control condition
do(V):- 0 is mod(V,6), !, fail.

% loop
do(V) :-
    write(V),nl,
    Y is V + 1,
    do(Y).

wloop :-
   do(0).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines wloop/0 and never calls it; the driver calls it once at load (it prints 0..5 and then fails by design when the value reaches a multiple of 6, so the failure is absorbed).
:- initialization((wloop -> true ; true)).
