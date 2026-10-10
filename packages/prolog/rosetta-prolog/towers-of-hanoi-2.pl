hanoi(N, Src, Aux, Dest, Moves-NMoves) :-
  NMoves is 2^N - 1,
  length(Moves, NMoves),
  phrase(move(N, Src, Aux, Dest), Moves).


move(1, Src, _, Dest) --> !,
  [Src->Dest].

move(2, Src, Aux, Dest) --> !,
  [Src->Aux,Src->Dest,Aux->Dest].

move(N, Src, Aux, Dest) -->
  { succ(N0, N) },
  move(N0, Src, Dest, Aux),
  move(1, Src, Aux, Dest),
  move(N0, Aux, Src, Dest).

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines hanoi/5 and never calls it; the driver moves 3 disks and prints the move count and the moves.
:- initialization((hanoi(3, left, center, right, Moves-N), format("~w moves: ~w~n", [N, Moves]))).
