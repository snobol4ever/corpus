rfor(Hi,Lo,Hi) :- Hi >= Lo.
rfor(Hi,Lo,Val) :- Hi > Lo, H is Hi - 1, !, rfor(H,Lo,Val).

reverse_iter :-
  rfor(10,0,Val), write(Val), nl, fail.
reverse_iter.

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines reverse_iter/0 and never calls it; the driver calls it once at load (10 down to 0).
:- initialization(reverse_iter).
