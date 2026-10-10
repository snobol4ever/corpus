smart_factors(N,Fs) :-
  integer(N) ,
  N > 0 ,
  setof( F , factor(N,F) , Fs )
  .

factor(N,F) :-
  L is floor(sqrt(N)) ,
  between(1,L,X) ,
  0 =:= N mod X ,
  ( F = X ; F is N // X )
  .

% DRIVER (hq_pascal 2026-10-10, DRIVERS.tsv): this solution defines smart_factors/2 and never calls it; the driver factors 1, 12, 45, 53, 64 and 100.
:- initialization(forall(member(N, [1, 12, 45, 53, 64, 100]), (smart_factors(N, Fs), format("~w: ~w~n", [N, Fs])))).
