:- use_module(library(apply)).

to_gray(N, G) :-
  N0 is N >> 1,
  G is N xor N0.

from_gray(G, N) :-
  ( G > 0
  ->  S is G >> 1,
      from_gray(S, N0),
      N is G xor N0
  ;   N is G ).

make_num(In, Out) :-
  atom_to_term(In, Out, _),
  integer(Out).

write_record(Number, Gray, Decoded) :-
  format('~w~10|~2r~10+~2r~10+~2r~10+~w~n',
         [Number, Number, Gray, Decoded, Decoded]).

go :-
  setof(N, between(0, 31, N), Numbers),
  maplist(to_gray, Numbers, Grays),
  maplist(from_gray, Grays, Decodeds),
  format('~w~10|~w~10+~w~10+~w~10+~w~n',
         ['Number', 'Binary', 'Gray', 'Decoded', 'Number']),
  format('~w~10|~w~10+~w~10+~w~10+~w~n',
         ['------', '------', '----', '-------', '------']),
  maplist(write_record, Numbers, Grays, Decodeds).
go :- halt(1).

% DRIVER (the coo 2026-10-09, DRIVERS.tsv): this solution defines go/0 and never calls it; the driver calls it once at load.
:- initialization(go).
