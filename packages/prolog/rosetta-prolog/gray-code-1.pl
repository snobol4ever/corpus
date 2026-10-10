to_gray(N, G) :-
  N0 is N >> 1,
  G is N xor N0.

from_gray(G, N) :-
  ( G > 0
  ->  S is G >> 1,
      from_gray(S, N0),
      N is G xor N0
  ;   N is G ).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines to_gray/2 and from_gray/2 and never calls them; the driver prints the task's 5-bit table for 0..31: binary, Gray code, decoded.
:- initialization(forall(between(0, 31, N), (to_gray(N, G), from_gray(G, D), format("~t~w~2| ~|~`0t~2r~5+ => ~|~`0t~2r~5+ => ~|~`0t~2r~5+ ~t~w~2+~n", [N, N, G, D, D])))).
